---
name: browser-ops
description: Use when the user explicitly asks Codex to operate a browser via browser-use, especially `/browser-use`, `用 browser-use`, `开可见浏览器`, `在浏览器里帮我操作`, or `用 GUI 浏览器执行`, and when they want a visible browser window, session reuse, page interaction, screenshots, DOM/state reads, or JavaScript evaluation through the local browser-use wrapper.
---

# Browser Ops

Use this skill only for explicit browser automation requests. Do not trigger it for ordinary web research, content explanation, or general questions about websites.

## Entry Point

Always invoke browser automation through:

`C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1`

Do not call `browser-use.exe` directly. The wrapper fixes the known Windows UTF-8 issue and centralizes the executable path.

## Trigger Boundary

Trigger when the user clearly wants browser control. Treat `/browser-use` at the start of the message as a forced invocation signal for this skill, for example:

- `/browser-use 打开 ...`
- `用 browser-use 打开 ...`
- `开可见浏览器并 ...`
- `/browser-use 开可见浏览器并 ...`
- `在浏览器里帮我操作 ...`
- `继续操作刚才那个浏览器会话 ...`
- `用 GUI 浏览器执行 ...`

Do not trigger when the user is only asking for:

- a normal web lookup
- a summary of a page without asking for browser control
- a recommendation that does not require browser automation

## Defaults

- Use isolated Chromium by default.
- Add `--headed` only when the user asks for a visible browser, GUI browser, or headed mode.
- Use `--session <name>` for every command.
- If the user does not provide a session name, create a short descriptive one such as `google-search`, `docs-read`, or `gui-demo`.
- Reuse an existing session only when the user explicitly says to continue or clearly refers to the current browser session.

## Standard Command Patterns

Open a page:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session <name> open <url>
```

Open a visible page:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --headed --session <name> open <url>
```

Read state:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session <name> state
```

Run JavaScript:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session <name> eval "<js>"
```

Take a screenshot:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session <name> screenshot <path>
```

Close a session:

```powershell
& 'C:\Users\gengr\.codex\skills\browser-ops\scripts\browser-use-codex.ps1' --session <name> close
```

## Intent Mapping

- "打开页面并截图"
  - `open`
  - `screenshot`
- "读取页面标题/文本/DOM"
  - `state`
  - if needed, `wait text ...`
  - then `eval "document.title ..."`
- "搜索并点击结果"
  - `open`
  - `input` or `type`
  - `keys`
  - `state` to inspect indexed elements
  - `click`
- "继续刚才那个浏览器"
  - reuse the named session

## Output Rules

Before acting, briefly state that you are using the browser-use wrapper and mention the session name.

After acting, return only high-signal results such as:

- current URL
- title or key extracted text
- screenshot path
- whether the page is visible in GUI
- whether user intervention is required

## Failure Handling

- If browser-use cannot be found, report the wrapper error clearly.
- If a page needs login, CAPTCHA, 2FA, or system dialog approval, stop automation and tell the user exactly what manual step is needed.
- If `state` returns an empty DOM, use `wait` or `eval` to confirm the page has loaded before declaring failure.
- Do not attach to the user's normal Chrome profile unless they explicitly ask for `--profile` or `--connect`.
