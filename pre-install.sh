sudo subscription-manager release --set=8.2 ; sudo subscription-manager repos --disable=* ; sudo subscription-manager repos --enable=rhel-8-for-x86_64-baseos-eus-rpms --enable=rhel-8-for-x86_64-appstream-eus-rpms --enable=rhel-8-for-x86_64-highavailability-eus-rpms --enable=ansible-2.9-for-rhel-8-x86_64-rpms --enable=openstack-16.1-for-rhel-8-x86_64-rpms --enable=fast-datapath-for-rhel-8-x86_64-rpms --enable=advanced-virt-for-rhel-8-x86_64-rpms ; sudo dnf module disable -y container-tools:rhel8 ; sudo dnf module enable -y container-tools:2.0 ; sudo dnf module disable -y virt:rhel ; sudo dnf module enable -y virt:8.2 ; sudo dnf update -y ; sudo reboot
sudo echo "stack ALL=(root) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/stack
sudo chmod 0440 /etc/sudoers.d/stack
sudo hostnamectl set-hostname standalone.example.com
sudo hostnamectl set-hostname standalone.example.com --transient
sudo yum update -y
sudo dnf install octavia-amphora-image-x86_64.noarch -y
sudo dnf install -y python3-tripleoclient
ssh-copy-id -i ~/.ssh/<your ssh key> stack@<standalone>
sudo reboot
