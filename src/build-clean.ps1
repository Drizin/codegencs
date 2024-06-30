$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Push-Location $dir


try {

	Remove-Item -Recurse -Force -ErrorAction Ignore ".\packages-local"
	Remove-Item -Recurse -Force -ErrorAction Ignore "$env:HOMEDRIVE$env:HOMEPATH\.nuget\packages\codegencs"
	Remove-Item -Recurse -Force -ErrorAction Ignore "$env:HOMEDRIVE$env:HOMEPATH\.nuget\packages\codegencs.*"


	# when target frameworks are added/modified dotnet clean might fail and we may need to cleanup the old dependency tree
	Get-ChildItem .\ -Recurse | Where{$_.FullName -CMatch ".*\\bin$" -and $_.PSIsContainer} | Remove-Item -Recurse -Force -ErrorAction Ignore
	Get-ChildItem .\ -Recurse | Where{$_.FullName -CMatch ".*\\obj$" -and $_.PSIsContainer} | Remove-Item -Recurse -Force -ErrorAction Ignore
	Get-ChildItem .\ -Recurse | Where{$_.FullName -Match ".*\\obj\\.*project.assets.json$"} | Remove-Item
	#Get-ChildItem .\ -Recurse | Where{$_.FullName -Match ".*\.csproj$" -and $_.FullName -NotMatch ".*\\VSExtensions\\" } | ForEach { dotnet clean $_.FullName }
	#dotnet clean .\CodegenCS.sln

} finally {
    Pop-Location
}
