<div id="top"></div>
<!--
*** Thanks for checking out this README file.
*** If you have a suggestion, please fork the repo and create a pull request
*** or open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thank you!
-->

<div align="center">
<h3 align="center">Metabase Sample Database in PostgreSQL/MySQL format.</h3>
  <p align="center">
    Metabase Sample Database in PostgreSQL/MySQL format.
    <br />
    <a href="https://github.com/sergiosouzalima/metabase-sample-database">
    <strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/sergiosouzalima/metabase-sample-database/issues">Report Bug</a>
    ·
    <a href="https://github.com/sergiosouzalima/metabase-sample-database/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About the Project</a>
      <ul>
        <li><a href="#how-it-works">How it works</a></li>
        <li><a href="#built-with">Built with</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

<div id="about-the-project"></div>


## About the Project

* The <a href="https://www.metabase.com/glossary/sample_database" target="_blank">Sample Database</a> is a small <a href="https://www.h2database.com/html/main.html" target="_blank">H2 database</a> that ships with <a href="https://www.metabase.com" target="_blank">Metabase</a>, a Business Inteligence (BI) and analytics tool.

* The Sample Database's data is available in this repo, converted in insert commands script files.

* If you are connected in a PostgreSQL or MySQL database, you can simply run the scripts from this repo, and you'll have the Sample Database in PostgreSQL or MySQL format.

* I hope this repo helps you to have a simple dataset for your Metabase project or any other BI tool.

<div id="how-it-works"></div>

## How it Works

- Na área de stage:
  - O projeto carrega arquivos <a href="https://pt.wikipedia.org/wiki/Comma-separated_values#:~:text=Os%20arquivos%20Comma-separated%20values,Excel%20e%20o%20LibreOffice%20Calc" target="_blank">CSV<a>, que contêm dados de funcionários, como nome, salário, departamento, divisão, etc. Para ver os arquivos CSV click <a href="https://github.com/sergiosouzalima/metabase-sample-database/tree/master/datasets" target="_blank">aqui</a>
  - Depois, o projeto armazena os dados dos arquivos CSV, em tabelas da área de stage.(<a href="#stage-area">Stage Area</a>)
- Da área de stage para a área de DW:
  - Em seguida, o projeto move os dados da área de stage para dentro de tabelas de dimensão, que estão na área de DW.
    - <a href="#divsion-dim">Dimensão Divisão</a>
    - <a href="#role-dim">Dimensão Cargo</a>
    - <a href="#depto-dim">Dimensão Departamento</a>
    - <a href="#employee-dim">Dimensão Funcionário</a>
  - A chamada "tabela fato", que está na área de DW, é alimentada com dados da folha de pagamento, como salário e data de pagamento.(<a href="#fact-table">Tabela Fato</a>)
- Na área de DW:
  - Na área do DW, o projeto cria a chamada "dimensão tempo". É uma tabela que armazena datas e serve para o DW fornecer dados com base em uma determinada data.(<a href="#calendar-dim">Dimensão Tempo</a>)
- E finalmente:
  - Depois de todos esses processos, o DW está pronto para ser consultado por outras ferramentas, gerando relatórios, gráficos, dashboards, etc.
  - Para executar todos esses arquivos juntos, basta executar somente o arquivo de Workflow: <a href="#wrkf01">wrkf01_salary_payments.hwf</a>

<div id="built-with"></div>

### Built with
* <a href="https://hop.apache.org" target="_blank">Apache HOP version 1.2.0</a>

<p align="right">(<a href="#top">back to top</a>)</p>


<div id="stage-area"></div>

### Stage Area (carga dos arquivos CSV)

<br />
<div align="center">
  <a href="https://github.com/sergiosouzalima/metabase-sample-database/blob/master/images/wrkf01_pipe01.png">
    <img src="images/wrkf01_pipe01.png" alt="Stage Area">
  </a>
</div>

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.<br />

<div id="prerequisites"></div>

### Prerequisites

