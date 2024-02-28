<H1 align="center">Flutter Proporção</H1>
<p align="center">🚀 Desenvolvimento de uma estrutura de proporção entre telas para referências futuras</p>

## Recursos Utilizados
Flutter 3.3.5


## Criação da classe Sizes como singleton

Um singleton é uma instância de uma classe que é compartilhada globalmente em toda a aplicação e que pode ser acessada de qualquer lugar dentro do código. Em outras palavras, um singleton em Flutter é uma classe que garante que apenas uma única instância dela mesma seja criada e que essa única instância seja acessível globalmente.


- A classe Sizes é responsável por gerenciar as dimensões da tela.
- Sizes._(); declara um construtor privado, o que significa que a classe não pode ser instanciada diretamente de fora da classe.
- _width e _height são variáveis privadas para armazenar a largura e a altura da tela, respectivamente, inicializadas como 0.
- _designSize é uma constante que representa o tamanho de design padrão, definido como 414.8 x 896.0.
- _instance é uma instância singleton da classe Sizes, garantindo que apenas uma instância da classe seja criada.
- factory Sizes() => _instance; é um método factory que retorna a instância única da classe Sizes, acessando a instância singleton suas propriedades
- init é um método estático para inicializar as dimensões com base no contexto e no tamanho de design. Ele obtém as dimensões do dispositivo através do - MediaQuery, ou utiliza o tamanho de design padrão caso não esteja disponível.

<div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/c8648f82-0984-4a62-8d1b-cb19d08c1542" style="width:80%">
</div>

## Extensão SizesExt


- A extensão SizesExt permite adicionar funcionalidades aos tipos de números (num).
- get w é um getter para calcular a largura relativa, levando em consideração a largura da tela e o tamanho de design padrão.
- get h é um getter para calcular a altura relativa, levando em consideração a altura da tela e o tamanho de design padrão.

<div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/5c0a7201-836f-4e24-9eec-4f6dc703a11e" style="width:80%">
</div>

## Lógica de Funcionamento

### Tela de Loading
WidgetsBinding.instance.addPostFrameCallback(...) é utilizado para garantir que o método Sizes.init(context) seja chamado após a renderização completa do próximo Widget, garantindo que o contexto do layout da Tela de Loading esteja disponível e que o método init possa executar as operações desejadas baseadas nesse contexto


<img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/dd7059ef-7615-424c-ab1f-6dc487aa6e32" style="width:80%">

Com base no contexto da Tela de Loading ele executa a função init e armazena as dimensões da tela atual através do MediaQuery

<img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/9673b718-66cc-44e6-8d2b-8a7c94080e73" style="width:80%">

### Tela Home
Como Sizes é uma classe singleton podemos acessar suas propriedades e criaremos uma extensão adicionando uma funcionalidade a Classe nativa Num do dart e acessando as propriedades da classe Sizes que foram alteradas quando a Tela de Loading foi carregada, fazendo o calculo de proporção do posicionamento

- this * Sizes._instance._width: tamanho do device que foi passando através do init quando a tela de loading foi carregada
- Sizes._designSize.height: tamanho pré definido

  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/734bd656-875f-474e-847a-b16f6dff4dbf" style="width:80%">


Dessa forma podemos accessar a funcionalidade adicionada na classe num do dart através do extensions e utilizar a proporção calculada entre diferentes tamanhos de tela  

  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/39908356-86e5-47b8-ad1e-8e27f73fdc7f" style="width:80%">


  










