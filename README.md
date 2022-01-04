# Alonetavia_2.0 - For OCP 4.9 

#### Pre-reqs:
To enable Kuryr SDN, your environment must meet the following requirements:
- Have Overcloud with Octavia.
- Use Neutron Trunk ports extension.
- Use openvswitch firewall driver if ML2/OVS Neutron driver is used instead of ovs-hybrid.

### This is an OSP16.2 Standalone deployed with Octavia (LBaaS/Kuryr) on RHEL8.4 to receive an OCP 4.9 as overcloud

#### [Octavia cheat-sheet](https://github.com/drykxs/alonetavia/wiki)
#### [Turn-them-all-active.sh](https://github.com/david-hill/cloud/blob/77b8bf136aceca7677070f68393b2d0edf50ea89/ops/octavia_lb.sh)

#### To access: 
1. Add your key to the authorized ssh ones for the stack user
2. To access the dashboard, add a route to 192.168.25.0/24 through the tunnel
   
   192.168.25.2/dashboard
   
