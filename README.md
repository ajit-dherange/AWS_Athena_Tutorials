# AWS_Athena_Tutorials

## I) GitLab CICD TO CRATE S3 BUCKET, GLUE DATABASE AND QURTY GLUE DB USING ATHENA:

1. Update Variables (credentials, S3 Bucket nwme, Glue DB name) in the GitLab variables or in the file .gitlab.ci.yml

2. Copy .gitlab.ci.yml to GitLab repo

3. Run the pipeline

4. Pipeline will create S3 bucket, Gle DB and run Query using Athena and save result to the S3 Bucket




================================================================

https://safe.menlosecurity.com/https://aws.amazon.com/blogs/devops/monitoring-and-management-with-amazon-quicksight-and-athena-in-your-ci-cd-pipeline/

================================================================

## II) GitLab CICD TO COPYFILE TO S3:

1. Add the following variables in your GitLab CI:

   S3_BUCKET (the name of the S3 bucket)

   AWS_ACCESS_KEY_ID (provided by AWS)

   AWS_SECRET_ACCESS_KEY (provided by AWS)

2. Copy below stage to pipeline configuration file (.gitlab.ci.yml)
   
gitlab.ci.yml
```
  image:
  
    name: amazon/aws-cli
    
    entrypoint: [""]

  stage: copy_files 
    
  script:
  
    - aws configure set region us-east-1
    
    - touch your-file.txt
    
    - aws s3 cp your-file.txt s3://$S3_BUCKET/your-file.txt

    #- aws s3 cp . s3://$S3_BUCKET/your-file.txt

    #- aws s3 sync foldername s3://$S3_BUCKET/your-file.txt

    # https://safe.menlosecurity.com/https://dev.to/akpvt/gitlab-ci-to-amazap-s3-3j57
    ```
