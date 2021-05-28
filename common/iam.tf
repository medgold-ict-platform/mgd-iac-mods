resource "aws_iam_policy" "policy" {
  name        = "sfpolicy"
  description = "Step function policy"
  policy = "${data.template_file.sf_policy.rendered}"
}

data "template_file" "sf_policy" {
  template = "${file("${var.sf_iam_policy}")}"
  
  vars {
    region = "${var.region}"
    account_id  = "${data.aws_caller_identity.current.account_id}"
    first_lambda_name = "${var.lambda_list_names[0]}"
    second_lambda_name = "${var.lambda_list_names[1]}"
    third_lambda_name = "${var.lambda_list_names[2]}"
    fourth_lambda_name = "${var.lambda_list_names[3]}"
    queue_name = "sfworkerqueue-${var.project}-${var.environment}"
  }
}


resource "aws_iam_role_policy_attachment" "attach-to-role" {
  role       = "${aws_iam_role.sf_role.name}"
  policy_arn = "${aws_iam_policy.policy.arn}"
}