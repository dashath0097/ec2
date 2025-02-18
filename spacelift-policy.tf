resource "spacelift_policy" "security_approval_policy" {
  name        = "Security Approval Policy"
  description = "Requires security team approval for aws_iam_policy changes"
  policy      = file("policies/security_approval_policy.rego")  # This references your Rego file
}
