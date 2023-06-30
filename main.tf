module "stack1" {
  count  = 5
  source = "./stack"
  name   = "stack-${count.index}"
}
