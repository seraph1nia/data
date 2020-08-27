### configure aws credentials


These of course are examples
```
# mkdir ~/.aws
# vim ~/.aws/credentials

[default]
aws_access_key_id=AKIAIOSFODNN7EXAMPLE
aws_secret_access_key=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

# vim ~/.aws/config

[default]
region=us-west-2
output=json
```
### first step, install ansible
```
<projectfolder>/scripts/first_setup.sh
```

### install terraform, kops, kubectl and more

```
cd <projectfolder>/ansible
ansible-playbook playbooks/first-run.yml
```

### configure terraform backend buckets
```
# vim ansible/inventory/group_vars/all
s3_backend_name1: bart-data-terra-backends

cd <projectfolder>/ansible
ansible-playbook playbooks/terra-backends.yml
```

### configure bucketnames and backend
```
    <projectfolder>/terraform/buckets/backend.tf
    <projectfolder>/terraform/buckets/vars.tf
    <projectfolder>/terraform/buckets/terraform.tfvars
```
### configure aws environment

```
    <projectfolder>/terraform/therest/backend.tf
    <projectfolder>/terraform/therest/vars.tf
    <projectfolder>/terraform/therest/terraform.tfvars
```
### apply terraform config and create kubernetes cluster

```
cd <projectfolder>/ansible
ansible-playbook playbooks/main.yml
```

### destroy cluster and vpc

cd <projectfolder>/ansible
ansible-playbook playbooks/main.yml -v --extra-vars="delete_cluster=True"


### link voor sparkdingen

https://github.com/GoogleCloudPlatform/spark-on-k8s-operator/blob/master/docs/quick-start-guide.md

je moet nog helm installatie in de code doen


