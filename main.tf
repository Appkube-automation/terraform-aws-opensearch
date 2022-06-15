provider "aws" {

  region = var.region_name

}

resource "aws_opensearch_domain" "example" {
  domain_name    = var.domain_name
  engine_version = var.engine_version

  cluster_config {
    dedicated_master_enabled = var.dedicated_master_enabled
    instance_count           = var.instance_count
    instance_type            = var.instance_type
    cold_storage_options {
      enabled = false
    }
  }
  ebs_options {
    ebs_enabled = false
    #  iops        =  
    volume_size = var.volume_size
    volume_type = var.volume_type
  }
  domain_endpoint_options {
    custom_endpoint = var.custom_endpoint_enabled ? var.custom_endpoint : null
    //custom_endpoint_certificate_arn = var.custom_endpoint_enabled?var.custom_endpoint_certificate_arn:null
    custom_endpoint_enabled = var.custom_endpoint_enabled
    enforce_https           = var.enforce_https
    //tls_security_policy             = var.tls_security_policy
  }

  encrypt_at_rest {
    enabled = var.encrypt_at_rest
    #  kms_key_id = var.NEED_TO_ADDRESS
  }
  node_to_node_encryption {
    enabled = var.node_encryption
  }
  tags = var.tags
}