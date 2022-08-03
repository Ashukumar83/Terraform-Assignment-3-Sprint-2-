#------creating EC2 instance by using for-each

#--map
loop_name01 = {
    "owner11" = {"ami" : "ami-05c8ca4485f8b138a", "instance_type" : "t2.micro", "name" : "Ashu11"}
    "owner12" = {"ami" : "ami-068257025f72f470d", "instance_type" : "t2.micro", "name" : "Ashu12"}
}

#--set
set01 = ["XYZ" ,"112233"]


#------creating EC2 instance by using count

ins_name = ["AAA" , "BBB"]
ami = ["ami-068257025f72f470d" , "ami-05c8ca4485f8b138a"]


#------creating EC2 instance by using nested map

loop_name = {
   "owner1" = {"ami" : "ami-09de362f44ba0a166","instance_type" :"t2.micro", "name" : {"my_name" : "ashu1"}}
   "owner2" = {"ami" : "ami-09de362f44ba0a166","instance_type" :"t2.micro", "name" : {"my_name" : "ashu2"}}
}


#------Creating S3 bucket

#--set
set = ["bucket1"]

#--map
buck1 = {"name"= "Ashu2"}
