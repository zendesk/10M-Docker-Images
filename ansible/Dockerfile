FROM rounds/10m-base

# Install Ansible.
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \ 
    apt-get install -y ansible git python-pip python-dev aptitude && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Needed files for running against localhost.
# Used in Automated testing.
RUN apt-get update && \
    apt-get install -y aptitude && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# This allows your local changes to overide the built container 
# and/or just use the playbooks in your local directory.
CMD cp -R /playbooks/* /root/ubik/playbooks/; ansible-playbook `echo $@`
