Ansible Playbook for Ubuntu GNOME
=================================

[![Build Status](https://travis-ci.org/pantarei/ansible-playbook-ubuntu.svg?branch=master)](https://travis-ci.org/pantarei/ansible-playbook-ubuntu)
[![GitHub tag](https://img.shields.io/github/tag/pantarei/ansible-playbook-ubuntu.svg)](https://github.com/pantarei/ansible-playbook-ubuntu)
[![GitHub license](https://img.shields.io/github/license/pantarei/ansible-playbook-ubuntu.svg)](https://github.com/pantarei/ansible-playbook-ubuntu/blob/master/LICENSE)

Ansible Playbook for Ubuntu GNOME Installation.

Requirements
------------

This playbook require Ansible 2.0 or higher.

This playbook was designed for Ubuntu GNOME 17.04.

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

Start by cloning the ansible-playbook-ubuntu repository and changing into the repository root directory:

    $ git clone https://github.com/pantarei/ansible-playbook-ubuntu \
        /opt/ansible-playbook-ubuntu
    $ cd /opt/ansible-playbook-ubuntu

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

-   [hswong3i.apache2](https://github.com/pantarei/ansible-role-apache2)
-   [hswong3i.apache2\_vhosts](https://github.com/pantarei/ansible-role-apache2-vhosts)
-   [hswong3i.apt](https://github.com/pantarei/ansible-role-apt)
-   [hswong3i.bamboo](https://github.com/pantarei/ansible-role-bamboo)
-   [hswong3i.bitbucket](https://github.com/pantarei/ansible-role-bitbucket)
-   [hswong3i.cachefilesd](https://github.com/pantarei/ansible-role-cachefilesd)
-   [hswong3i.composer](https://github.com/pantarei/ansible-role-composer)
-   [hswong3i.confluence](https://github.com/pantarei/ansible-role-confluence)
-   [hswong3i.crowd](https://github.com/pantarei/ansible-role-crowd)
-   [hswong3i.drupal](https://github.com/pantarei/ansible-role-drupal)
-   [hswong3i.fisheye](https://github.com/pantarei/ansible-role-fisheye)
-   [hswong3i.hostname](https://github.com/pantarei/ansible-role-hostname)
-   [hswong3i.java](https://github.com/pantarei/ansible-role-java)
-   [hswong3i.jira](https://github.com/pantarei/ansible-role-jira)
-   [hswong3i.locales](https://github.com/pantarei/ansible-role-locales)
-   [hswong3i.memcached](https://github.com/pantarei/ansible-role-memcached)
-   [hswong3i.mysql](https://github.com/pantarei/ansible-role-mysql)
-   [hswong3i.mysql\_connector\_java](https://github.com/pantarei/ansible-role-mysql-connector-java)
-   [hswong3i.mysql\_vhosts](https://github.com/pantarei/ansible-role-mysql-vhosts)
-   [hswong3i.nfs](https://github.com/pantarei/ansible-role-nfs)
-   [hswong3i.ntp](https://github.com/pantarei/ansible-role-ntp)
-   [hswong3i.php](https://github.com/pantarei/ansible-role-php)
-   [hswong3i.php\_vhosts](https://github.com/pantarei/ansible-role-php-vhosts)
-   [hswong3i.postgresql](https://github.com/pantarei/ansible-role-postgresql)
-   [hswong3i.postgresql\_vhosts](https://github.com/pantarei/ansible-role-postgresql-vhosts)
-   [hswong3i.tzdata](https://github.com/pantarei/ansible-role-tzdata)
-   [hswong3i.ufw](https://github.com/pantarei/ansible-role-ufw)
-   [hswong3i.usermin](https://github.com/pantarei/ansible-role-usermin)
-   [hswong3i.varnish](https://github.com/pantarei/ansible-role-varnish)
-   [hswong3i.webmin](https://github.com/pantarei/ansible-role-webmin)

License
-------

-   Code released under [MIT](https://github.com/hswong3i/ansible-playbook-ubuntu/blob/master/LICENSE)
-   Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

Author Information
------------------

-   Wong Hoi Sing Edison
    -   <a href="https://twitter.com/hswong3i" class="uri" class="uri">https://twitter.com/hswong3i</a>
    -   <a href="https://github.com/hswong3i" class="uri" class="uri">https://github.com/hswong3i</a>

