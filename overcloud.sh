cd ~/images
openstack flavor create --ram 512 --disk 1 --vcpu 1 --public tiny
wget https://download.cirros-cloud.net/0.4.0/cirros-0.4.0-x86_64-disk.img
openstack image create cirros --container-format bare --disk-format qcow2 --public --file cirros-0.4.0-x86_64-disk.img
openstack keypair create --public-key ~/.ssh/id_rsa.pub default
openstack security group create basic
openstack security group rule create basic --protocol tcp --dst-port 22:22 --remote-ip 0.0.0.0/0
openstack security group rule create --protocol icmp basic
openstack security group rule create --protocol udp --dst-port 53:53 basic
openstack network create --external --provider-physical-network datacentre --provider-network-type flat public
openstack network create --internal private
openstack subnet create public-net \
    --subnet-range $PUBLIC_NETWORK_CIDR \
    --no-dhcp \
    --gateway $GATEWAY \
    --allocation-pool start=$PUBLIC_NET_START,end=$PUBLIC_NET_END \
    --network public
openstack subnet create private-net \
    --subnet-range $PRIVATE_NETWORK_CIDR \
    --network private
openstack router create vrouter
openstack router set vrouter --external-gateway public
openstack router add subnet vrouter private-net
openstack floating ip create public
openstack server create --flavor tiny --image cirros --key-name default --network private --security-group basic myserver
