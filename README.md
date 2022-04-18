# Toptal Task
This repo. include all steps needed to setup the enviroment for 3tire applicaiton. the tools used to setup enviroment is the follwoing:
- Docker 
-Kubernetes 
- Terrafrom
- jenkins 
- loki 

## prerequisite installtion 
first you need to have the following tools on setup machine 
1- terrafrom: https://learn.hashicorp.com/tutorials/terraform/install-cli
2- aws cli: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
3- kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/ 
4- helm: https://helm.sh/docs/intro/install/
5- docker: https://docs.docker.com/engine/install/ubuntu/

second: install jenkins server on other machine and connect them as slave agent and enable webhook from gitlab repo. and configure pipeline to fetch changes in main branch.
note: we can not mention all steps here as it take alot of steps.

## code explanation

1- terraform code contain eks cluster for kubernetes and RDS instance 
2- kubernetes code contain deployment , services, configmap, hpa files for web and api applcaition
3- inside web and api folder we add docker file to dockerize the applicaiton, if we have another repo. we can automate the dockerization steps
4- Jenkisfile: contain all auotmated steps to install the cluster
5- helm.sh: contain all steps to setup loki and grafana using helm


