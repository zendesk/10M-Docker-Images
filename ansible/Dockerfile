FROM rounds/10m-base

# Install Ansible
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \ 
    apt-get install -y ansible git python-pip python-dev aptitude && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
