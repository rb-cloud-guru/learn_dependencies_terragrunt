
#path to root vars and more
include {
    path = find_in_parent_folders()
}

#current path
terraform {
  source = "../sa"
}

#dependency
dependency "rg" {
  config_path = "../rg"
  skip_outputs = false
  mock_outputs = {
    rg_name     = "dummy-rg-name"
    location = "validazregion"
  }
}

#inputs
inputs = {
  rg_name = dependency.rg.outputs.rg_name
  location = dependency.rg.outputs.location
}

