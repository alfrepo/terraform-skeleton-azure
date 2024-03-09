

module "codepipeline_from_module" {

  # ideally keep the modules in an own repository, to have separate pipeline triggers on push
  source               = "../../../modules/your_module_component/v1.0.0"

  location           = local.location
  prefix             = local.prefix

}
