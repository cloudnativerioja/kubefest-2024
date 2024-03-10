# kubefest.com zone

resource "cloudflare_zone" "kubefest" {
  account_id = var.account_id
  zone       = "kubefest.com"
}