output "instance_group" {
  value       = google_compute_region_instance_group_manager.this.instance_group
  description = "URL do Manager Instance Group"
}

output "self_link" {
  value       = google_compute_region_instance_group_manager.this.self_link
  description = "SelfLink do Manager Instance Group"
}