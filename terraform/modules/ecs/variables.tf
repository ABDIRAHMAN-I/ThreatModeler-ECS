variable "cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
  default = "tm_cluster"
}

variable "task_family" {
  description = "Family of the ECS Task"
  type        = string
  default = "tm_task"
}

variable "task_cpu" {
  description = "CPU units for the ECS Task"
  type        = number
  default = "1024"
}

variable "task_memory" {
  description = "Memory (MiB) for the ECS Task"
  type = number
  default = "3072"
}


variable "task_role_arn" {
  description = "The IAM role ARN to use for the ECS Task"
  type        = string
  default = "arn:aws:iam::977098994448:role/ecs_task_execution_role"
}

variable "execution_role_arn" {
  description = "Execution role ARN for ECS Task"
  type        = string
  default = "arn:aws:iam::977098994448:role/ecs_task_execution_role"
}

variable "container_name" {
  description = "Name of the container"
  type        = string
  default = "threatmodel"

}

variable "container_image" {
  description = "Container image for ECS Task"
  type        = string
  default = "977098994448.dkr.ecr.eu-west-2.amazonaws.com/threat-model-project"
}

variable "container_port" {
  description = "Container port for the application"
  type        = number
  default = 3000
}


variable "service_name" {
  description = "Name of the ECS Service"
  type        = string
  default = "tm_service"
}

variable "desired_count" {
  description = "Desired count of ECS Service instances"
  type        = number
  default = 1
}


variable "subnet_ids" {
  description = "List of Subnet IDs for ECS Service"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of Security Group IDs for ECS Service"
  type        = list(string)
}


variable "target_group_arn" {
  description = "Target Group ARN for the ECS Service"
  type        = string
}


variable "listener_http_arn" {
  description = "http listner"
  type        = string

}
variable "listener_https_arn" {
  description = "https listner"
  type        = string
}


variable "create_iam_role" {
  description = "Flag to determine whether to create a new IAM role or use an existing one"
  type        = bool
  default     = true
}

variable "iam_role_name" {
  description = "role name "
  type        = string
  default = "ecs_task_execution_role"
}

