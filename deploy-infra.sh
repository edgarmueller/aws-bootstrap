STACK_NAME=awsbootstrap
REGION=eu-central-1
CLI_PROFILE=awsbootstrap

EC2_INSTANCE_TYPE=t2.micro

echo "\n\nDeploying main.yml --"
aws --profile awsbootstrap cloudformation deploy \
  --template-file main.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides EC2InstanceType=$EC2_INSTANCE_TYPE \
  --no-fail-on-empty-changeset \
  --stack-name $STACK_NAME
