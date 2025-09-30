resource "random_pet" "name" {
  keepers = {
    ami_id = timestamp() # 현재 시간을 id로 만들기
  }
}

resource "random_password" "password" {
  length           = var.isDB ? 16 : 10
  special          = var.isDB ? true : false
  override_special = "!#$%*?"
}
