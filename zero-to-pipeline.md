Zero to Pipeline - Chef-Github-Jenkins
-----------------------------------------

**Elon Bar-Evans - TechnoTrainer**

Based on https://training.chef.io - DevOps Pipeline (2 day course)
https://github.com/technotrainertm1/apache

Git -> Chef -> Jenkins Testing -> Jenkins Deployment -> Continuous and Automated

Policy Files for production, not roles

Chef
  - Cookbooks require tests for Test Kitchen
  - requires .kitchen.yml for Test Kitchen
  - To avoid licensing, use product\_name 'chef' and product\_version 14

Jenkins
  - Can create a pipeline with declarative script
  - Better to use docker rather than run straight on the agent
  - Install chef-dk
  - Set up agent with necessary configuration (docker, kitchen-docker, etc)
  - Execute tests
  - Upload cookbook to chef server
  - Converge dependent nodes to deploy the cookbook


Jenkins can move code through git, depending on pipeline results
Git branch for each environment, re-use pipeline with different triggers
