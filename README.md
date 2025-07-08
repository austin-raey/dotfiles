# `.dotfiles`

These are my personal dotfiles for configuring the development environment on my personal computers.

It contains configurations for the following operating systems at the moment:

- macOS
- Windows

## Philosophy

I believe in keeping things as simple as possible. I have been down the path of over-configuration and I personally find it to be too brittle and difficult to maintain over time.

I generally prefer to stick to so-called "default" programs for my development workflow as much as possible - and with computing in general. This probably deserves its own spiel somewhere 😜 In short, this paradigm has less configuration hurdles / uncanny valley, and generally has more community buzz for issues.

It is preferrable to use cross-platform programs as much as possible, to ensure a consistent experience (and somewhat consistent configuration experience!) across operating systems. This has many benefits, but the one I like the most is that it's portable.

## Structure

The dotfiles are structured in a way that each operating system has its own directory. Each directory contains the necessary configuration files and scripts to set up the environment and filenames should be self-explanatory. Comments are included in the files to call out any important details.

```sh
dotfiles/
├── macos/
│   ├── .zshenv
│   ├── .zprofile
│   ├── .zshrc
│   └── setup.sh # Contains a script intended to be run in a terminal. It can simply be copy/pasted.
├── windows/
│   ├── Microsoft.PowerShell_profile.ps1
│   └── setup.ps1 # Contains a script intended to be run in a PowerShell terminal. It can simply be copy/pasted.
```

## Notable Programs

Here are programs that I use in my development workflow, and others I feel are notable.

### Development

- [*`proto`*](https://moonrepo.dev/proto): On both macOS and Windows, used to manage dev tools (mainly `node`, `pnpm`, `bun`, etc.).
	- Other good cross-platform version management tools: [`fnm`](https://github.com/Schniz/fnm), [`pnpm`](https://pnpm.io/), [`volta`](https://volta.sh/).
	- I prefer this to `fnm` generates folders on every terminal session, which I find a bit annoying. Also, `proto` doesn't install `npm` by default when installing `node`, which I prefer.
	- This tool still has some rough edges (e.g., I have some weird behavior with [Zed](https://zed.dev/)) but it is otherwise excellent.

- **Defaults, Defaults, Defaults**:

	- **Terminal**: *Terminal.app* on macOS, *Terminal* on Windows 11.

	-  **Shell**: *zsh* on macOS, [*latest PowerShell*](https://github.com/PowerShell/PowerShell) on Windows 11.

- **Editor**: *VS Code* on both macOS and Windows. Shoutout to [Zed](https://zed.dev/). Other notable mention [Cursor](https://cursor.com/), although I find Copilot sufficient for my needs.

- **Browsers**: *Safari*, *Edge*, *Chrome*, and *Firefox*. Chromium-based is generally preferred for development, but Safari and Firefox have their uses for testing stricter (broken?) web standards.

### Others

- [*`winget`*](https://github.com/microsoft/winget-cli) (shipped with Windows): Very convenient package manager for Windows that also updates other programs on my system automically.

- [*`brew`*](https://brew.sh/): The de facto package manager for macOS. I use it to install most of my CLI tools.

- [*Raycast*](https://raycast.com/): Could potentially be great if they also released a Windows version - would really make both my macOS and Windows experience more consistent.
