#!/bin/sh
# this is ad-hoc command to add hosts ssh pulic key to namaged node.
# But this command has no sense, exept testing known_hosts module,
#  managed node don't make outgoing connections,
#  and without special settings has only internal service interface by vbox
#  10.0.2.0, that can be used for reverse connection from node to host
ansible webserver -m known_hosts -a "path=/etc/ssh/ssh_known_hosts name=10.0.2.2 key='10.0.2.2 `cat /etc/ssh/ssh_host_ecdsa_key.pub`'" --become

