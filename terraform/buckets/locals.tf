locals {
  sabedoria_bucket_name = "${data.terraform_remote_state.names.outputs.sabedoria}-${random_uuid.sabedoria.result}-v3"
  trakttv_bucket_name   = "${data.terraform_remote_state.names.outputs.trakttv}-${random_uuid.trakttv.result}-v3"
}
