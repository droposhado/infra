# Base

Basic control over DNS with Terraform.

Above few configuration to generate token with only required permissions and used resources.

## Redirect www to apex

### Permissions

- Account > Account Rulesets > Edit
- Account > Account Filter Lists > Edit

### Resources

- cloudflare-ruleset.tf
- cloudflare-list.tf
- cloudflare-record-a.tf
- cloudflare-record-aaaa.tf

## Cloudflare pages

### Permissions

- Account > Cloudflare Pages > Edit
- Zone > DNS > Edit

### Resources

- cloudflare-pages.tf
- cloudflare-pages-domain.tf
- cloudflare-record-cname.tf

## Cloudflare DNSSec

### Permissions

- Zone > Zone Settings > Edit

### Resources

- cloudflare-dnssec.tf
