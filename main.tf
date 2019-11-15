terraform {
  required_providers {
    kafka = ">= 0.2.2"
  }
}

resource "kafka_acl" "allow_idempotent_write_in_cluster" {
  resource_name       = "*"
  resource_type       = "Cluster"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "IdempotentWrite"
  acl_permission_type = "Allow"
}

resource "kafka_acl" "allow_prefixed_topic_write" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Topic"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Write"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_topic_read" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Topic"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Read"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_topic_create" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Topic"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Create"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_topic_delete" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Topic"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Delete"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_topic_describe_configs" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Topic"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "DescribeConfigs"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_topic_describe" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Topic"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Describe"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_topic_alter" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Topic"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Alter"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_topic_alter_configs" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Topic"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "AlterConfigs"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_consumer_group_read" {
  resource_name       = "${var.application_id}"
  resource_type       = "Group"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Read"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Literal"
}

resource "kafka_acl" "allow_consumer_group_delete" {
  resource_name       = "${var.application_id}"
  resource_type       = "Group"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Delete"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Literal"
}

resource "kafka_acl" "allow_consumer_group_describe" {
  resource_name       = "${var.application_id}"
  resource_type       = "Group"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Describe"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Literal"
}

resource "kafka_acl" "allow_prefixed_consumer_group_read" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Group"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Read"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_consumer_group_delete" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Group"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Delete"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_consumer_group_describe" {
  resource_name       = "${var.application_id}-"
  resource_type       = "Group"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Describe"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_transactional_id_write" {
  resource_name       = "${var.application_id}-"
  resource_type       = "TransactionalID"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Write"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}

resource "kafka_acl" "allow_prefixed_transactional_id_describe" {
  resource_name       = "${var.application_id}-"
  resource_type       = "TransactionalID"
  acl_principal       = "${var.user_id}"
  acl_host            = "*"
  acl_operation       = "Describe"
  acl_permission_type = "Allow"
  resource_pattern_type_filter = "Prefixed"
}