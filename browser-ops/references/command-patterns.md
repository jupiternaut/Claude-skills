# Browser Ops Command Patterns

Use the skill wrapper instead of calling `browser-use.exe` directly.

Common examples:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session docs open https://example.com
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session docs state
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session docs eval "document.title"
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session docs screenshot C:\Users\gengr\Downloads\docs.png
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session docs close
```

Visible window:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --headed --session gui-demo open https://www.google.com
```

When loading is flaky:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session docs wait text "Example Domain"
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session docs eval "document.title"
```
