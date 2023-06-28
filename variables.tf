variable "ami" {
  default     = "ami-0f5ee92e2d63afc18"
  type        = string
  description = "This is the ami of your instance"
}

variable "region" {
  default     = "ap-south-1"
  type        = string
  description = "This the region of where you wnat to create the instance"
}

variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "Type of the instance"
}

variable "key_name" {
  default     = "pem_mumbai"
  type        = string
  description = "The key-pair which is provided in your region"
}

variable "tags" {
  default     = "web-server"
  type        = string
  description = "This is the tag name of the instance"
}
variable "private_key_path" {
  type        = string
  description = "This is the private key path"
}


