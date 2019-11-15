variable "principal" {
  type = string
  description = "The Kafka principal the ACL entry is for. Format is <principalType>:<principalName>. Examples: User:alice, User:1234"
}

variable "application_id" {
    type = string
    description= "The Kafka Streams application id for your app."
}