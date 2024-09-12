resource "aws_launch_template" "on_demand" {
  name_prefix = format("%s-on-demand", var.project_name)
  image_id    = var.nodes_ami

  instance_type = var.node_instance_type

  vpc_security_group_ids = [
    aws_security_group.main.id
  ]

  iam_instance_profile {
    name = aws_iam_instance_profile.main.name
  }

  update_default_version = true #sempre atualiza para a versão mais recente

  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_size = var.node_volume_size
      volume_type = var.node_volume_type
    }
  } #configurações de storage

  tag_specifications {
    resource_type = "instance"
    tags = {
      name = format("%s-on-demand", var.project_name)
    }
  }

  user_data = base64encode(templatefile("${path.module}/templates/user-data.tpl", {
    CLUSTER_NAME = var.project_name
  })) #converte de string para base64 para o arquivo user-data.tpl
}