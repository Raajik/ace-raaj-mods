using System.Reflection.Metadata;
using System.Reflection.Metadata.Ecma335;
using System.Reflection.PortableExecutable;

var repoRoot = Path.GetFullPath(Path.Combine(AppContext.BaseDirectory, "..", "..", "..", "..", ".."));
var aceServerDir = Path.Combine(repoRoot, "ACE-Server");
var aceServerDll = Path.Combine(aceServerDir, "ACE.Server.dll");

if (!File.Exists(aceServerDll))
{
    Console.Error.WriteLine($"ACE.Server.dll not found at: {aceServerDll}");
    Environment.Exit(1);
}

var needle = args.Length > 0
    ? string.Join(' ', args)
    : "You completed the quest this portal requires too long ago";

using var stream = File.OpenRead(aceServerDll);
using var peReader = new PEReader(stream);
var mdReader = peReader.GetMetadataReader();

static IEnumerable<UserStringHandle> EnumerateUserStrings(MetadataReader reader)
{
    // #US heap layout: [0x00] then entries at offsets > 0, each entry:
    // - compressed int: byte length of UTF-16 bytes (including terminal 0x0000) plus trailing 1-byte "kind" (ignored here)
    // - payload bytes
    // We iterate offsets by walking the heap; this is robust across runtimes that don't expose reader.UserStrings.
    var heap = reader.GetHeapSize(HeapIndex.UserString);
    var offset = 1;
    while (offset < heap)
    {
        var handle = MetadataTokens.UserStringHandle(offset);
        string s;
        try
        {
            s = reader.GetUserString(handle);
        }
        catch
        {
            yield break;
        }

        yield return handle;

        // Advance offset by re-reading the blob header from the heap.
        // We can't directly access the raw heap bytes, but GetUserString succeeds only when the handle points at a valid entry.
        // To step, we compute the next offset by looking at the UTF-16 byte count of the decoded string + terminator:
        // - UTF-16 bytes: (s.Length + 1) * 2
        // - plus 1-byte "kind"
        // - plus compressed int header (unknown length), so we conservatively advance by 1 and resync by probing.
        //
        // To keep this tool simple and reliable, we probe forward until we find the next valid user string handle.
        var probe = offset + 1;
        while (probe < heap)
        {
            try
            {
                var next = MetadataTokens.UserStringHandle(probe);
                _ = reader.GetUserString(next);
                offset = probe;
                break;
            }
            catch
            {
                probe++;
            }
        }

        if (probe >= heap)
            yield break;
    }
}

var matchingUserStrings = new List<UserStringHandle>();
foreach (var handle in EnumerateUserStrings(mdReader))
{
    var s = mdReader.GetUserString(handle);
    if (s.Contains(needle, StringComparison.OrdinalIgnoreCase))
        matchingUserStrings.Add(handle);
}

if (matchingUserStrings.Count == 0)
{
    Console.WriteLine($"No user strings matched: \"{needle}\"");
    Environment.Exit(2);
}

Console.WriteLine($"Matched {matchingUserStrings.Count} user string(s) containing: \"{needle}\"");
foreach (var h in matchingUserStrings)
{
    var token = MetadataTokens.GetToken(h);
    var s = mdReader.GetUserString(h);
    Console.WriteLine($"- 0x{token:X8}: {s}");
}

Console.WriteLine();
Console.WriteLine("Methods loading matched string(s):");

var targetTokens = matchingUserStrings
    .Select(h => MetadataTokens.GetToken(h))
    .ToHashSet();

var found = 0;
foreach (var methodHandle in mdReader.MethodDefinitions)
{
    var methodDef = mdReader.GetMethodDefinition(methodHandle);
    if (methodDef.RelativeVirtualAddress == 0)
        continue;

    var body = peReader.GetMethodBody(methodDef.RelativeVirtualAddress);
    var il = body.GetILBytes();

    // Scan for ldstr (0x72) then 4-byte metadata token (little-endian)
    for (var i = 0; i + 5 <= il.Length; i++)
    {
        if (il[i] != 0x72)
            continue;

        var token = il[i + 1] | (il[i + 2] << 8) | (il[i + 3] << 16) | (il[i + 4] << 24);
        if (!targetTokens.Contains(token))
            continue;

        var declaringTypeHandle = methodDef.GetDeclaringType();
        if (declaringTypeHandle.IsNil)
            continue;

        var declaringType = mdReader.GetTypeDefinition(declaringTypeHandle);

        var typeName = $"{mdReader.GetString(declaringType.Namespace)}.{mdReader.GetString(declaringType.Name)}".TrimStart('.');
        var methodName = mdReader.GetString(methodDef.Name);

        Console.WriteLine($"- {typeName}::{methodName} (rva=0x{methodDef.RelativeVirtualAddress:X}) loads 0x{token:X8}");
        found++;
        break;
    }
}

if (found == 0)
    Console.WriteLine("(none found; string may be loaded via indirection)");

