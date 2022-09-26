terraform {
  backend "s3" {
    bucket = "aruntestings-1"
    key    = "cp-tf-remote-s3"
    region = "us-west-2"
    shared_credentials_file = "aws-creds.ini"
    workspace_key_prefix = "crossplane-test-remote-cp-s3"
  }
}