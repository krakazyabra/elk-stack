# About
## Installing Elasticsearch/Java 11/Kibana on fresh Ubuntu with Ansible-playbook as Zabbix database

# Usage
### Put your hostnames in *inventories/elkserver*
`master` - group for your master-nodes  
`data` - group for your data-nodes  
### Change the name of your cluster in *install.yaml*  `cluster_name: elk-cluster`

# Run
## ```ansible-playbook install.yaml```  
### If you don't need Zabbix mapping, templates and pipeline delete the last `-role` in *install.yaml* 
