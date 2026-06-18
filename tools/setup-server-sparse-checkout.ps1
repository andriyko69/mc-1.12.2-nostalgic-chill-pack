$ErrorActionPreference = "Stop"

$RemoteUrl = "https://github.com/andriyko69/mc-1.12.2-nostalgic-chill-pack.git"
$Branch = "master"

$SparsePatterns = @(
    "/.gitignore",
    "/README.md",
    "/CHANGELOG.md",
    "/docs/**",
    "/server/**",
    "/scripts/**",
    "/config/buildcraft/main.cfg",
    "/config/buildcraft/objects.cfg",
    "/config/IC2.ini",
    "/config/ftbbackups.cfg",
    "/config/Universal Tweaks - Bugfixes.cfg",
    "/config/Universal Tweaks - General.cfg",
    "/config/Universal Tweaks - Mod Integration.cfg",
    "/config/Universal Tweaks - Tweaks.cfg",
    "/config/sledgehammer.conf",
    "/config/getittogetherdrops.cfg",
    "/config/brandon3055/CustomFusionRecipes.json",
    "/config/cofh/world/01_thermalfoundation_ores.json",
    "/config/cofh/thermalexpansion/content/progression_smelter_removals.json",
    "/config/forestry/common.cfg",
    "/config/railcraft/railcraft.cfg",
    "/config/railcraft/ores/*.cfg",
    "/config/unidict/UniDict.cfg"
)

Write-Host "Setting up sparse checkout in: $(Get-Location)"
Write-Host "This script does not delete or modify mods/, saves/, world/, logs/, or backups/."

if (-not (Test-Path -LiteralPath ".git")) {
    Write-Host "Initializing Git repository..."
    git init
}

Write-Host "Using branch: $Branch"
git branch -M $Branch

Write-Host "Setting origin remote..."
$originExists = $true
git remote get-url origin *> $null
if ($LASTEXITCODE -ne 0) {
    $originExists = $false
}

if ($originExists) {
    git remote set-url origin $RemoteUrl
} else {
    git remote add origin $RemoteUrl
}

Write-Host "Enabling sparse checkout in non-cone mode..."
git config core.sparseCheckout true
git config core.sparseCheckoutCone false

$sparseFile = Join-Path ".git" "info\sparse-checkout"
Write-Host "Writing sparse checkout patterns to $sparseFile"
$SparsePatterns | Set-Content -LiteralPath $sparseFile -Encoding ASCII

Write-Host "Sparse checkout patterns:"
git sparse-checkout list

Write-Host "Pulling $Branch from origin..."
git pull origin $Branch

Write-Host "Current Git status:"
git status --short

Write-Host "Done. Confirm scripts/ and server configs exist, and that resourcepacks/, config/fogger.cfg, and config/forcedresourcepacks.cfg were not pulled."
