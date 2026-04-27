output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

# outputs.tf

output "frontend_public_ip" {
  value = module.frontend.instance_public_ip
}

output "backend_private_ip" {
  value = module.backend.instance_private_ip
}

output "database_private_ip" {
  value = module.database.instance_private_ip
}

output "vote_app_url" {
  value = "http://${module.frontend.instance_public_ip}:5000"
}

output "result_app_url" {
  value = "http://${module.frontend.instance_public_ip}:4000"
}