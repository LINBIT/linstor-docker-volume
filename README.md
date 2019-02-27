# LINSTOR Docker Volume Plugin

This plugin allows to create Docker volumes replicated via DRBD and LINSTOR.

# Configuration
As the plugin has to communicate to the LINSTOR controller via the LINSTOR
python library, it is important to set the client configuration:

```
cat /etc/linstor/linstor-client.conf
[global]
controllers = linstor://hostnameofcontroller
```

# Support
For further products and professional support, please
[contact](http://links.linbit.com/support) us.
