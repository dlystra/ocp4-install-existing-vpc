openshift-iac-day-1
=========

This role creates and destroys OpenShift 4 clusters in an existing AWS VPC.

Requirements
------------

TBD

Role Variables
--------------

pull_secret - Your OpenShift pull secret. This can be acquired at: https://cloud.redhat.com/openshift/install/aws/installer-provisioned

vpc_name - The value of the tag 'Name' of the desired target VPC

cluster_name - The desired cluster name (e.g. cluster, dev, infra)

openshift_version - The desired OpenShift version to deploy. (Defaults to latest)

base_domain - The desired base domain of the OpenShift cluster (e.g. example.com)

Dependencies
------------

TBD

Example Playbook
----------------

This creates a cluster with variables defined in vars/main.yml. It also provides a vars prompt to allow the user to paste in their pull secret.

- name: Deploy Cluster
  hosts: localhost
  gather_facts: no
  vars_files:
    - vars/main.yml
  vars_prompt:
    - name: pull_secret
      prompt: OpenShift Pull Secret
      private: no
  roles:
    - openshift-iac-day-1


This destroys a cluster with variables defined in var/main.yml

- name: destroy infra
  hosts: localhost
  gather_facts: no
  vars:
    destroy: True
  vars_files:
    - vars/main.yml
  roles:
    - openshift-iac-day-1
        
License
-------

BSD

Author Information
------------------

Dean Lystra
dlystra@redhat.com