data "template_file" "public_cidrsubnet" {
  count = local.subnet_count

  template = "$${cidrsubnet(vpc_cidr,8,current_count)}"

  vars = {
    vpc_cidr      = local.cidr_block
    current_count = count.index
  }
}