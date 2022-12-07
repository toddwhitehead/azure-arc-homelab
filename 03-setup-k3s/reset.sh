#!/bin/bash

ansible-playbook reset.yml -i inventory/hal/hosts.ini --ask-become-pass
