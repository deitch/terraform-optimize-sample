module "comms" {
  count  = 4
  source = "../../service/comms"
  name   = "${var.name}-comms-${count.index}"
}

module "payment" {
  count  = 4
  source = "../../service/payment"
  name   = "${var.name}-payment-${count.index}"
}
