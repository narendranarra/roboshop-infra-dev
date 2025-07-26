module "component" {
    for_each = var.components
    #source = "../../terraform-aws-roboshop"
    source = "git::https://github.com/narendranarra/terraform-aws-roboshop.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}
