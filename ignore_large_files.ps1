$rootDir = Get-Location
$files = Get-ChildItem -Recurse -File | Where-Object { $_.Length -gt 100MB }
$relativePaths = $files.FullName.Replace($rootDir.ProviderPath, ".")

Set-Content -Path ".gitignore" -Value $relativePaths