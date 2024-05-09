passwd_file="/etc/passwd"

if [ ! -f "$passwd_file" ]; then
    echo "Error: $passwd_file not found."
    exit 1
fi

usernames=$(grep '/bin/bash' "$passwd_file" | cut -d ':' -f 1)

echo "Users with /bin/bash CLI:"
echo "$usernames"
