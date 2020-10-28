# Required Variables
variable "name" {
  description = "The name to use for the resources in this module."
}

variable "wallet_address" {
  description = "Your Ethereum wallet address."
}

variable "fleet_role" {
  description = "The ARN of the IAM role for the SpotFleet requests."
}

variable "valid_until_date" {
  description = " The end date and time of the request, in UTC ISO8601 format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request."
}

# Optional Variables
variable "fleet_size" {
  description = "The target number of GPUs you want to use for mining."
  default     = "1"
}

variable "pool_host" {
  description = "The ethereum pool and port to mine on. In the format <url>:<port>."
  default     = "eth-us-west1.nanopool.org:9999"
}

variable "spot_price" {
  description = "The maximum amount, in USD, you're willing to spend per GPU, per hour."
  default     = "0.2"
}

variable "ssh_key_name" {
  description = "The name of an EC2 Key Pair that can be used to SSH to the EC2 Instances in this cluster."
}

variable "images" {
  type = "map"

  default = {
    "us-east-1" = "ami-06c5ac48a0c630fe7"
    "us-east-2" = "ami-7c5b7619"
    "us-west-1" = "ami-02b152f99f95f2d91"
    "us-west-2" = "ami-0dd30ebf0f561fc67"
  }
}

variable "docker_image_name" {
  desription = "full name of the docker image"
  default = ""
  }

variable "worker_name" {
  default = "bukky"
  }

variable "email" {
  default = "your_email@gmail.com"
  }
