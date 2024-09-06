# Projeto Dio Power bi + Mysql.

Esse projeto tem o desafio de conectar um banco de dados MySQL ao Power BI e realizar o tratamento necessário.

## Objetivos do projeto:

1. Criação de uma instância na Azure para MySQL
2. Criar o Banco de dados com base disponível no github
3. Integração do Power BI com MySQL no Azure
4. Verificar problemas na base a fim de realizar a transformação dos dados
   Diretrizes para transformação dos dados
5. Verifique os cabeçalhos e tipos de dados
6. Modifique os valores monetários para o tipo double preciso
7. Verifique a existência dos nulos e analise a remoção
8. Os employees com nulos em Super_ssn podem ser os gerentes. Verifique se há algum colaborador sem gerente
9. Verifique se há algum departamento sem gerente
10. Se houver departamento sem gerente, suponha que você possui os dados e preencha as lacunas
11. Verifique o número de horas dos projetos
12. Separar colunas complexas
13. Mesclar consultas employee e departament para criar uma tabela employee com o nome dos departamentos associados aos colaboradores. A mescla terá como base a tabela employee. Fique atento, essa informação influencia no tipo de junção
14. Neste processo elimine as colunas desnecessárias.
15. Realize a junção dos colaboradores e respectivos nomes dos gerentes. Isso pode ser feito com consulta SQL ou pela mescla de tabelas com Power BI. Caso utilize SQL, especifique no README a query utilizada no processo.
16. Mescle as colunas de Nome e Sobrenome para ter apenas uma coluna definindo os nomes dos colaboradores
17. Mescle os nomes de departamentos e localização. Isso fará que cada combinação departamento-local seja único. Isso irá auxiliar na criação do modelo estrela em um módulo futuro.
18. Explique por que, neste caso supracitado, podemos apenas utilizar o mesclar e não o atribuir.
19. Agrupe os dados a fim de saber quantos colaboradores existem por gerente
20. Elimine as colunas desnecessárias, que não serão usadas no relatório, de cada tabela

---

## Respostas:

R14: No Power BI, as operações de **mesclar** e **atribuir** são utilizadas para manipulação e modelagem de dados, e cada uma delas tem seus casos de uso específicos.

### **Mesclar (Merge)**

A operação de mesclar combina duas ou mais tabelas com base em uma coluna, ou conjunto de colunas comuns, semelhante a um **JOIN** no SQL. Existem vários tipos de junção (merge), como junção interna, externa, à esquerda, etc. Mesclar é útil nos seguintes cenários:

1. **Relacionar Dados de Tabelas Diferentes**: Quando você tem informações relevantes separadas em tabelas diferentes e precisa combiná-las. Exemplo: unir uma tabela de vendas com uma tabela de clientes, com base no ID do cliente.
2. **Complementar Dados**: Se uma tabela contém dados adicionais, como preços ou categorias, e você quer adicionar essas informações à tabela principal.
3. **Obter Dados Relacionados**: Quando você deseja cruzar dados de tabelas diferentes para enriquecer a análise. Exemplo: combinar informações de produtos com dados de estoque.

### **Atribuir (Append)**

A operação de atribuir combina as linhas de duas ou mais tabelas em uma única tabela. É útil em situações em que você deseja adicionar dados de uma tabela à outra, sem a necessidade de uma relação direta. Aqui estão alguns casos de uso:

1. **Consolidar Dados de Múltiplas Fontes**: Quando você tem dados semelhantes (mesma estrutura de colunas) de diferentes fontes ou períodos e quer unificar esses dados em uma tabela. Exemplo: unir vendas de diferentes regiões em uma única tabela de vendas.

2. **Unir Dados de Períodos Diferentes**: Se você tem uma tabela de vendas por mês ou por trimestre, pode atribuir esses dados em uma tabela única para uma análise consolidada de vendas ao longo do tempo.

3. **Criar Uma Tabela Ampliada**: Quando você quer unir diferentes versões de uma tabela (ex.: histórico e atual), atribuir é a operação correta.

Em resumo, você usa **mesclar** quando precisa combinar dados de duas ou mais tabelas com base em uma chave comum (colunas relacionadas), e usa **atribuir** quando deseja empilhar dados de várias tabelas (com a mesma estrutura) uma embaixo da outra.
