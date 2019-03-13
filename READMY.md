# Examples with Vagrant + Ansible

This repo contains several examples with combination of Vagrant and Ansible.

## Disclaimer

This repo includes ssh key, needed to reproduce workflow.

## Interesting stuffs

Ubuntu by default don't have python2 for correct start of Ansible ad-hoc commands or playbooks.
So there are multiple ways to use built-in python3.

### First solution with Ubuntu and python3

Set parameter in inventory file or Ansible config
```
ansible_python_interpreter="/usr/bin/python3"
```

### Second solution with Ubuntu and python3

Install python2 into provisioned machine
```
gather_facts: no
...
tasks:
  - name: Install python2
    raw: test -e /usr/bin/python || (apt -qy update && apt install -y python-minimal)
```

### Third partial solution is if playbook is running as Vagrant provision

In appropriate section insert
```
ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
```
