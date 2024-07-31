param (

    [string]$EmbeddedPython
    # Python zip embed to use
    )

if (Test-Path .\PsychoanalystApp) {
    # Clear current build
    Remove-Item .\PsychoanalystApp -Recurse -Force
}
if (Test-Path .\PsychoanalystApp.zip){
    # Clear current build
    Remove-Item .\PsychoanalystApp.zip -Recurse -Force
}
if (Test-Path $EmbeddedPython){
    # Start new build
    Expand-Archive $EmbeddedPython -DestinationPath "PsychoanalystApp"
}
$latest = Get-ChildItem .\dist\*.whl | Sort-Object -Descending | Select-Object -First 1
if ($null -eq $latest) {
    Write-Output "No .whl files found in the dist/ directory."
    exit
}
Write-Output "Installing the latest .whl package: $($latest.Name)"

python -m pip install $latest --no-compile --target .\PsychoanalystApp

# Aplication Entry Point
Copy-Item .\scripts\Application.pyw .\PsychoanalystApp
Copy-Item .\scripts\startcomand.cmd .\PsychoanalystApp
Copy-Item .\scripts\debugcomand.cmd .\PsychoanalystApp
Copy-Item .\LICENSE ".\PsychoanalystApp\Psicoanalyst license.txt"

if (Test-Path .\PsychoanalystApp\bin) {
    # Deleted Wrong Entrypoints
    Remove-Item .\PsychoanalystApp\bin -Recurse -Force
}

# Delete .dist-info Folders
$dist_info = Get-ChildItem .\PsychoanalystApp\*.dist-info
Remove-Item $dist_info -Recurse -Force

# Pack Application
Compress-Archive .\PsychoanalystApp\* -DestinationPath "PsychoanalystApp"