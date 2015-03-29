# server-keys

Keys for LAN Montmorency servers.

## Instructions

> Examples assume that your username is `foo`

### ssh-key

Add your public key in a file named `foo.pub` inside the `keys` directory:

    cat ~/.ssh/id_rsa.pub > keys/foo.pub

Update the `authorized_keys` file:

    ./build.sh

Commit and push your changes:

    git add -A && git commit -m 'Added foo key.' && git push

### steam_id

Add your steam id in a file named `foo.id` inside the `steam` directory:

    echo 'STEAM_0:0:00000000' > steam/foo.id

Update the `steam_ids` file:

    ./build.sh

Commit and push your changes:

    git add -A && git commit -m 'Added foo steam id.' && git push
