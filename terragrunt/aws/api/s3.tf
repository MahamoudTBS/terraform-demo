locals {
  name_prefix = "${var.product_name}-${var.env}"
}

module "log_bucket" {
  source            = "github.com/cds-snc/terraform-modules?ref=v0.0.43//S3_log_bucket"
  bucket_name       = "${var.product_name}-${var.env}-logs"
  billing_tag_value = var.billing_code

}