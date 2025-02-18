package spacelift

# List of resource types requiring approval
approval_list := [
  "aws_iam_policy"
]

# Require approval for added, changed, or deleted aws_iam_policy resources
requires_approval {
  resource := input.run.changes[_]
  action := resource.actions[_]
  resource.entity.type == "aws_iam_policy"
}

# Ensure security team approval
approvals := input.reviews.current.approvals

security_approval {
  "Security" in approvals[_].session.teams
}

approve {
  security_approval
  count(input.reviews.current.approvals) > 0
}

reject {
  count(input.reviews.current.rejections) > 0
}
