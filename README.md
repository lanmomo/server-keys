# server-keys

Keys for LAN Montmorency servers.

## Instructions

> Examples assume that your username is `foo`

Add your public key in a file named `foo.pub` inside the `keys` directory:

    cat ~/.ssh/id_rsa.pub > keys/foo.pub

Update the `authorized_keys` file:

    make

Commit and push your changes:

    git add -A && git commit -m 'Added foo key.' && git push
