resource "aws_iam_role" "terraform_admin" {
  name = "terraform_admin"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_instance_profile" "terraform_profile" {
  name = "terraform_profile"
  role = "${aws_iam_role.terraform_admin.name}"
}

resource "aws_iam_role_policy" "terraform_admin_policy" {
  name = "terraform_admin_policy"
  role = "${aws_iam_role.terraform_admin.id}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}