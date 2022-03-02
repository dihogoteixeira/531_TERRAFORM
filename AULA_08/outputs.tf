// MASTER
output "master_name" {
  value = module.master.name
}

output "master_external_ip" {
  value = module.master.external_ip
}

output "master_self_link" {
  value = module.master.self_link
}

// WORKERNODE
output "worker_name" {
  value = module.worker.name[*]
}

output "worker_external_ip" {
  value = module.worker.external_ip[*]
}

output "worker_self_link" {
  value = module.worker.self_link[*]
}