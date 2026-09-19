function fish_prompt
    # Set muted colors matching your Kitty config
    set -l gray (set_color normal)
    set -l dark_gray (set_color 4a4f56)
    set -l blue (set_color 73879b)

    # Output: [user@host:~/path] >
    echo -n $dark_gray"["$blue$USER$dark_gray"@"$blue(prompt_hostname)$dark_gray":"$gray(prompt_pwd)$dark_gray"] > "$gray
end

