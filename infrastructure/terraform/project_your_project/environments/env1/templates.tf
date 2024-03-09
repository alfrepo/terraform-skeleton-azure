data "template_file" "tf_iot_policy" {
  vars = {
    aws_region  = "${local.location}"
    prefix      = "${local.prefix}"
  }
  template = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "region": "${local.location}",
      "prefix": "${local.prefix}"
    }
  ]
}
EOF
}
