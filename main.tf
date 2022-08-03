#------creating EC2 instance by using for-each

#--map
resource "aws_instance" "app_server01" {
  for_each = var.loop_name01
  ami = each.value.ami
  instance_type = each.value.instance_type

  tags = {
    Name = each.value.name,
    Owner = each.key
  }
}

#--set
resource "aws_instance" "app_server02" {
  for_each = toset(var.set01)
  ami = "ami-05c8ca4485f8b138a"
  instance_type = "t2.micro"

  tags = {
    Name = each.key,
    Owner = "Ashu"
  }
}


#------creating EC2 instance by using count

resource "aws_instance" "web" {
  count = length(var.ami)
  instance_type = "t2.micro"
  ami = var.ami[count.index]

  tags = {
    Name = var.ins_name[count.index],
    Owner = "Ashu Kumar"
  }
}


#------creating EC2 instance by using nested map

resource "aws_instance" "app_server03" {
  for_each = var.loop_name
  ami = each.value.ami
  instance_type = "t2.micro"

  tags = {
    Name = each.value.name.my_name,
    Owner = each.key
  }
}


#------Creating S3 bucket

#--set 
resource "aws_s3_bucket" "b01" {
  bucket = "ashu-bucket1"
  for_each = toset(var.set)

  tags = {
    Name        = "Ashu"
    Environment = "Dev"
  }
}

#--map
resource "aws_s3_bucket" "b" {
  bucket = "ashu-bucket2"
  for_each = var.buck1

  tags = {
    Name        = each.value,
    Environment = "Dev"
  }
}