1. <a href="https://git-scm.com" target="_blank">Git</a>, the distributed version control system.
2. An instance of a <a href="https://www.postgresql.org" target="_blank">PostgreSQL</a> or <a href="https://www.mysql.com" target="_blank">MySQL</a> database.

<div id="installation"></div>

### Installation

1. <a href="https://hop.apache.org/manual/latest/getting-started/hop-download-install.html" target="_blank">Aqui</a>
 você encontra instruções para baixar e instalar o Apache HOP para Linux, MacOS ou Windows.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

<div id="usage"></div>

## Usage.

Como este projeto pode ser usado.

1. Tenha o Apache HOP instalado localmente em sua maquina [<a href="#installation">Veja a sessão de instalação</a>]

2. Faça um clone deste repositorio
   ```sh
   git clone https://github.com/sergiosouzalima/metabase-sample-database.git
   ```
3. Entre dentro da pasta criada no item anterior
   ```sh
   cd metabase-sample-database
   ```
4. Execute o Apache HOP.
   ```sh
   ./hop-gui.sh
   ```
5. Dentro do Apache HOP, carregue o arquivo metabase-sample-database/wrkf01_salary_payments.hwf

6. Click no botão "play" para executar este projeto.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTRIBUTING -->

<div id="contributing"></div>

## Contribuição

Contribuições fazem a comunidade open source um ótimo lugar para aprender e criar.

Qualquer contribuição será **muito bem-vinda**.

Se você tem uma sugestão para melhorar este projeto, por favor, faça um fork do repositório e crie uma pull request.

Você pode também abrir uma <a href="https://github.com/sergiosouzalima/metabase-sample-database/issues">issue</a> com a tag "enhancement" ou "melhoria".

Não se esqueça de marcar uma estrela neste projeto! Obrigado novamente!


1. Faça um Fork do projeto.
2. Crie sua Feature Branch (`git checkout -b feature/AmazingFeature`).
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`).
4. Envie para uma Branch (`git push origin feature/AmazingFeature`).
5. Abra uma Pull Request.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->

<div id="license"></div>

## Licença

Distribuido sob a Licença do <a href="https://www.google.com/search?q=MIT+license&sxsrf=ALiCzsau_v3Gey9rKHFZXjAtM7pfNTQgzg%3A1657904235316&ei=a5zRYvH-EtSf5OUPkv2byA0&ved=0ahUKEwix4JHIrvv4AhXUD7kGHZL-BtkQ4dUDCA0&uact=5&oq=MIT+license&gs_lcp=Cgdnd3Mtd2l6EAMyBAgAEEMyBQgAEMsBMgUIABDLATIICAAQyQMQywEyBQgAEMsBMgUIABDLATIFCAAQywEyBQgAEIAEMgUIABCABDIFCAAQgAQ6BwgAEEcQsAM6CggAEOQCELADGAE6DAguEMgDELADEEMYAjoPCC4Q1AIQyAMQsAMQQxgCOgQILhBDOgoILhDHARDRAxBDOgoILhDHARCvARBDOgsILhCABBDHARDRAzoLCC4QgAQQxwEQrwE6DQguEMcBENEDEAoQywFKBAhBGABKBAhGGAFQ2AZYrBZgsCZoAXABeACAAYYCiAGuCZIBBTAuNy4xmAEAoAEByAEPwAEB2gEGCAEQARgJ2gEGCAIQARgI&sclient=gws-wiz">MIT</a>.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->

<div id="contact"></div>

## Contato

Sergio Lima - [@sergiosouzalima](https://twitter.com/sergiosouzalima) - sergiosouzalima@gmail.com

Este projeto no Github: [https://github.com/sergiosouzalima/metabase-sample-database](https://github.com/sergiosouzalima/metabase-sample-database)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

<div id="acknowledgments"></div>

## Agradecimentos

* [Apache Hop Brasil on Telegram](https://t.me/apachehop)
* [This README template by Othneil Drew](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#top">back to top</a>)</p>
