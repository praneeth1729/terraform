module "module_sg" {
  source = "../../../../modules"

  sg_name     = "sg_name"
  description = "sg description"
  vpc_id =  "your-vpc-id"

  ingress_rules = [
    {
    protocol            = ""
    from_port           = port
    to_port             = port
    cidr_blocks      = [ ]
    sg_rule_description = ""
  },
]
  egress_rules = [
        {
               cidr_blocks      = [
                   "",
                ]
               sg_rule_description      = ""
               from_port        = your_port
               protocol         = "tcp"
               to_port          = your_port
            },   
  ]

  

}




