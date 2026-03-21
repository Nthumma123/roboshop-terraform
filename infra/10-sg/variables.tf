variable "project" {
    type = string
}

variable "environment" {
    type = string 
}

variable "sg_names" {
  type = list 
  default = [
    #databses 
    "mongodb" ,"redis", "mysql" , "rabbitmq"
    #backend
    ,"catalogue","cart", "user" , "shipping", "payment",
    #backend ALB
    "backend-alb"
    #frontend
    ,"frontend",
    #frontend ALB
    "frontend-alb",
   "bastion"
    ]
  }