policy "friday_deploys" {
  query = "data.terraform.policies.deployment_days.deny"
  // source = "./policies/deployment_days.sentinel"
  enforcement_level = "advisory"
  params = {
    "forbidden_days" = ["friday"]
  }
}

policy "public_ingress" {
  query = "data.terraform.policies.public_ingress.deny"
  // source = "./policies/public_ingress.sentinel"
  enforcement_level = "soft-mandatory"
}