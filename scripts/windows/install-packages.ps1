$scoop_packages = @(
    "ln",
    "touch",
    "time",
    "sudo",
    "zip",
    "unzip",
    "wget",
    "curl",
    "grep",
    "ripgrep",
    "fd",
    "git"
)

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main

foreach ($pkg in $scoop_packages) {
    if (-not (scoop list | Select-String "^$pkg\$")) {
        scoop install $pkg
    }
}