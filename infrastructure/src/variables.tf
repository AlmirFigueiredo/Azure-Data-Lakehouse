variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "brazilsouth"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "iotsyntheticdata202511"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "iotsyntheticdata"
  }
}

