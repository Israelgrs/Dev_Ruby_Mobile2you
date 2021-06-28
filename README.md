<h1 text align="center">Events Scheduler :notebook:</h1>

<p><b>Para executar este projeto nativamente em sua máquina, serão necessárias algumas dependências em sua máquina, elas são:</b></p>
<ul>
  <li>NodeJS</li>
  <li>NPM</li>
  <li>Webpacker</li>
  <li>Yarn</li>
</ul>
<p>O esperado é que ao clonar o repositório e executar o 'Bundle install' tudo seja executado da maneira correta e o projeto possa rodar, porém, caso tenha algum problema para prosseguir, por gentileza verifique as dependências acima.</p>
<br/><br/>
<p>Estas são algumas das Gems e suas versões escolhidas para este projeto:</p>
<ul>
  <li>Ruby - Versão 2.7.1: Tenho Utilizado principalmente esta versão e a 3.0.0 em alguns dos projetos de estudo.</li>
  <li>Rails - Versão 6.1.4: Utilizo a versão mais recente do Rails por ter algumas funcionalidades novas que são muito úteis</li>
  <li>Gem mysq2 - Versão 0.5: Escolhida para utilização do banco de dados MySQL</li>
  <li>Gem Devise - Versão 4.8: Utilizada para Criação de Usuários com senhas criptografadas</li>
  <li>Gem Rubocop- Versão 1.17: Utilizo porque me ajuda manter as boas práticas de código</li>
</ul>
<h1 text align="center">Visão Geral do Projeto:</h1>
<p>O intuito deste projeto era únicamente de demonstar a funcionalidade do relacionamento entre as tabelas citadas no banco Modelado na questão 02, Para isso, Criei alguns models Utilizando scaffolds mesmo, do Rails, para poder facilitar e tornar mais prática a possibilidade de alteração nos dados e também da criação de novos registros em cada tabela. Também não foi elaborada uma interface gráfica das melhores, só um html mesmo para organizar um pouco a forma de exibição dos Dados na tela.</p>
<p>Todas as tabelas seguem o banco modelado na questão de número 02, sendo assim, caso queira efetuar alguns testes, é necessário primeiro criar Seu usuário, pois  para efetuar qualquer ação em qualquer um dos controllers é necessário primeiramente realizar a autenticação, a Devise irá exigir isso. Em seguida, Você precisará criar um Evento, pois Inscrições, prêmios e Confirmações de Participação, possuem uma relação de pertencimento com essas duas tabelas, Eventos e Usuários.</p>
<br/>
<h3>Algumas ideias de possíveis melhorias futuras para tornar o projeto melhor estruturado e com uma experiência de usuário melhor, são:</h3>
<ul>
  <li>Melhorar a interação com o cadastro de prêmios: A ideia final é de que os prêmios possam ser cadastrados inicialmente sem um Usuário relacionado à eles (Por isso o "optional" no model de prêmios), São necessários alguns ajustes e um valor padrão setado para o collection_select, ou a utilização de algum outro helper para isso.</li>
  <li>A criação de um controller para sorteios e uma View para realização deles, ou ao menos um botão na Homepage para sortear: Como citado acima, uma etapa futura de melhoria do sistema (No momento apenas uma ideia) é de que os prêmios inicialmente não tenham relação com usuários, basicamente poderia criar uma lógica em um dos controllers para que utilizasse o "rand.()" do Rails para sortear algum ID de usuário e assim premiá-lo, já atribuindo o valor de seu ID relacionado ao registro do prêmio. </li>
  <li>Acrescentar os demais campos de Usuário na criação de um novo Usuário: O formulário utilizado para criação de Logins no projeto está sendo o padrão fornecido pela Devise. A tabela de Usuários possui mais alguns campos além de e-mail e senha, como nome, cargo e cpf, que não são registrador no ato de criação de usuário. Devido a isso, precisei colocar o campo de e-mail para ser exibido no collection_select ao invés do nome.</li>
</ul>
<p>Então este foi o projeto. Simples e com intenção apenas de mostrar a efetividade da relação entre as tabelas no exemplo da questão 02, vou deixar agora um print abaixo da Homepage do projeto, apenas para mostrar melhor caso não possa testá-lo</p>
