$fixed = $args | ForEach-Object { $_ -replace 'x86_64-pc-windows-msvc', 'x86_64-windows-gnu' }
& zig cc @fixed
exit $LASTEXITCODE
