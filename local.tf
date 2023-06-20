resource "local_file" "exemplo" {
    filename = "exemplo.txt"
    content = var.conteudo
}

data "local_file" "conteudoExemplo" {
    filename = "exemplo.txt"
}

output "data-source-result" {
    value = data.local_file.conteudoExemplo.content
}

variable conteudo {
    type = string
    default = "Hello world"
}

output "id-do-arquivo" {
    value = resource.local_file.exemplo.id
}

output "conteudo-do-arquivo" {
    value = var.conteudo
}