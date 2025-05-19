################ Folders
mkdir "D:\__tools\pnpm"
mkdir "D:\__tools\proto"
mkdir "D:\__tools\xdg"
mkdir "D:\__tools\xdg\config"
mkdir "D:\__tools\xdg\cache"
mkdir "D:\__tools\xdg\data"
mkdir "D:\__tools\xdg\state"
mkdir "D:\__tools\xdg\runtime"

################ PATH
[Environment]::SetEnvironmentVariable(
	"Path",
	[Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) + ";D:\__tools\proto\shims;D:\__tools\proto\bin",
	[EnvironmentVariableTarget]::Machine
)

[Environment]::SetEnvironmentVariable(
	"Path",
	[Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";D:\__tools\proto\shims;D:\__tools\proto\bin",
	[EnvironmentVariableTarget]::User
)

################ Custom
function Set-EnvVar {
	param(
		[string]$Name,
		[string]$Value
	)

	[Environment]::SetEnvironmentVariable($Name, $Value, [EnvironmentVariableTarget]::Machine)
	[Environment]::SetEnvironmentVariable($Name, $Value, [EnvironmentVariableTarget]::User)
}

# Set XDG environment variables
$varsToSet = @{
	"PNPM_HOME" = "D:\__tools\pnpm"
	"PROTO_HOME" = "D:\__tools\proto"
	"XDG_CONFIG_HOME" = "D:\__tools\xdg\config"
	"XDG_CACHE_HOME" = "D:\__tools\xdg\cache"
	"XDG_DATA_HOME" = "D:\__tools\xdg\data"
	"XDG_STATE_HOME" = "D:\__tools\xdg\state"
	"XDG_RUNTIME_DIR" = "D:\__tools\xdg\runtime"
}

foreach ($key in $varsToSet.Keys) {
	Set-EnvVar $key $varsToSet[$key]
}
