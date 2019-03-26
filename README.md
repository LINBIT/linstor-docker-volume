# LINSTOR Docker Volume Plugin

This plugin allows to create Docker volumes replicated via DRBD and LINSTOR.

# Configuration
As the plugin has to communicate to the LINSTOR controller via the LINSTOR
python library, it is important to set the client configuration:

```
cat /etc/linstor/docker-volume.conf
[global]
controllers = linstor://hostnameofcontroller
```

It is possible to set all the options that can be set on the command line (`man linstor-docker-volume`).
For example one can set the file system like this:

```
cat /etc/linstor/docker-volume.conf
[global]
controllers = linstor://hostnameofcontroller
fs = xfs
```

## File system configuration
This is *important*, please read carefully: The plugin creates a n-times redundant, cluster wide, replicated
DRBD resource and to be able to mount it, it creates a file system on top of that. Most file systems try to
discard data on creation time. This makes sense, but depending on the features your physical disks support,
storage provisioning, DRBD version, and kernel versions, discarding (or writing zeros) can take longer than
Docker is willing to wait. For now we decided that the plugin does not mess with file system options, it is
the responsibility of the user to set these accordingly. You most likely want to disable discards, here an
example for `ext4`:

```
cat /etc/linstor/docker-volume.conf
[global]
controllers = linstor://hostnameofcontroller
fs = ext4
fsopts = -E discard
```

# Support
For further products and professional support, please
[contact](http://links.linbit.com/support) us.
