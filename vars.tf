variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "ZONE2" {
  default = "us-east-1b"
}

variable "ZONE3" {
  default = "us-east-1c"
}

variable "USER" {
  default = "ec2-user"
}

variable "PUB_KEY" {
  type    = string
  default = "YOUR_KEY"
}

variable "MYIP" {
  description = "My public IP address in CIDR format"
  type        = string
}
