#!/bin/bash

ansible-playbook site.yml -i inventory/hal/hosts.ini --ask-become-pass
