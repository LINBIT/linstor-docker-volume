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

# Support
For further products and professional support, please
[contact](http://links.linbit.com/support) us.
