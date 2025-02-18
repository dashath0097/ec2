terraform {
  required_providers {
    spacelift = {
      source = "spacelift/spacelift"
    }
  }
}

provider "spacelift" {
  api_key = var.spacelift_api_key  # Set this securely in your environment or GitHub secrets
}
