#config.nu
#
$env.config = {
    show_banner: false
}
def ll [] {
    ls | where type == dir
}
