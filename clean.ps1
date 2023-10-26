$root_cache_paths = @(
    ".\build"
    ".\cmake-build-debug-mingw"
    ".\cmake-build-release-mingw"
)
foreach ($path in $root_cache_paths) {
    if (Test-Path $path) {
        Remove-Item $path -Recurse -Force
    }
}

$recurse_cache_paths = @(
    "*.exe"
    "*.mod"
    "*.smod"
    "tempCodeRunnerFile.*"
)
foreach ($path in $recurse_cache_paths) {
    Remove-Item * -Include $path -Recurse -Force
}
