#!/bin/sh
ansible webserver -m known_hosts -a "path=/etc/ssh/ssh_known_hosts name=10.0.2.2 key='10.0.2.2 `cat /etc/ssh/ssh_host_ecdsa_key.pub`'" --become

