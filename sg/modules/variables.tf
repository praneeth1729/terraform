variable "sg_name" {
  description = "Name of the security group"
}

variable "description" {
  description = "Description of the security group"
}

variable "vpc_id" {
  description = "The ID of the Virtual Private Cloud (VPC) to associate with the security group."
}

variable "ingress_rules" {
  description = "List of ingress security group rules"
  type        = list(object({
    sg_rule_description = string
    from_port           = number
    to_port             = number
    protocol            = string
    cidr_blocks         = optional(list(string))
    self         = optional(bool)
    ipv6_cidr_blocks    = optional(list(string))
    security_groups  = optional(list(string))
  }))
  default = []
}

variable "egress_rules" {
  description = "List of egress security group rules"
  type        = list(object({
    sg_rule_description = string
    from_port           = number
    to_port             = number
    protocol            = string
    cidr_blocks         = optional(list(string))
    ipv6_cidr_blocks    = optional(list(string))
    security_groups  = optional(list(string))
  }))
  default = []
}

variable "tags" {
  description = "A map of tags to apply to the security group"
  type        = map(string)
  default     = {}
}
