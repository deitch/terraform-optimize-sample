resource "aws_iam_role" "role" {
  count       = 4
  description = "Some role ${count.index}"
  name        = "some_role_${count.index}_${var.name}"

  assume_role_policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Principal" : {
            "Service" : "ec2.amazonaws.com"
          },
          "Action" : "sts:AssumeRole"
        }
      ]
    }
  )
}

resource "aws_iam_policy" "policy" {
  name   = "policy_${var.name}"
  policy = data.aws_iam_policy_document.policy.json
}

data "aws_iam_policy_document" "policy" {
  statement {
    effect = "Allow"
    actions = [
      "s3:*",
    ]
    resources = [
      "*",
    ]
  }
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  count      = 4
  role       = aws_iam_role.role[count.index].name
  policy_arn = aws_iam_policy.policy.arn
}
