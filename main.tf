provider "aws" {

  region = var.region_name

}

resource "aws_opensearch_domain" "example" {
  domain_name    = "example"
  engine_version = "Elasticsearch_7.10"

  cluster_config {
    dedicated_master_enabled = false
    instance_count           = 3
    instance_type            = "r4.large.search"
    cold_storage_options {
      enabled = false
    }
  }
  ebs_options {
    ebs_enabled = false
    #  iops        =  
    #  volume_size = 
    #  volume_type = 
  }
  domain_endpoint_options {
    //custom_endpoint                 = var.custom_endpoint
    //custom_endpoint_certificate_arn = var.custom_endpoint_certificate_arn
    custom_endpoint_enabled         = var.custom_endpoint_enabled
    //enforce_https                   = var.enforce_https
    //tls_security_policy             = var.tls_security_policy
  }

  encrypt_at_rest {
           enabled    = var.encrypt_at_rest
          #  kms_key_id = var.NEED_TO_ADDRESS
        }
  node_to_node_encryption {
           enabled = var.node_encryption
        }
  tags = {
    Domain = "TestDomain"
  }
}