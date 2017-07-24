# ansible-role-gluster\_exporter

Installs the Gluster Exporter for Prometheus.

[![Build Status](https://travis-ci.org/bdellegrazie/ansible-role-gluster_exporter.svg?branch=master)](https://travis-ci.org/bdellegrazie/ansible-role-gluster_exporter)

# Requirements

Requires Ansible role `bdellegrazie.ansible-role-prometheus_exporter`

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `gluster_exporter_version`| Version of the exporter to use | `0.2.7` |
| `gluster_exporter_tarball_checksum` | checksum of the tarball | sha1 checksum of 0.2.7 tarball |
| `gluster_exporter_options`| Command line options | ['-gluster.scrape_uri=http://localhost/gluster_stats'] |

Other variables are in defaults/main.yml

# Dependencies

    `bdellegrazie.ansible-role-prometheus_exporter`

# Example Playbook

    - hosts: all
      roles:
        - { role: bdellegrazie.ansible-role-gluster_exporter }

# License

GPLv3

Author Information
------------------

https://github.com/bdellegrazie/ansible-role-gluster_exporter
