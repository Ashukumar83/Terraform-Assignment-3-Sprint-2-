#------creating EC2 instance by using for-each

#--map
variable "loop_name01"{
  type = map(any)
  description = "give me the ami"
}

#--set
variable "set01"{
  type = set(any)
  description = "give me the instance"
}


#------creating EC2 instance by using count

variable "ins_name" {
  type = list(string)
  description = "give instance name"
}

variable "ami" {
  type = list(string)
  description = "give ami"
}


#------creating EC2 instance by using nested map

variable "loop_name"{
  type = map(any)
  description = "give me the ami "
}


#------Creating S3 Bucket

#--set
variable "set"{
  type = set(any)
  description = "bucket created"
}

#--map
variable "buck1"{
  type = map(any)
  description = "bucket created"
}