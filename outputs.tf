output "instance_hostname" {
    description = "private dbs name of the ec2 instance"
    value = aws_instance.app_server.private_dns
}