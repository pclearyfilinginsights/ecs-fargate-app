# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "inmarketapp_log_group" {
  name              = "/ecs/inmarketapp"
  retention_in_days = 30

  tags = {
    Name = "cb-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "inmarketapp_log_stream" {
  name           = "my-log-stream"
  log_group_name = aws_cloudwatch_log_group.inmarketapp_log_group.name
}