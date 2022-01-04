sudo subscription-manager release --set=8.4;
sudo subscription-manager repos --disable=*; 
sudo subscription-manager repos --enable=rhel-8-for-x86_64-baseos-eus-rpms \
--enable=rhel-8-for-x86_64-appstream-eus-rpms \
--enable=rhel-8-for-x86_64-highavailability-eus-rpms \
--enable=ansible-2.9-for-rhel-8-x86_64-rpms \
--enable=openstack-16.1-for-rhel-8-x86_64-rpms \
--enable=fast-datapath-for-rhel-8-x86_64-rpms \
--enable=advanced-virt-for-rhel-8-x86_64-rpms /
sudo dnf module disable -y container-tools:rhel8;
sudo dnf module enable -y container-tools:3.0;
sudo dnf update -y; 
sudo hostnamectl set-hostname standalone.pveigalab.com;
sudo hostnamectl set-hostname standalone.pveigalab.com --transient;
sudo dnf install -y python3-tripleoclient;
sudo dnf install octavia-amphora-image-x86_64.noarch -y
