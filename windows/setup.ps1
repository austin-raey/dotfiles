################################ PATH
# Sets the PATH environment variable in Window's "Edit the system environment variables" dialog.
[Environment]::SetEnvironmentVariable(
	"Path",
	[Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) + ";C:\Users\Yadon\AppData\Local\mise\shims;",
	[EnvironmentVariableTarget]::Machine
)

[Environment]::SetEnvironmentVariable(
	"Path",
	[Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";C:\Users\Yadon\AppData\Local\mise\shims;",
	[EnvironmentVariableTarget]::User
)

# NOTE - Environment variables, XDG Variables:
# These are set because some tools will use these directories for storage if found to be set.
# In the case of Windows, it is nice to have these set to the "Dev Drive" to avoid cluttering the C: drive,
# and to also potentially reap the benefits of Microsoft's Dev Drive features.
function Set-EnvVar {
	param(
		[string]$Name,
		[string]$Value
	)

	[Environment]::SetEnvironmentVariable($Name, $Value, [EnvironmentVariableTarget]::Machine)
	[Environment]::SetEnvironmentVariable($Name, $Value, [EnvironmentVariableTarget]::User)
}

$varsToSet = @{
	"EDITOR" = "code"
}

foreach ($key in $varsToSet.Keys) {
	Set-EnvVar $key $varsToSet[$key]
}
