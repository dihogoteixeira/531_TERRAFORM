// GROUP JENKINS OUTPUTS
output "name" {
    value = module.group-jenkins.name
}

output "external_ip" {
    value = module.group-jenkins.external_ip
}

// GROUP WEB OUTPUTS
output "name" {
    value = module.group-web.name
}

output "external_ip" {
    value = module.group-web.external_ip
}

// GROUP GITLAB OUTPUTS
output "name" {
    value = module.group-gitlab.name
}

output "external_ip" {
    value = module.group-gitlab.external_ip
}