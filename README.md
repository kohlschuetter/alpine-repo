# kohlschuetter Alpine Linux repository

Some packages that I found missing from Alpine Linux, packaged up here for your convenience.

## Installation

To use, add the following line to `/etc/apk/repositories`:

```
https://kohlschuetter.github.io/alpine-repo/
```

## Notable packages:

- glusterfs: My own Alpine Linux port, see [kohlschuetter/glusterfs](https://github.com/kohlschuetter/glusterfs)

- sudo-pam: "sudo" built with PAM support

- pam_ssh_agent_auth: Allow PAM authentication with opensshd

## Sources

See the "apkbuild" branch

## License and Copyright

kohlschuetter alpine-repo: Copyright 2025 Christian Kohlschuetter. Licensed under GNU General Public License v2.0

The licenses of the individual packages apply.
