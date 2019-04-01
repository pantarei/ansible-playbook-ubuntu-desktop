Ansible Playbook for Ubuntu Desktop
=================================

[![GitHub tag](https://img.shields.io/github/tag/pantarei/ansible-playbook-ubuntu-desktop.svg)](https://github.com/pantarei/ansible-playbook-ubuntu-desktop)
[![GitHub license](https://img.shields.io/github/license/pantarei/ansible-playbook-ubuntu-desktop.svg)](https://github.com/pantarei/ansible-playbook-ubuntu-desktop/blob/master/LICENSE)

Ansible Playbook for Ubuntu Desktop Installation.

Requirements
------------

This playbook require Ansible 2.0 or higher.

This playbook was designed for Ubuntu Desktop 19.04.

Quick Start
-----------

All-in-one (AIO) builds are a great way to perform an Ubuntu build for

-   A development environment
-   An overview of how all of the Ubuntu services fit together
-   A simple lab deployment

Although AIO builds aren’t recommended for large production deployments, they’re great for smaller proof-of-concept deployments.

AIO with Customization
----------------------

There are four main steps for running a customized AIO build:

-   Install Ansible
-   Initial roles, vars and hosts bootstrap
-   Configuration *(this step is optional)*
-   Run playbooks

Start by cloning the ansible-playbook-ubuntu-desktop repository and changing into the repository root directory:

    $ git clone https://github.com/pantarei/ansible-playbook-ubuntu-desktop \
        /opt/ansible-playbook-ubuntu-desktop
    $ cd /opt/ansible-playbook-ubuntu-desktop

Next bootstrap Ansible by executing:

    $ scripts/bootstrap-ansible.sh

Now we can bootstrap Ansible's roles, vars and hosts by executing:

    $ scripts/bootstrap-aio.sh

By default the scripts deploy only general Ubuntu setup. At this point you may optionally adjuct which services are deployed within your AIO build. Look at the `group_vars/all` and `inventory/localhost` for more details. For example, if you'd like to upgrade your Ubuntu set the `apt_upgrade` as `full` at `group_vars/all`:

    apt_upgrade: full

Finally, run the plabooks by executing:

    $ scripts/run-playbooks.sh

Dependencies
------------

No additional dependency.

License
-------

-   Code released under [MIT](https://github.com/hswong3i/ansible-playbook-ubuntu-desktop/blob/master/LICENSE)
-   Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

Author Information
------------------

-   Wong Hoi Sing Edison
    -   <a href="https://twitter.com/hswong3i" class="uri" class="uri">https://twitter.com/hswong3i</a>
    -   <a href="https://github.com/hswong3i" class="uri" class="uri">https://github.com/hswong3i</a>

