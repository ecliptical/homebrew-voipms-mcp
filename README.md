# homebrew-voipms-mcp

Homebrew tap for `voipms-mcp`, the local MCP server for VoIP.ms.

## Install

```bash
brew install ecliptical/voipms-mcp/voipms-mcp
```

Apple Silicon and Intel Macs are both supported.

## What it is

`voipms-mcp` runs on your own machine so your VoIP.ms API credentials never leave it. It reads them
from the macOS Keychain and calls the VoIP.ms API directly. Signing in, your plan, and which tools
you are authorized to use are handled by the portal at <https://voipms-mcp.ecliptical.io>.

The binary is free to download. It does nothing until you log in to the portal:

```bash
voipms-mcp login             # sign in, once, through your browser
voipms-mcp set-credentials   # store your VoIP.ms API username and password
voipms-mcp doctor            # check the login, the credentials, and API reachability
```

Then point an MCP client at it. It is on your `PATH`, so there is no wrapper to configure:

```json
{ "command": "voipms-mcp" }
```

If a call comes back saying VoIP.ms rejected your address, run `voipms-mcp doctor`: because the
binary calls VoIP.ms directly from your machine, the address on your VoIP.ms API allowlist has to be
yours. `doctor` reports which address VoIP.ms sees and whether it accepts a call from it.

## About this repository

This tap holds the formula and hosts the release archives the formula downloads. The server's source
is not public.

(Unofficial) VoIP.ms MCP Server. Not affiliated with VoIP.ms.
