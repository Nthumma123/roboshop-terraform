resource "aws_security_group" "main" {
  name        = "${var.project}-${var.environment}-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
        name = "${var.project}-${var.environment}-sg"
    }
  )
}

