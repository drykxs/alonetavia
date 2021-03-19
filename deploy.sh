sudo openstack tripleo deploy \
	--templates \
	--local-ip=192.168.25.2/24 \
	-e /usr/share/openstack-tripleo-heat-templates/environments/standalone/standalone-tripleo.yaml \
        -e /usr/share/openstack-tripleo-heat-templates/environments/services/octavia.yaml \
	-r /usr/share/openstack-tripleo-heat-templates/roles/Standalone.yaml \
	-e /home/stack/templates/containers-prepare-parameters.yaml \
	-e /home/stack/templates/standalone-params.yaml \
	--output-dir /home/stack/installog \
