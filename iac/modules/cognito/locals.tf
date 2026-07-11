locals {
  name_prefix = "${var.project_name}-${var.environment}-${data.aws_caller_identity.current.account_id}-${var.aws_region}"
  pool_name   = "${local.name_prefix}-user-pool"
  domain      = var.user_pool_domain != null ? var.user_pool_domain : local.name_prefix
}