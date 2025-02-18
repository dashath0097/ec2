terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"  # ✅ Correct
      version = "~> 1.0"  # Ensure you use the latest version
    }
  }
}

provider "spacelift" {
  api_key = var.spacelift_api_key
}
