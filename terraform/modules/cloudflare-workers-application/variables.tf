variable "cloudflare_worker_compatibility_date" {
  type    = string
  default = "2024-10-10"
}

variable "cloudflare_worker_compatibility_flags" {
  type    = list(string)
  default = []
}

variable "cloudflare_worker_module" {
  type    = bool
  default = true
}

variable "cloudflare_worker_script_content" {
  type    = string
  default = <<EOF
export default {
    async fetch(request, env, ctx) {
        return new Response("", {
            headers: {
                "content-type": "text/plain",
            },
        });
    },
};
EOF
}

variable "cloudflare_worker_secrets" {
  type = map(string)
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "environment" {
  type = string
  description = "production"
}

variable "fqdn" {
  type        = string
  description = "full name domain"
}

variable "name" {
  type = string
}
