# AWS WAF (Demo)
resource "aws_wafv2_web_acl" "waf" {
  name  = "demo-waf"
  scope = "CLOUDFRONT"
}
