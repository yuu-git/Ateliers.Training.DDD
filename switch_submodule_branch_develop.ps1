# PowerShell
$currentDir = Get-Location
if ($currentDir.Path -notlike "*\/Submodules\Ateliers.Core") {
    cd .\submodules\Ateliers.Core
}
git checkout Develop 2>$null
git pull origin Develop 2>$null