resource "aws_secretsmanager_secret" "api" {
  name = "demo/api-secret"
}

resource "aws_secretsmanager_secret_version" "api_value" {

  secret_id = aws_secretsmanager_secret.api.id

  secret_string = jsonencode({
    mensagem = "Hello from Secrets Manager"
  })
}