variable "cloudflare_worker_compatibility_date" {
  type    = string
  default = "2024-10-10"
}

variable "cloudflare_worker_compatibility_flags" {
  type    = array(string)
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
  type    = map(string)
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "environment" {
  type = string
  description = "production"
}

variable "name" {
  type = string
}

variable "sentry_org_slug" {
  type        = string
}

variable "sentry_project_platform" {
  type        = string
  description = "Platform like language, framework"
}

variable "sentry_team_slugs" {
  type        = array(string)
}


variable "subdomain" {
  type        = string
  description = "subdomain used to host service"
}
