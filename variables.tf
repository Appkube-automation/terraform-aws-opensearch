variable "region_name" {
  type    = string
  default = "us-east-1"
}

variable "domain_name" {
  type    = string
  default = "example"
}

variable "engine_version" {
  type    = string
  default = "Elasticsearch_7.10"
}

variable "instance_count" {
  type    = number
  default = 3
}

variable "instance_type" {
  type    = string
  default = "r4.large.search"
}

variable "volume_size" {
  type    = number
  default = 10
}

variable "volume_type" {
  type    = string
  default = "gp2"
}

variable "custom_endpoint" {
  type    = string
  default = "xyz"
}

variable "custom_endpoint_enabled" {
  type    = bool
  default = false
}

variable "dedicated_master_enabled" {
  type = bool
  default = false
}

variable "zone_awareness_enabled" {
  type    = bool
  default = false
}

variable "enforce_https" {
  type    = bool
  default = false
}

variable "encrypt_at_rest" {
  type    = bool
  default = false
}

variable "availability_zone_count" {
  type    = number
  default = 2
}

# variable "custom_endpoint_certificate_arn" {

# }

# variable "tls_security_policy" {

# }

variable "node_encryption" {
  type    = bool
  default = false
}

variable "tags" {
  type = map
  default = {
    "Domain" = "TestDomain"
    "env" = "test"
    "Name" = "mytest opensearch"
    }
}
