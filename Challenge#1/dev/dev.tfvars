application = "app_name"
environment = "dev" 
location    = "easteurope"
capacity    = 2

default_tags = {
  application = "app_name"
  environment = "Dev"
  deployed_by = "terraform" 
}

address_space = "10.135.0.0/16"
subnet        = "10.135.20.0/64"
