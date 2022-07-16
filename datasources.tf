data "template_file" "cloud_init_user_data_file" {
  template = file("${abspath(path.module)}/cloud-init-userdata.yaml")
}
