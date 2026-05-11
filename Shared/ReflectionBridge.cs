using System.Reflection;
using System.Runtime.CompilerServices;
using ACE.Server.Mods;

namespace AceRaajMods.Shared;

/// <summary>
/// Minimal, reusable helper for cross-mod reflection bridges.
///
/// Each consumer compiles this into its own assembly (Shared/ is source-included, not a shared DLL),
/// so static state here is per-consumer. That's fine — the helper just caches resolved MethodInfo
/// and handles the boilerplate that every bridge repeats.
///
/// Usage — create a static readonly instance per bridge target, then call TryInvoke:
///
///   private static readonly ReflectionBridge _deposit =
///       new("LeyLineLedger", "LeyLineLedger.BankExtensions", "IncBanked",
///           [typeof(Player), typeof(int), typeof(long)]);
///
///   public static void IncBanked(Player player, int prop, long delta)
///   {
///       if (_deposit.TryInvokeVoid(player, prop, delta))
///           return;
///       // fallback
///       var next = (player.GetProperty((PropertyInt64)prop) ?? 0L) + delta;
///       player.SetProperty((PropertyInt64)prop, next);
///   }
///
/// Log prefix follows the [CallerMod→TargetMod] convention (e.g. "[AutoLoot→LeyLineLedger]").
/// Pass the caller name explicitly via the constructor's callerMod parameter — do NOT rely
/// on Assembly.GetCallingAssembly() which JIT inlining can defeat.
/// </summary>
public sealed class ReflectionBridge
{
    readonly string _targetAssembly;
    readonly string _targetType;
    readonly string _targetMethod;
    readonly Type[] _paramTypes;
    readonly string _logPrefix;

    MethodInfo? _method;
    bool _resolved;
    bool _assemblyLogged;
    bool _targetLogged;

    public ReflectionBridge(
        string callerMod,
        string targetAssembly,
        string targetType,
        string targetMethod,
        Type[] paramTypes)
    {
        _targetAssembly = targetAssembly;
        _targetType = targetType;
        _targetMethod = targetMethod;
        _paramTypes = paramTypes;
        _logPrefix = $"[{callerMod}→{targetAssembly}]";
    }

    /// <summary>
    /// Try to invoke the target method with the given arguments.
    /// Returns true if the target was found and invoked without exception.
    /// Returns false if the target mod/type/method isn't loaded.
    /// </summary>
    public bool TryInvoke(out object? result, params object?[] args)
    {
        Resolve();

        if (_method is null)
        {
            result = null;
            return false;
        }

        try
        {
            result = _method.Invoke(null, args);
            return true;
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"{_logPrefix} {_targetMethod} threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"{_logPrefix} {_targetMethod} error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }

        result = null;
        return false;
    }

    /// <summary>
    /// Try to invoke a void-returning target method.
    /// </summary>
    public bool TryInvokeVoid(params object?[] args)
    {
        Resolve();

        if (_method is null)
            return false;

        try
        {
            _method.Invoke(null, args);
            return true;
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"{_logPrefix} {_targetMethod} threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"{_logPrefix} {_targetMethod} error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }

        return false;
    }

    /// <summary>
    /// True if the target assembly was found and the method resolved successfully.
    /// </summary>
    public bool IsResolved => _method is not null;

    void Resolve()
    {
        if (_resolved) return;
        _resolved = true;

        Assembly? asm = null;
        foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, _targetAssembly, StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log($"{_logPrefix} {_targetAssembly} not loaded; bridge inactive.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType(_targetType, throwOnError: false);
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log($"{_logPrefix} {_targetAssembly} loaded but {_targetType} not found.", ModManager.LogLevel.Warn);
            }
            return;
        }

        _method = t.GetMethod(_targetMethod,
            BindingFlags.Public | BindingFlags.Static, null, _paramTypes, null);

        if (_method is not null)
            ModManager.Log($"{_logPrefix} Resolved {_targetMethod} on {_targetType}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"{_logPrefix} WARNING: {_targetMethod} not found on {_targetType}.", ModManager.LogLevel.Warn);
    }
}
