# kubefest.com zone

resource "cloudflare_zone" "kubefest" {
  account_id = var.account_id
  zone       = "kubefest.com"
}

resource "cloudflare_record" "kubefest_com" {
  zone    = "kubefest.com"
  name    = "kubefest.com"
  value   = "cloudnativerioja.github.io"
  type    = "CNAME"
}

resource "cloudflare_record" "www_kubefest_com" {
  zone    = "kubefest.com"
  name    = "www"
  value   = "cloudnativerioja.github.io"
  type    = "CNAME"
}