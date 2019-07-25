# variables.tf

variable "name_prefix" {
  description = "Required: The AWS region things are created in"
}

variable "aws_region" {
  description = "The AWS region things are created in (default: us-west-2)"
  default     = "us-west-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region (default 2)"
  default     = "2"
}

variable "app_image" {
  description = "Docker image (default: nginxdemos/hello)"
  default     = "nginxdemos/hello:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image (default: 80)"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run (default: 1)"
  default     = 1
}

variable "alb_ingress_cidrblock" {
  description = "Required: cidr block for incoming traffic. Avoid 0.0.0.0/0 (ex: 157.131.174.226/32)"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}
