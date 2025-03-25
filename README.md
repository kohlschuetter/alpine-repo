# kohlschuetter Alpine Linux repository

Some packages that I found missing from Alpine Linux, packaged up here for your convenience.

## Installation

To use, add the following line to `/etc/apk/repositories`:

```
https://kohlschuetter.github.io/alpine-repo/
```

Make sure to also add the signing keys from [https://kohlschuetter.github.io/alpine-repo/keys/](https://kohlschuetter.github.io/alpine-repo/keys/): Copy them (e.g., `ck-6787e0df.rsa.pub` to `/etc/apk/keys`)

## Notable packages:

- glusterfs: My own Alpine Linux port, see [kohlschuetter/glusterfs](https://github.com/kohlschuetter/glusterfs)

- sudo-pam: "sudo" built with PAM support

- pam\_ssh\_agent\_auth: Allow PAM authentication with opensshd

## Sources

See the "[apkbuild](https://github.com/kohlschuetter/alpine-repo/tree/apkbuild)" branch

## Known issues

When `apk update` tells you...

### `WARNING: updating and opening https://kohlschuetter.github.io/alpine-repo: No such file or directory`

You may be running an unsupported machine configuration. Right now, only `x86_64` and `aarch64` are supported.

### `ERROR: https://kohlschuetter.github.io/alpine-repo/: UNTRUSTED signature`

You need to install the public keys; see "Installation" above

## License and Copyright

kohlschuetter alpine-repo: Copyright 2025 Christian Kohlschuetter. Licensed under GNU General Public License v2.0

The licenses of the individual packages apply.
