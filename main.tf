provider "aws" {
  region = var.region_name
}

resource "aws_opensearch_domain" "example" {

  domain_name    = var.domain_name  #"example"
  engine_version =  var.engine_version#"Elasticsearch_7.10"

  cluster_config {
    instance_type = var.instance_type #"r4.large.search"
    instance_count = var.instance_count #3
  }

  ebs_options{
      ebs_enabled = true
      volume_size = 50
    }

  zone_awarness_config{
    zone_awareness_enabled = var.zone_awareness_enabled #false
    availability_zone_count = var.availability_zone_count
  }

  dedicated_master_enabled = false
  deicated_master_type = var.instance_type

  tags = {
    Domain = "TestDomain"
  }
}