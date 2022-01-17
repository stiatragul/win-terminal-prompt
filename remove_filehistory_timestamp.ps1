Get-ChildItem -Recurse | Where-Object { $_.Name -match " ?\(\d\d\d\d_\d\d_\d\d \d\d_\d\d_\d\d UTC\)" } | Rename-Item -NewName { $_.Name -replace " ?\(\d\d\d\d_\d\d_\d\d \d\d_\d\d_\d\d UTC\)", ""}