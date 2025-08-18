terraform {
  backend "s3" {
    bucket = "r3ap3rpywpress"
    key = "r3ap3rpywpress/statefolder/statefile"
    region = "eu-north-1"
    encrypt = true
  }
}
