enum class Nivel { BASICO, INTERMEDIARIO, DIFICIL }

class Usuario(val nome: String, val idade: Int, var endereco: String) {
    private val progresso = mutableMapOf<ConteudoEducacional, Boolean>()

    fun atualizarInformacoes(novoEndereco: String) {
        endereco = novoEndereco
    }

    fun visualizarProgresso(formacao: Formacao) {
        println("Progresso de $nome na formação ${formacao.nome}:")
        for (conteudo in formacao.conteudos) {
            val conteudoConcluido = progresso[conteudo] ?: false
            val status = if (conteudoConcluido) "Concluído" else "Não concluído"
            println("${conteudo.nome}: $status")
        }
    }

    fun concluirConteudo(conteudo: ConteudoEducacional) {
        progresso[conteudo] = true
    }
}

data class ConteudoEducacional(
    var nome: String,
    val duracao: Int = 60,
    val descricao: String,
    val categoria: String,
    val nivel: Nivel
)

data class Formacao(val nome: String, var conteudos: List<ConteudoEducacional>) {
    val inscritos = mutableListOf<Usuario>()

    fun matricular(usuario: Usuario) {
        inscritos.add(usuario)
    }

    fun adicionarConteudo(conteudo: ConteudoEducacional) {
        conteudos += conteudo
    }

    fun removerConteudo(conteudo: ConteudoEducacional) {
        conteudos -= conteudo
    }

    fun calcularDuracaoTotal(): Int {
        return conteudos.sumBy { it.duracao }
    }
}

fun main() {
    val usuario1 = Usuario("João", 25, "Rua A, 123")
    val usuario2 = Usuario("Maria", 30, "Rua B, 456")
    val usuario3 = Usuario("Pedro", 28, "Rua C, 789")

    val conteudo1 = ConteudoEducacional("Introdução à Programação", 90, "Aprenda os conceitos básicos de programação.", "Programação", Nivel.BASICO)
    val conteudo2 = ConteudoEducacional("Algoritmos Avançados", 120, "Aprofunde seus conhecimentos em algoritmos.", "Programação", Nivel.INTERMEDIARIO)

    val formacao = Formacao("Formação em Programação", listOf(conteudo1, conteudo2))

    formacao.matricular(usuario1)
    formacao.matricular(usuario2)

    println("Inscritos na formação: ${formacao.inscritos}")

    formacao.adicionarConteudo(ConteudoEducacional("Machine Learning", 150, "Aprenda sobre aprendizado de máquina.", "IA", Nivel.INTERMEDIARIO))
    println("Duração total da formação: ${formacao.calcularDuracaoTotal()} minutos")

    formacao.removerConteudo(conteudo1)
    println("Conteúdos restantes na formação: ${formacao.conteudos}")

    usuario1.concluirConteudo(conteudo2)
    usuario1.visualizarProgresso(formacao)
}
