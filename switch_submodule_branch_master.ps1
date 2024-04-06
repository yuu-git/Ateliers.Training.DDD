# PowerShell
$currentDir = Get-Location
if ($currentDir.Path -notlike "*\.Submodules\Ateliers.Core") {
    cd .\submodules\Ateliers.Core
}
git checkout master 2>$null
git pull origin master 2>$null