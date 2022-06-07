variable "region_name" {
  type    = string
  default = "us-east-1"
}
variable "instance_type" {
  type    = string
  default = "r4.large.search"
}
variable "instance_count" {
  type    = number
  default = 1
}
variable "domain_name" {
  type    = string
  default = "example"
}

variable "engine_version" {
  type    = string
  default = "Elasticsearch_7.10"
}

variable "zone_awareness_enabled" {
  type    = bool
  default = false
}

variable "availability_zone_count" {
  type    = number
  default = 2
}

# variable "custom_endpoint" {
#   type = string

# }

# variable "custom_endpoint_certificate_arn" {

# }
variable "custom_endpoint_enabled" {
  type    = bool
  default = false
}

variable "enforce_https" {
    type = bool
    default = false
}

# variable "tls_security_policy" {

# }

variable "encrypt_at_rest" {
  type = bool
  default = false
}

variable "node_encryption" {
  type = bool
  default = false
}
