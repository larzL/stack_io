# Stack.io challenge

This program is the tech challenge for stack.io.


## Getting Started

Clone the repository.

```
git clone https://github.com/larzL/stack_io.git
```


### Prerequisites

You will have to install python, pip, and ansible before getting started. 


### Create Ansible Inventory

The ansbile playbook `deploy.yml` installs all the necessary packages and handles the deploy. If you wish to test out the playbook, create an ansible inventory for the testing box.

## Run Ansible

Run below ansible command to configure the box and deploy the app on k8s.

```
ansible-playbook -i inventory.ini --key-file=path_to_private_key deploy.yml
```

At the end of the run, you should see a pause which shows stackio k8s service. Please copy the URL and use the IP and port for SSH port forwarding. Hit enter to complete the run.

Here is an example of the output.

```
|-----------|----------|-------------|---------------------------|
| NAMESPACE |   NAME   | TARGET PORT |            URL            |
|-----------|----------|-------------|---------------------------|
| default   | stackio |        5858 | http://192.168.49.2:32567 |
|-----------|----------|-------------|---------------------------|
* Opening service default/stackio in default browser...
  - http://192.168.49.2:32567:
``` 


#### Test the app

You can use the below command as example to port forward then test out the app on your favorite browser.

```
ssh -i path_to_private_key -L 32567:192.168.49.2:32567 user@****.amazonaws.com
```

Once port forwarding been established, hit `localhost:<port>` on your browser to test the app.

```
http://localhost:<port>: Hello stranger
http://localhost:<port>/<name>: Hello <name>
```

## Authors

* **Larry Li** - [larzL](https://github.com/larzL)
