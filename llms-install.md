# Installing the Rizamo MCP server

Rizamo is a hosted remote MCP server. There is nothing to clone, build or run.

1. Add this entry to the MCP settings (Cline: `cline_mcp_settings.json`, under `mcpServers`):

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

2. Ask the user to authorize OAuth for the rizamo server and sign in to Rizamo in the browser. On the consent page they choose the profiles the agent can reach. Only ask for an API key if they prefer one; then add `"headers": { "Authorization": "Bearer <their key>" }` to the entry instead.
3. Call `list_accounts` and tell the user which social accounts you can use. If the tools are missing, stop and tell the user.
4. Before publishing anything, create posts as drafts and get the user's confirmation.

The user needs a Rizamo account (rizamo.com) with at least one social account connected.
