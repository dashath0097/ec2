data "spacelift_stacks" "all_stacks" {}

resource "spacelift_stack" "attach_policy" {
  for_each = { for stack in data.spacelift_stacks.all_stacks.stacks : stack.id => stack }

  stack_id = each.key

  policy {
    id = spacelift_policy.security_approval_policy.id
  }
}
