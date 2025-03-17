# **Sistema de Cadastro de Visitantes**

## **Descrição**
O "Sistema de Cadastro de Visitantes" é um sistema web simples desenvolvido com **JSP**, que permite registrar e consultar visitantes de um local, como escolas, eventos ou empresas. Ele oferece uma interface intuitiva para o cadastro do **nome do visitante**, **motivo da visita** e **data/hora**, exibindo os registros em tempo real.

---

## **Funcionalidades**
- **Cadastro de Visitantes:**
  - Registro de dados como nome, motivo e data/hora.
  - Armazenamento dos dados em uma estrutura temporária (`ArrayList`) na sessão.
  
- **Consulta de Registros:**
  - Exibição dos visitantes cadastrados em formato de tabela.

---

## **Estrutura do Sistema**
O sistema é composto pelas seguintes páginas:

1. **Página Principal** (`index.jsp`):
   - Tela inicial que fornece links para as funcionalidades de cadastro e consulta.

2. **Página de Cadastro** (`cadastrar.jsp`):
   - Formulário para registro de visitantes.
   - Realiza o processamento dos dados enviados pelo formulário.

3. **Página de Consulta** (`consultar.jsp`):
   - Mostra todos os registros de visitantes armazenados durante a sessão.

---

## **Como Executar o Projeto**

### **Pré-Requisitos**
- Servidor de aplicação **Apache Tomcat** (versão 9 ou superior).
- Ambiente de desenvolvimento Java Web (ex.: **Eclipse** ou **IntelliJ IDEA**).
- JDK (Java Development Kit) instalado.

---

### **Passos para Executar**
1. Faça o download ou clone o projeto em seu ambiente local.
2. Importe o projeto no seu IDE.
3. Configure o servidor Apache Tomcat no ambiente.
4. Adicione o projeto ao servidor configurado.
5. Inicie o servidor.
6. Acesse a página inicial do sistema no navegador, pelo endereço:
   http://localhost:8080/ProjetoCadastro/index.jsp


---

## **Uso do Sistema**

### **1. Página Inicial**
- Apresenta as opções:
- **Cadastrar Visitante**: Redireciona para a página de cadastro.
- **Consultar Registros**: Redireciona para a página de consulta.

### **2. Cadastro de Visitantes**
- Preencha os seguintes campos no formulário:
- **Nome do Visitante**.
- **Motivo da Visita**.
- **Data e Hora**.
- Clique em **Cadastrar** para salvar os dados.

### **3. Consulta de Registros**
- Exibe a lista dos visitantes registrados em uma tabela.
- Cada registro contém nome, motivo e data/hora.

---
## **Tecnologias Utilizadas**
- **JSP** (JavaServer Pages)
- **HTML5**
- **CSS3**

---

## **Observações**
- O sistema utiliza um `ArrayList` na sessão para armazenamento temporário dos registros, ideal para sistemas didáticos ou de demonstração.



