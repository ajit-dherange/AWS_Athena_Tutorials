# AWS_Athena_Tutorials

## GitLab CICD TO CRATE S3 BUCKET, GLUE DATABASE AND QURTY GLUE DB USING ATHENA:

Update Variables (credentials, S3 Bucket nwme, Glue DB name) in the GitLab variables or in the file .gitlab.ci.yml

Copy .gitlab.ci.yml to GitLab repo

Rin the pipeline

Pipeline will create S3 bucket, Gle DB and run Query using Athena and save result to the S3 Bucket




======================================================================================================================================================
https://safe.menlosecurity.com/https://aws.amazon.com/blogs/devops/monitoring-and-management-with-amazon-quicksight-and-athena-in-your-ci-cd-pipeline/
--------

GitLab CICD TO COPYFILE TO S3:

Add the following variables in your GitLab CI:

S3_BUCKET (the name of the S3 bucket)

AWS_ACCESS_KEY_ID (provided by AWS)

AWS_SECRET_ACCESS_KEY (provided by AWS)

gitlab.ci.yml

  image:
  
    name: amazon/aws-cli
    
    entrypoint: [""]
    
  script:
  
    - aws configure set region us-east-1
    
    - touch your-file.txt
    
    - aws s3 cp your-file.txt s3://$S3_BUCKET/your-file.txt



    https://safe.menlosecurity.com/https://dev.to/akpvt/gitlab-ci-to-amazap-s3-3j57
    
