module "web1" {
  source = "./stack/web"
  name   = "web-1"
}

module "web2" {
  source = "./stack/web"
  name   = "web-2"
}
module "proc1" {
  source = "./stack/proc"
  name   = "proc-1"
}
module "proc2" {
  source = "./stack/proc"
  name   = "proc-2"
}
module "other" {
  source = "./stack/other"
  name   = "other"
}
