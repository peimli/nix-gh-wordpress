provider "aws" {
  region = var.aws_region
}

# WordPress Lightsail Instance
resource "aws_lightsail_instance" "wordpress" {
  name              = var.instance_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id

  tags = {
    Name = "LightsailWordPress"
  }
}

# Static IP
resource "aws_lightsail_static_ip" "wordpress_ip" {
  name = "${var.instance_name}-static-ip"
}

resource "aws_lightsail_static_ip_attachment" "ip_attach" {
  static_ip_name = aws_lightsail_static_ip.wordpress_ip.name
  instance_name  = aws_lightsail_instance.wordpress.name
}

# Networking rules (firewall)
resource "aws_lightsail_instance_public_ports" "firewall_http_https" {
  instance_name = aws_lightsail_instance.wordpress.name

  port_info {
    protocol  = "tcp"
    from_port = 80
    to_port   = 80
  }

  port_info {
    protocol  = "tcp"
    from_port = 443
    to_port   = 443
  }
  port_info {
    protocol = "tcp"
    from_port = 22
    to_port = 22
  }
}

