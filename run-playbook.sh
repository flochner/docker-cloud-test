ansible-playbook ansible/configure-host.yml -v -e "student_username=flochner"
ansible-playbook ansible/deploy-website-staging.yml -v
ansible-playbook ansible/deploy-website-production.yml -v
