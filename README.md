# gRPC: Definições e uso com o Dart

Este repositório possui o código fonte referente ao vídeo em que falamos sobre o gRPC e sua utilização com o Dart. O vídeo pode ser acessado a partir deste [link](https://github.com/bmsrangel/gRPC_dart_places)

## Proposta do projeto

Este projeto trata-se de uma API sobre lugares favoritos dos usuários, onde cada _user_ pode criar e armazenar dados de nome, cidade e estado de um lugar que tenha sido visitado e que o usuário gostou e quer "favoritar".
A princípio ele não implementa o micro-serviço de usuários. O vídeo sugere que esta parte seja implementada por quem tiver interesse em tentar aplicar os conhecimentos passados no vídeo, como uma "tarefa de casa".
Caso você de fato queira tentar, basta dar um _fork_ no projeto ou baixar/clonar o repositório em sua máquina e começar a brincadeira! Deixei as instruções de como executar tudo mais [abaixo](#starting).

## Estrutura do projeto

Este projeto consiste em três subprojetos (sim, subprojetos porquê cada um deles é um projeto Dart separado):

- api: contém o código do gateway, elemento que fica entre o frontend e os micro-serviços. A interação entre o gateway e o frontend foi construida usando REST e a interação do gateway com os micro-serviços foi construira usando gRPC.
- places_service: micro-serviço responsável por toda a parte dos serviços dos locais favoritos, com métodos para listar e criar locais.
- protobufs: pasta "comum" que possui todos os arquivos _protocol buffers_ e as classes geradas pelo processo de compilação

## Executando o projeto

Neste momento estou partindo do princípio que você já atende a todos os requisitos listados no vídeo, como ter pelo menos o Dart SDK instalado, o compilador dos arquivos _protocol buffers_ (`protoc`) e o plugin do `protoc` para Dart ativado.

### Banco de Dados

Primeiramente tenha em mente que este projeto foi feito usando o banco de dados PostgreSQL. Mas, você pode usar qualquer banco de dados de sua escolha. Recomendo que certifique-se que haja um pacote para realizar a conexão e interação no [pub.dev](https://pub.dev).
Caso você opte por utilizar outro banco, basta adicionar o pacote no _pubspec.yaml_ do _places_service_ e criar uma nova implementação do _places_repository.dart_. E viva o _Repository Pattern_! haha
Caso você resolva seguir utilizando o PostgreSQL, na raíz do repositório encontra-se o código SQL para a criação da tabela _places_, e na pasta _places_service_ encontra-se o arquivo _docker-compose_ para inicialização do banco de dados com o Docker. Para iniciar o container, basta utilizar o seguinte comando na pasta _places_service_:

```bash
docker-compose up -d
```

Ou, caso você tenha a extensão do Docker instalada no VS Code, pode clicar com o botão direito no arquivo _docker-compose.yaml_ e selecionar a opção "Compose up".
Para encerrar o container, basta executar o comando:

```bash
docker-compose down
```

ou clicar com o botão direito do mouse no _docker-compose.yaml_ e selecionar a opção "Compose down".

### Obtendo os pacotes de cada projeto

Na raíz do projeto, você pode executar os seguintes comandos:

```bash
dart pub get -C api
dart pub get -C places_service
dart pub get -C protobufs
```

Ou, opcionalmente pode entrar em cada projeto e executar o comando `dart pub get`.

### <a id="starting" />Inicializando os serviços

Como os serviços ficam em modo de "escuta", os terminais ficam "presos" quando os serviços forem iniciados. Considerando que você está com o terminal aberto na raíz do projeto, abra uma nova instância do terminal e execute os comandos abaixo, um em cada instância:

```bash
dart api/bin/server.dart
dart places_service/bin/places_service.dart
```

E, pronto! Agora basta abrir sua aplicação de testes de API, como o Postman, ou o Insomnia, ou até mesmo extensões do VS Code como o Thunder Client, e começar a brincadeira!
