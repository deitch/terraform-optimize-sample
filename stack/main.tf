module "service" {
  count  = 4
  source = "../service"
  name   = "${var.name}-service-${count.index}"
}
