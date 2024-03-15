# kubefest.com zone

resource "cloudflare_zone" "kubefest" {
  account_id = var.account_id
  zone       = "kubefest.com"
}

resource "cloudflare_record" "kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "kubefest.com"
  value   = "cloudnativerioja.github.io"
  type    = "CNAME"
}

resource "cloudflare_record" "www_kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "www"
  value   = "cloudnativerioja.github.io"
  type    = "CNAME"
}

# Google Search Console verification
resource "cloudflare_record" "www_kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "kubefest.com"
  value   = "google-site-verification=eTKt9_NpprU6T0FDPi-He0oZirSyEZqDMOBqmKfMNpc"
  type    = "TXT"
}