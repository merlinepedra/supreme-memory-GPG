# find keys of users
function find_key {
        out=$( gpg2 --list-keys "$1")
        echo "$out"
}

# decrypt messages
function decrypt {
        out=$(echo "$1" |  gpg2 -d)
}

# import key
function import_gpg {
        out=$(echo "$1"  | gpg2 --import)
}




# aliases
alias decrypt='decrypt $1'

alias findkey='find_key $1'

alias import_key='import_gpg $1'