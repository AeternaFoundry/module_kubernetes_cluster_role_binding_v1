output "cluster_role_binding_v1s_id" {
  description = "Map of id values across all cluster_role_binding_v1s, keyed the same as var.cluster_role_binding_v1s except keys with no id are omitted"
  value       = { for k, v in kubernetes_cluster_role_binding_v1.cluster_role_binding_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cluster_role_binding_v1s_metadata" {
  description = "Map of metadata values across all cluster_role_binding_v1s, keyed the same as var.cluster_role_binding_v1s except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_cluster_role_binding_v1.cluster_role_binding_v1s : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "cluster_role_binding_v1s_role_ref" {
  description = "Map of role_ref values across all cluster_role_binding_v1s, keyed the same as var.cluster_role_binding_v1s except keys with no role_ref are omitted"
  value       = { for k, v in kubernetes_cluster_role_binding_v1.cluster_role_binding_v1s : k => one(v.role_ref) if v.role_ref != null && length(v.role_ref) > 0 }
}
output "cluster_role_binding_v1s_subject" {
  description = "Map of subject values across all cluster_role_binding_v1s, keyed the same as var.cluster_role_binding_v1s except keys with no subject are omitted"
  value       = { for k, v in kubernetes_cluster_role_binding_v1.cluster_role_binding_v1s : k => v.subject if v.subject != null && length(v.subject) > 0 }
}

