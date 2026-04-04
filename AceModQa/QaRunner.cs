namespace AceModQa;

using ACE.Server.WorldObjects;

public enum QaOutcome
{
	Pass,
	Fail,
	Skip,
}

public readonly record struct QaResult(QaOutcome Outcome, string Message)
{
	public static QaResult Pass(string message) => new(QaOutcome.Pass, message);
	public static QaResult Fail(string message) => new(QaOutcome.Fail, message);
	public static QaResult Skip(string message) => new(QaOutcome.Skip, message);
}

public interface IQaTestCase
{
	string Name { get; }
	QaResult Run(Player player);
}

public static class QaRunner
{
	public static void RunAll(Player player, string suiteName, IEnumerable<IQaTestCase> tests)
	{
		if (player == null)
			return;

		List<IQaTestCase> list = tests?.Where(t => t != null).ToList() ?? new List<IQaTestCase>();
		if (list.Count == 0)
		{
			player.SendMessage($"[{suiteName} QA] No tests registered.");
			return;
		}

		int pass = 0;
		int fail = 0;
		int skip = 0;

		player.SendMessage($"[{suiteName} QA] Running {list.Count} test(s)...");

		foreach (IQaTestCase test in list)
		{
			QaResult result;
			try
			{
				result = test.Run(player);
			}
			catch (Exception ex)
			{
				result = QaResult.Fail($"Exception: {ex.Message}");
			}

			switch (result.Outcome)
			{
				case QaOutcome.Pass:
					pass++;
					player.SendMessage($"[{suiteName} QA] PASS {test.Name}: {result.Message}");
					break;

				case QaOutcome.Fail:
					fail++;
					player.SendMessage($"[{suiteName} QA] FAIL {test.Name}: {result.Message}");
					break;

				case QaOutcome.Skip:
					skip++;
					player.SendMessage($"[{suiteName} QA] SKIP {test.Name}: {result.Message}");
					break;
			}
		}

		player.SendMessage($"[{suiteName} QA] Summary: PASS={pass} FAIL={fail} SKIP={skip}");
	}
}

