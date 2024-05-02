# module "gce_vm_container" {
#   source  = "terraform-google-modules/container-vm/google"
#   version = "~> 3.0"

#   cos_image_name = "cos-stable-109-17800-147-60"

#   container = {
#     image = "docker.io/droposhado/wooka:latest"

#     env = [
#       {
#         name  = "BOT_ADMINS"
#         value = var.wooka_bot_admins
#       },
#       {
#         name  = "BOT_ALT_PREFIXES"
#         value = var.wooka_bot_alt_prefixes
#       },
#       {
#         name  = "ZULIP_EMAIL"
#         value = var.wooka_zulip_email
#       },
#       {
#         name  = "ZULIP_KEY"
#         value = var.wooka_zulip_key
#       },
#       {
#         name  = "ZULIP_SITE"
#         value = var.wooka_zulip_site
#       }
#     ]
#   }

#   restart_policy = "Always"
# }

module "instance_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers   = {}
}

module "network_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers   = {}
}

module "network_firewall_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers   = {}
}

module "subnetwork_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers   = {}
}
