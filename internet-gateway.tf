resource "aws_internet_gateway" "default" {
    vpc_id = aws_vpc.main.id

	tags =merge(
    local.common_tags,
    {
        Name = "${var.IGW_name}"
    }
  ) 
}