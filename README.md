<p align="center"><img src="assets/logo.svg" width="72" height="72" alt="Rizamo"></p>

# Rizamo MCP server

Publish, schedule and analyze social posts on Instagram, Facebook, TikTok, YouTube and more from your AI agent, and answer comments and messages.

```text
https://mcp.rizamo.com/mcp
```

Remote server, streamable HTTP. Your agent signs in with OAuth: you approve it in the browser and choose the profiles it can reach. An API key works too. Rizamo hosts the server, so there is nothing to install or run: this repository holds the setup for each client and the files directories read.

## Connect

### Claude

[Add to Claude](https://claude.ai/customize/connectors?modal=add-custom-connector&connectorName=Rizamo&connectorUrl=https%3A%2F%2Fmcp.rizamo.com%2Fmcp), or:

1. In Claude, open Customize, then Connectors, and choose Add custom connector.
2. Name it Rizamo and paste the server URL.
3. Sign in to Rizamo and choose the profiles Claude can use.
4. In any chat, turn it on from + then Connectors.

### ChatGPT

1. Open chatgpt.com/plugins, choose + and then Add custom MCP server.
2. Name it Rizamo and paste the server URL.
3. Pick OAuth, create the plugin and sign in to Rizamo.
4. Install it from your plugins and type @Rizamo in a chat.

### Claude Code

```sh
claude mcp add --transport http rizamo https://mcp.rizamo.com/mcp
```

Then run `/mcp` to sign in.

### Codex

```sh
codex mcp add rizamo --url https://mcp.rizamo.com/mcp
```

Codex opens the sign-in for you.

### Cursor

[Add to Cursor](https://cursor.com/en/install-mcp?name=rizamo&config=eyJ1cmwiOiJodHRwczovL21jcC5yaXphbW8uY29tL21jcCJ9), or add Rizamo to `~/.cursor/mcp.json` (or `.cursor/mcp.json` for one project), then open Cursor Settings, then MCP, and sign in:

```json
{
  "mcpServers": {
    "rizamo": {
      "url": "https://mcp.rizamo.com/mcp"
    }
  }
}
```

### VS Code

1. Run Chat: Open Customizations, open MCP Servers and choose Add Server, then HTTP.
2. Paste the server URL, name it rizamo, then choose Global and Copilot Global.
3. Sign in to Rizamo when VS Code asks and choose the profiles Copilot can use.

### Gemini CLI

```sh
gemini mcp add --transport http rizamo https://mcp.rizamo.com/mcp
```

Then run `/mcp auth rizamo` to sign in. Or install this repository as an extension:

```sh
gemini extensions install https://github.com/rizamohq/rizamo-mcp
```

### Cline

Add Rizamo to Cline's MCP settings, then choose Authorize OAuth for it and sign in:

```json
{
  "mcpServers": {
    "rizamo": {
      "type": "streamableHttp",
      "url": "https://mcp.rizamo.com/mcp"
    }
  }
}
```

With the Cline CLI: `cline mcp add rizamo https://mcp.rizamo.com/mcp --transport http`.

### Any other client

Paste the server URL into any client that supports remote MCP servers with OAuth. To skip the sign-in, create an API key in Rizamo under Developers and send it as a header:

```text
Authorization: Bearer rz_live_...
```

## What your agent can do

- Publish now or schedule reels, carousels, stories, videos and feed posts, with each network's media and text rules checked before a post goes out.
- Use each profile's queue of posting times.
- Read views, reach, engagement and followers for any period against the one before, rank every post, and see who the audience is.
- Read open comments and messages in one list, reply, hide or delete comments, and send a private message to people who comment a keyword.
- Make short links that count their clicks.

Your agent shows you what it will do and waits for your yes before it publishes, replies or deletes, unless you ask it to act on its own. You can remove its access at any time in Rizamo.

## Links

- [Docs](https://docs.rizamo.com/connect-an-agent)
- [Website](https://rizamo.com/agents/)
- [Status](https://status.rizamo.com)
- [Privacy policy](https://rizamo.com/legal/privacy/) and [terms](https://rizamo.com/legal/terms/)
- Support: hi@rizamo.com
- Official MCP Registry: `com.rizamo/mcp`

The files here are under the MIT license. The Rizamo name and logo are not.
