[Reference](Geerling, Jeff. Ansible for DevOps: Server and configuration management for humans (p. 27). Midwestern Mac, LLC. Kindle Edition.)

[TODO] Format this documents accordingly
### Local commands
hostnamectl set-hostname viveks-laptop

### Adhoc  commands
> ansible -a "free -m" multi  
> ansible -a "date" multi  
> ansible -a "df -h" multi  
> ansible -a "hostname" multi 
> ansible -a -m hostname "name=challenge.localnet"


### Install commands  
> ansible -i hosts.ini --list-hosts Ansible* -l servers  
Make sure chrony is started and running on boot

## Make changes using Ansible modules
> ansible app -b -m user -a "name=pablito group=admin createhome=yes" 
  Install chrony using yum
> ansible -b -m yum -a "name=chrony state=present" multi  
 make sure chony is installed,enabled and run on boot
> ansible -b -m service -a "name=chronyd state=started enabled=yes" multi

## Execute tasks in a group of servers
> ansible databases -b -m yum -a "name=mariadb state=present"  
> ansible databases -b -m service -a "name=mariadb"  
> ansible multi -b -a "chronyc tracking"  
> ansible 

Configure firewall in databases
> ansible databases -b -m yum -a "name=firewalld state=present"  
> ansible databases -b -m service -a "name=firewalld state=started enabled=yes"  
> ansible databases -b -m firewalld -a "zone=database state=present permanent=yes"  
> ansible databases -b -m firewalld -a "source=192.168.60.0/24 zone=database state=enabled permanent=yes"  
> ansible databases -b -m firewalld -a "port=3306/tcp zone=database state=enabled permanent=yes"  







## Manage Packages
> ansible app -b -m package -a "name=git state=present"  
## Notes
Every time we add a new host, ssh prompt to confirm add to known-hosts  
> ANSIBLE_HOST_KEY_CHECKING=False
Skips the SSH prompt, THIS behaviour can be configured in config file also  

Make sure all the serers are sync
> ansible multi -b -a "chronyc tracking"


### Parallelism
By default ansible will run commands in parallel, however sometimes we need to run the commands in order, to do tht we vahe to add the option -f 1  <pp:25>

ansible multi -a "df -h"

 [To be determined]: 
 >- name: yum_command 
 > action: yum list=${pkg} list=available
