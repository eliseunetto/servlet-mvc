# JAVA e Servlet

## Autenticação, autorização e o padrão MVC

### Tópicos:

1. **Criando o controlador** \
  1.1 Reorganização da aplicação em 3 pacotes: acao, modelo e servlet. Criação de uma servlet que recebe todas as requisições da aplicação (quase todas). A ideia é centralizar o acesso através dessa servlet, para que ela decida qual ação executar. 

   1.2   Para tal, foi usado um parâmetro da requisição que define o nome da ação. Por isso, foi necessário alterar todos os links e formulários para enviar sempre esse parâmetro.

2. **O padrão MVC** \
  2.1 MVC significa *Model-View-Controller* \
  2.2 MVC divide a aplicação em 3 camadas lógicas \
  2.3 Cada camada tem a sua responsabilidade \
  2.4 O controlador central e as ações fazem parte da camada *Controller*, que define o fluxo da aplicação \
  2.5 Os JSPs fazem parte da camada *View*, que define a interface \
  2.6 As classes do modelo fazem parte da camada *Model*, que encapsula as regras de negócio \
  2.7 MVC facilita a manutenção e evolução da aplicação \
  2.8 Os JSPs devem ficar "escondidos" na pasta **WEB-INF**, pois dependem da ação

3. **Formulário de login** \
  3.1 Representar o usuário através de uma classe `Usuario` \
  3.2 Criar um formulário de login \
  3.3 Criar a ação para chamar o formulário \
  3.4 Criar a ação verificar o login e a senha

4. **HttpSession** \
  4.1 Por padrão, o navegador não envia nenhuma identificação sobre o usuário \
  4.2 Quando o Tomcat recebe uma nova requisição (sem identificação), gerará um ID \
  4.3 O ID fica salvo no cookie de nome `JSessionID` \
  4.4 O ID é um hash (número aleatório) \
  4.5 O cookie é anexado à resposta HTTP \
  4.6 O navegador reenvia o cookie automaticamente nas próximas requisições \
  4.7 O Tomcat gera, além do ID, um objeto chamado `HttpSession` \
  4.8 A vida do objeto `HttpSession` fica atrelado ao ID \
  4.9 Para ter acesso à `HttpSession`, basta chamar `request.getSession()` \
  4.10   Usamos a `HttpSession` para guardar dados sobre o usuário (login, permissões, carrinho de compra) \
  4.11   A `HttpSession` tem um ciclo de vida e será automaticamente invalidada 

Com esse conhecimento, conseguimos proteger a nossa aplicação e criar um login, logout e autorizar o acesso.

5. **Aplicando Filtros** \
  5.1 Um Filter e Servlet são bem parecidos \
  5.2 Comparado com Servlet, o Filter tem o poder de parar o fluxo \
  5.3 Para escrever um filtro, devemos implementar a interface `javax.servlet.Filter` \
  5.4 Para mapear o filtro, usamos a anotação `@WebFilter` ou o **web.xml** \
  5.5 Vários filtros podem funcionar numa cadeia (um chama o próximo, mas todos são independentes) \
  5.6 Para definir a ordem de execução, devemos mapear os filtros no **web.xml** \
  5.7 Um filtro recebe como parâmetro, do método `doFilter`, um `ServletRequest` e um `ServletResponse` \
  5.8 Ambos, `ServletRequest` e `ServletResponse`, são interfaces mais genéricas do que `HttpServletRequeest` e `HttpServletResponse` \
  5.9 Para chamar o próximo filtro na cadeia, usamos o objeto `FilterChain` 

6. **Introdução ao WebServices** \
  6.1 Um *web service* usa HTML, JSON ou XML como retorno \
  6.2 Um *web service* oferece alguma funcionalidade para seu cliente \
  6.3 Um *web service* é útil quando precisa oferecer uma funcionalidade para cliente diferentes \
  6.4 Para o *web service* não importa se o cliente foi escrito em Java, C# ou outra linguagem, pois usamos um protocolo e formatos independentes da plataforma \
  6.5 Como gerar JSON no código Java através de GSON \
  6.6 Como gerar XML no código Java através de XStream \
  6.7 Como escrever um web service através de um `HttpServlet` \
  6.8 Como criar um cliente HTTP a partir do código Java, usando a biblioteca `Apache HttpClient` \
  6.9 Como gerar JSON ou XML a partir do cabeçalho `Accept` da requisição

7. **Deploy no Jetty** \
  7.1 Disponibilizar a nossa aplicação no *servlet container* **Jetty** \
  7.2 Servlet é uma especificação \
  7.3 A especificação Servlet faz parte do Java EE/Jakarta EE \
  7.4 Ao usar Servlet, programamos independentemente do servidor/container \
  7.5 A diferença entre *servlet container* e *application server*
