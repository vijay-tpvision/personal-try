variable "container_image" {
  description = "The container image to use for the ECS task"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the ACM certificate for HTTPS"
  type        = string
}

variable "route53_zone_id" {
  description = "The ID of the Route 53 hosted zone"
  type        = string
} 