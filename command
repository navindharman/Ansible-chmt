1. Installing common package for ansible to work on remote machine
ansible-playbook -i host_vars/standalone main.yml --ask-pass


#############USER MANAGEMENT##########
1.Create User in server
ansible-playbook -i host_vars/application user_add.yml --ask-pass --tags=user_add
2. Delete User in server
ansible-playbook -i host_vars/application user_del.yml --ask-pass --tags=user_del

3. Update User password in server
ansible-playbook -i host_vars/application user_password.yml --ask-pass --tags=user_password

############MYSQL MANAGEMENT#################
4. Creating MYSQL-User in remote machine
ansible-playbook -i host_vars/standalone mysql.yml --tags=mysql_adduser --ask-pass

5. Delete MYSQL-User in remote machine
ansible-playbook -i host_vars/standalone mysql.yml --tags=mysql_deluser --ask-pass

6. Update MYSQL-User in remote machine
ansible-playbook -i host_vars/standalone mysql.yml --tags=mysql_updatepassword --ask-pass

7. Create MYSQL-Database in remote machine
ansible-playbook -i host_vars/standalone mysql.yml --tags=mysql_database_creation --ask-pass

################Reporting of server #############
1. User check list on remote server
ansible-playbook -i host_vars/standalone user_check.yml --ask-pass --tags=user_check

2. User &  grants present  in MYSQL remote server
ansible-playbook -i host_vars/database mysql.yml --tags=mysql_check --ask-pass

3.  Check system_info on remote server
ansible-playbook -i host_vars/standalone system_info.yml --ask-pass --tags=system_info
