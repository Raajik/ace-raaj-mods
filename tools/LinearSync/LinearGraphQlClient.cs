using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;

namespace LinearSync;

internal sealed class LinearGraphQlClient : IDisposable
{
    private static readonly Uri Endpoint = new("https://api.linear.app/graphql");
    private readonly HttpClient _http;
    private readonly JsonSerializerOptions _json = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
        PropertyNameCaseInsensitive = true
    };

    public LinearGraphQlClient(string apiKey)
    {
        _http = new HttpClient();
        _http.DefaultRequestHeaders.TryAddWithoutValidation("Authorization", apiKey);
    }

    public void Dispose()
    {
        _http.Dispose();
    }

    public async Task<JsonObject> ExecuteAsync(string query, object? variables, CancellationToken cancellationToken)
    {
        var payload = new Dictionary<string, object?>
        {
            ["query"] = query
        };
        if (variables != null)
        {
            payload["variables"] = variables;
        }

        string body = JsonSerializer.Serialize(payload, _json);
        using var content = new StringContent(body, Encoding.UTF8, "application/json");
        using HttpResponseMessage response = await _http.PostAsync(Endpoint, content, cancellationToken).ConfigureAwait(false);
        string text = await response.Content.ReadAsStringAsync(cancellationToken).ConfigureAwait(false);

        if (!response.IsSuccessStatusCode)
        {
            throw new InvalidOperationException($"Linear HTTP {(int)response.StatusCode}: {text}");
        }

        JsonNode? root = JsonNode.Parse(text);
        if (root is null)
        {
            throw new InvalidOperationException("Linear response was empty.");
        }

        if (root["errors"] is JsonArray errArr && errArr.Count > 0)
        {
            var messages = new List<string>();
            foreach (JsonNode? err in errArr)
            {
                if (err?["message"] is JsonValue mv)
                {
                    messages.Add(mv.ToString());
                }
                else
                {
                    messages.Add(err?.ToJsonString() ?? "{}");
                }
            }

            throw new InvalidOperationException("Linear GraphQL errors: " + string.Join("; ", messages));
        }

        if (root["data"] is not JsonObject data)
        {
            throw new InvalidOperationException("Linear response missing data: " + text);
        }

        return data;
    }

    public async Task<string> ResolveTeamIdAsync(string teamNameOrId, CancellationToken cancellationToken)
    {
        if (teamNameOrId.StartsWith("uuid:", StringComparison.OrdinalIgnoreCase))
        {
            return teamNameOrId["uuid:".Length..];
        }

        const string q = """
            query Teams {
              teams {
                nodes {
                  id
                  key
                  name
                }
              }
            }
            """;

        JsonObject data = await ExecuteAsync(q, null, cancellationToken).ConfigureAwait(false);
        JsonArray? nodes = data["teams"]?["nodes"] as JsonArray;
        if (nodes is null)
        {
            throw new InvalidOperationException("Linear teams query returned unexpected shape.");
        }

        string needle = teamNameOrId.Trim();
        foreach (JsonNode? node in nodes)
        {
            if (node is not JsonObject o)
            {
                continue;
            }

            string id = o["id"]?.ToString() ?? "";
            string key = o["key"]?.ToString() ?? "";
            string name = o["name"]?.ToString() ?? "";
            if (string.Equals(id, needle, StringComparison.OrdinalIgnoreCase)
                || string.Equals(key, needle, StringComparison.OrdinalIgnoreCase)
                || string.Equals(name, needle, StringComparison.OrdinalIgnoreCase))
            {
                return id;
            }
        }

        throw new InvalidOperationException($"No Linear team matched \"{teamNameOrId}\". Use team name, key, or id (prefix raw UUID with \"uuid:\").");
    }

    public async Task<string?> ResolveProjectIdAsync(string? projectNameOrId, CancellationToken cancellationToken)
    {
        if (string.IsNullOrWhiteSpace(projectNameOrId))
        {
            return null;
        }

        if (projectNameOrId.StartsWith("uuid:", StringComparison.OrdinalIgnoreCase))
        {
            return projectNameOrId["uuid:".Length..];
        }

        const string q = """
            query Projects {
              projects {
                nodes {
                  id
                  name
                }
              }
            }
            """;

        JsonObject data = await ExecuteAsync(q, null, cancellationToken).ConfigureAwait(false);
        JsonArray? nodes = data["projects"]?["nodes"] as JsonArray;
        if (nodes is null)
        {
            throw new InvalidOperationException("Linear projects query returned unexpected shape.");
        }

        string needle = projectNameOrId.Trim();
        foreach (JsonNode? node in nodes)
        {
            if (node is not JsonObject o)
            {
                continue;
            }

            string id = o["id"]?.ToString() ?? "";
            string name = o["name"]?.ToString() ?? "";
            if (string.Equals(id, needle, StringComparison.OrdinalIgnoreCase)
                || string.Equals(name, needle, StringComparison.OrdinalIgnoreCase))
            {
                return id;
            }
        }

        throw new InvalidOperationException($"No Linear project matched \"{projectNameOrId}\".");
    }

    public async Task<string> ResolveIssueUuidAsync(string issueIdentifier, CancellationToken cancellationToken)
    {
        const string q = """
            query Issue($id: String!) {
              issue(id: $id) {
                id
                identifier
              }
            }
            """;

        JsonObject data = await ExecuteAsync(q, new { id = issueIdentifier }, cancellationToken).ConfigureAwait(false);
        JsonObject? issue = data["issue"] as JsonObject;
        if (issue is null)
        {
            throw new InvalidOperationException($"Linear issue not found: {issueIdentifier}");
        }

        return issue["id"]?.ToString()
            ?? throw new InvalidOperationException($"Linear issue missing id: {issueIdentifier}");
    }

    public async Task<string> IssueCreateAsync(string teamId, string title, string? description, string? projectId, CancellationToken cancellationToken)
    {
        const string mutation = """
            mutation IssueCreate($input: IssueCreateInput!) {
              issueCreate(input: $input) {
                success
                issue {
                  id
                  identifier
                  url
                }
              }
            }
            """;

        var input = new Dictionary<string, object?>
        {
            ["teamId"] = teamId,
            ["title"] = title
        };
        if (!string.IsNullOrEmpty(description))
        {
            input["description"] = description;
        }
        if (!string.IsNullOrEmpty(projectId))
        {
            input["projectId"] = projectId;
        }

        JsonObject data = await ExecuteAsync(mutation, new { input }, cancellationToken).ConfigureAwait(false);
        JsonObject? payload = data["issueCreate"] as JsonObject;
        if (payload is null)
        {
            throw new InvalidOperationException("issueCreate missing payload.");
        }

        if (payload["success"] is JsonValue ok && ok.TryGetValue<bool>(out bool sOk) && !sOk)
        {
            throw new InvalidOperationException("issueCreate returned success=false.");
        }

        JsonObject? issue = payload["issue"] as JsonObject;
        return issue?["identifier"]?.ToString()
            ?? throw new InvalidOperationException("issueCreate returned no identifier.");
    }

    public async Task CommentCreateAsync(string issueUuid, string body, CancellationToken cancellationToken)
    {
        const string mutation = """
            mutation CommentCreate($input: CommentCreateInput!) {
              commentCreate(input: $input) {
                success
                comment {
                  id
                }
              }
            }
            """;

        var input = new { issueId = issueUuid, body };
        JsonObject data = await ExecuteAsync(mutation, new { input }, cancellationToken).ConfigureAwait(false);
        JsonObject? payload = data["commentCreate"] as JsonObject;
        if (payload is null)
        {
            throw new InvalidOperationException("commentCreate missing payload.");
        }

        if (payload["success"] is JsonValue ok && ok.TryGetValue<bool>(out bool sOk) && !sOk)
        {
            throw new InvalidOperationException("commentCreate returned success=false.");
        }
    }
}
