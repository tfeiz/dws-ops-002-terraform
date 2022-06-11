output "mypass" {
  value = random_password.mypass.result
  sensitive =true
}


output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.mysql.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.mysql.id
}

output "MY_IP" {
  description = "IP of the System"
  value = ["${chomp(data.http.myip.body)}"]
}
}
