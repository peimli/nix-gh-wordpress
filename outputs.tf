output "wordpress_instance_name" {
  value = aws_lightsail_instance.wordpress.name
}

output "wordpress_static_ip" {
  value = aws_lightsail_static_ip.wordpress_ip.ip_address
  description = "Open this IP in your browser"
}
