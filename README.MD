# How to execute the terraform script

```
# terraform init
```
 
### Create a dev.tfvars as per your requirement and add all the inputs as like below. 

```
ami = "ami-0d9462a653c34dab7"
instance_type = "t3.micro"
key_name = "eladaram-master"
subnet_id = "subnet-b2d939da"
name = "dev"
```

```
# terraform  plan -var-file=dev.tfvars
# terraform  apply -var-file=dev.tfvars
```

## Or 
### we can pass variable as an arguments

```
# terraform  plan -var ami="ami-0d9462a653c34dab7" -var instance_type="t3.micro" -var key_name="eladaram-master" -var subnet_id="subnet-b2d939da" -var name="dev"

# terraform  apply -var ami="ami-0d9462a653c34dab7" -var instance_type="t3.micro" -var key_name="eladaram-master" -var subnet_id="subnet-b2d939da" -var name="dev"
```


