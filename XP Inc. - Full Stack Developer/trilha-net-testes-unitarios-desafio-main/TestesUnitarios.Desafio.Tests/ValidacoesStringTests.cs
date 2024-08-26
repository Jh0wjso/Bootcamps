using TestesUnitarios.Desafio.Console.Services;

namespace TestesUnitarios.Desafio.Tests;

public class ValidacoesStringTests
{
    private ValidacoesString _validacoes = new ValidacoesString();

    [Fact]
    public void DeveRetornar6QuantidadeCaracteresDaPalavraMatrix()
    {
        // Corrigido o valor da variável "texto" e "resultadoEsperado"

        // Arrange
        var texto = "Matrix";
        var resultadoEsperado = 6;

        // Act
        var resultado = _validacoes.RetornarQuantidadeCaracteres(texto);

        // Assert
        Assert.Equal(resultadoEsperado, resultado);
    }

    [Fact]
    public void DeveConterAPalavraQualquerNoTexto()
    {
        // Arrange
        var texto = "Esse é um texto qualquer";
        var textoProcurado = "qualquer";

        // Corrigida a chamada do método "ContemCaractere" para "ContemTexto"
        // Act
        var resultado = _validacoes.ContemTexto(texto, textoProcurado);

        // Corrigido o Assert.True com base no retorno da chamada ao método
        // Assert
        Assert.True(resultado);
    }

    [Fact]
    public void NaoDeveConterAPalavraTesteNoTexto()
    {
        // Arrange
        var texto = "Esse é um texto qualquer";
        var textoProcurado = "teste";

        // Act
        var resultado = _validacoes.ContemTexto(texto, textoProcurado);

        // Corrigido o Assert.False com base no retorno da chamada ao método
        // Assert
        Assert.False(resultado);
    }

    [Fact] // Corrigida a anotação
    public void TextoDeveTerminarComAPalavraProcurado()
    {
        // Corrigida a variável "textoProcurado" na seção Arrange

        // Arrange
        var texto = "Começo, meio e fim do texto procurado";
        var textoProcurado = "procurado";

        // Act
        var resultado = _validacoes.TextoTerminaCom(texto, textoProcurado);

        // Assert
        Assert.True(resultado);
    }
}
