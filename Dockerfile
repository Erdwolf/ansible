FROM ubuntu

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    sudo apt-get update && \
    sudo apt-get install -y ansible
RUN apt-get install -y sudo && \
    useradd -m user && \
    adduser user sudo && \
    echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER user
WORKDIR /mnt
