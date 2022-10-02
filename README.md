## 🤖 Semana Viver de Testes - Temp2 🤖

Projeto de estudo sobre [Robot Framework](https://robotframework.org). O material disponível neste repositório foi desenvolvido durante a Segunda temporada da Semana Viver de Teste, evento promovido pela [QAcademy](https://br.qacademy.io/).

O objetivo deste projeto é compreender o funcionamento do Robot Framework aplicado a um caso real. Para tanto, foi utilizado o [Trade Sticker](https://trade-sticker-dev.vercel.app) como objeto de testes. 

Os testes criados analisaram o comportamento do Trade Sticker ao fazer login (login válido, tentativas de login informando senha incorreta, e sem informar email e senha), validação da página de dashboard e uma troca de figurinha dentro da plataforma.


### 💡 Conceitos abordados
-----------------------
- Keywords;
- Padrão Page Object;
- Ganchos;
- Registro de logs;


### ⚠️ Instalação
-----------------------
- Instale o [Node.js](https://nodejs.org/en/download/);
- Instale o [Python](https://www.python.org);
- Abra o diretório do projeto e execute os comandos:
  - `pip install robotframework`
	- `pip install robotframework-browser`
	- `rfbrowser init` (em caso de erro: `python -m Browser.entry init`)

   
### 🖥️ Execução
-----------------------
- Abra o diretório do projeto e execute o comando:
    - `robot -d ./logs test\nome_do_arquivo.robot` (OBS: lembrar de substituir o nome do arquivo para execução) 
	
	
### ⚙️ Arquitetura do projeto
-----------------------

```
vtd2/
  ├─  logs/
  │        ├── log.html
  │        ├── output.xml      
  │        └── report.html
  │
  ├── resources/
  │        ├── pages/
  │        │       ├── dash.resource
  │        │       └── login.resource
  │        └── main.resource
  │
  ├── tests/
  │        ├── login.robot
  │        ├── login.robot
  │        └── trade.robot
  │
  └── README.md
```


## 🔍 Camadas do projeto
---------------------------------------

 - **logs:** arquivos de logs dos testes realizados (html, xml);
 - **resources:** "recursos utilizados";
 - **page:** arquivos que contém as páginas com funcionalidades dos testes como por exemplo: ações da página de login e dashboard;
 - **main.resource:** arquivo base do projeto;
 - **tests:** arquivos de testes separados em serviços (login e player);

