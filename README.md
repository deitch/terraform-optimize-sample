# Terraform Optimize Tests

This is a simple Terraform configuration that creates approximately 600 low-cost resources. It allows you to create, update or delete them.

Their purpose is to provide a test-bed for the a design to
run `terraform plan` just on a small subset of resources while
maintaining the native Terraform dependency graph.

For a full description, see the blog post at [aptimia.com](https://aptimia.com/).