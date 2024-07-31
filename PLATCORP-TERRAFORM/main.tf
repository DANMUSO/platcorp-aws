provider "aws" {
    region = "us-west-2"
}

variable "VPCID" {
    default = "vpc-02b0751d17072270a"
  
}
variable "SUBNECTID" {
    default = "subnet-00fc0141f42c30734"
  
}
resource "aws_instance" "platcorpserver"{
    ami = "ami-074be47313f84fa38"
    instance_type = "t2.micro"
    Subnet_Id = var.SUBNECTID

    tags = {
        name = "platcorpserver"
    }

}