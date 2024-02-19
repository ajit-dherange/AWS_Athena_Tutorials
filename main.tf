# S3 Target

resource "aws_s3_bucket" "example" {
  bucket = "s3-athena-demo-out-tf-001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_glue_catalog_database" "example" {
  name = "db-athena-demo-tf-001"
}

resource "aws_iam_role" "example" {
  name               = "AWSGlueServiceRole-AthenaDemo001"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "glue.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "example-attach" {
  role       = aws_iam_role.example.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
}

resource "aws_glue_crawler" "example" {
  database_name = aws_glue_catalog_database.example.name

  name         = "crw-athena-demo-tf-001"
  role         = aws_iam_role.example.arn
  table_prefix = "prefix_"

  s3_target {
    path = "s3://s3-athena-demo-test-001/netflix_titles/"
  }

  # schedule = "cron(0 2 * * ? *)"
}