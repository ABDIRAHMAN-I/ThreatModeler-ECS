terraform {
  backend "s3" {
    bucket  = "my-threatmodel-statefile-bucket"
    key     = "state-file"
    region  = "eu-west-2"
    dynamodb_table = "dydb-state-locking-ecs"
    encrypt = true

  }
}