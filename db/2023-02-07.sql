truncate public.courselanguage cascade;
truncate public.coursessource cascade;
truncate public.smarttags cascade;
truncate public.course cascade;
truncate public.coursetags cascade;
truncate public.project cascade;
truncate public.projecttags cascade;
truncate public.job  cascade;
truncate public.employmentactivity cascade;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

INSERT INTO public.courselanguage VALUES (1, 'Java');
INSERT INTO public.courselanguage VALUES (2, 'Angular');
INSERT INTO public.courselanguage VALUES (3, 'C#');
INSERT INTO public.courselanguage VALUES (5, 'React');
INSERT INTO public.courselanguage VALUES (4, 'Git');
INSERT INTO public.courselanguage VALUES (6, 'Flutter');
INSERT INTO public.courselanguage VALUES (7, 'Dart');
INSERT INTO public.courselanguage VALUES (8, 'Oracle');
INSERT INTO public.courselanguage VALUES (9, 'Aws');
INSERT INTO public.courselanguage VALUES (10, 'UX');
INSERT INTO public.courselanguage VALUES (11, 'Kafka');
INSERT INTO public.courselanguage VALUES (12, 'Azure');
INSERT INTO public.courselanguage VALUES (13, 'Kubernets');
INSERT INTO public.courselanguage VALUES (14, 'Rabbit MQ');

INSERT INTO public.coursessource VALUES (1, 'Alura', NULL);
INSERT INTO public.coursessource VALUES (2, 'Udemy', NULL);
INSERT INTO public.coursessource VALUES (3, 'Senac', NULL);

INSERT INTO public.smarttags VALUES (1, 'Java');
INSERT INTO public.smarttags VALUES (2, 'Spring Boot');
INSERT INTO public.smarttags VALUES (3, 'Test');
INSERT INTO public.smarttags VALUES (4, 'Java Test');
INSERT INTO public.smarttags VALUES (5, 'Mock');
INSERT INTO public.smarttags VALUES (6, 'Mock Test');
INSERT INTO public.smarttags VALUES (7, 'React');
INSERT INTO public.smarttags VALUES (8, 'AWS');
INSERT INTO public.smarttags VALUES (9, 'DevOps');
INSERT INTO public.smarttags VALUES (10, 'SOLID');
INSERT INTO public.smarttags VALUES (11, 'Clean Code');
INSERT INTO public.smarttags VALUES (12, 'Frontend');
INSERT INTO public.smarttags VALUES (13, 'Backend');
INSERT INTO public.smarttags VALUES (14, 'JPA');
INSERT INTO public.smarttags VALUES (15, 'Entity Framework');
INSERT INTO public.smarttags VALUES (16, 'Identity Framework');
INSERT INTO public.smarttags VALUES (17, 'Git');
INSERT INTO public.smarttags VALUES (18, 'Database');
INSERT INTO public.smarttags VALUES (19, 'Oracle');
INSERT INTO public.smarttags VALUES (20, 'Mysql');
INSERT INTO public.smarttags VALUES (21, 'Postgres');
INSERT INTO public.smarttags VALUES (22, 'Sql Server');
INSERT INTO public.smarttags VALUES (23, 'C Sharp(C#)');
INSERT INTO public.smarttags VALUES (24, 'ASP.Net');
INSERT INTO public.smarttags VALUES (25, 'Redux');
INSERT INTO public.smarttags VALUES (26, 'Angular');
INSERT INTO public.smarttags VALUES (27, 'Dart');
INSERT INTO public.smarttags VALUES (28, 'Design Patter');
INSERT INTO public.smarttags VALUES (29, 'Flutter');
INSERT INTO public.smarttags VALUES (30, 'Kubernetes');
INSERT INTO public.smarttags VALUES (31, 'S/ Tag');
INSERT INTO public.smarttags VALUES (32, 'UX Design');
INSERT INTO public.smarttags VALUES (33, 'Desktop');
INSERT INTO public.smarttags VALUES (34, 'CSS');
INSERT INTO public.smarttags VALUES (35, 'Linux Shell');
INSERT INTO public.smarttags VALUES (36, 'Rabbit MQ');
INSERT INTO public.smarttags VALUES (37, 'Windows Server');
INSERT INTO public.smarttags VALUES (38, 'Windows AD');
INSERT INTO public.smarttags VALUES (39, '.Net Core');
INSERT INTO public.smarttags VALUES (40, 'Visual Basic');
INSERT INTO public.smarttags VALUES (41, 'Jira');
INSERT INTO public.smarttags VALUES (42, 'Azure');
INSERT INTO public.smarttags VALUES (43, 'SSL/HTTPS');


INSERT INTO public.course VALUES (29, 'Curso React + Redux: Fundamentos e 2 Apps do Absoluto ZERO!', NULL, 70, NULL, 'https://www.udemy.com/share/101qNE3@1-qPf0vFHb6NDhctPe3UhdFwAujZbTyccppDGAgiJvuuEfqehHSJY8Qyue_sZGHH/', 5, 2);
INSERT INTO public.course VALUES (11, 'ASP.NET Core Parte 3: Identity', NULL, 100, 'https://cursos.alura.com.br/certificate/6f1a3c02-b795-4f03-9649-fe35a8f27a9f', 'https://cursos.alura.com.br/course/aspnet-core-identity', 3, 1);
INSERT INTO public.course VALUES (10, 'ASP.NET Core Parte 4: IdentityServer', NULL, 100, 'https://cursos.alura.com.br/certificate/52d77e8b-0462-4c89-9c68-e78217802abc', 'https://cursos.alura.com.br/course/aspnet-core-identity-server', 3, 1);
INSERT INTO public.course VALUES (18, 'Dart: Dominando a Orientação a Objetos', NULL, 100, 'https://cursos.alura.com.br/certificate/432718e0-69e6-48fa-91b1-8a3631b587f3', 'https://cursos.alura.com.br/course/dart-orientacao-objetos', 7, 1);
INSERT INTO public.course VALUES (17, 'Dart: primeiros passos com a linguagem', NULL, 100, 'https://cursos.alura.com.br/certificate/c9d8bdd2-4e34-460c-bcc5-1b4e564b4fcf', 'https://cursos.alura.com.br/course/dart-primeiro-passos', 7, 1);
INSERT INTO public.course VALUES (19, 'Git e Github: controle e compartilhe seu Código', NULL, 100, 'https://cursos.alura.com.br/certificate/772e488b-c88a-44e8-a880-f7ec76d6adfa', 'https://cursos.alura.com.br/course/git-github-controle-de-versao', 4, 1);
INSERT INTO public.course VALUES (16, 'Flutter: criando um app', NULL, 100, 'https://cursos.alura.com.br/certificate/a248de89-1f85-4fac-b136-150daed8caf6', 'https://cursos.alura.com.br/course/flutter-crie-primeiro-app', 6, 1);
INSERT INTO public.course VALUES (1, 'GIT: CONTROLE E COMPARTILHE SEU Código', NULL, 100, 'https://cursos.alura.com.br/certificate/b72857c3-3e73-460c-8a85-2efe2b6be4c9', 'https://cursos.alura.com.br/course/git', 4, 1);
INSERT INTO public.course VALUES (15, 'Persistência com Flutter: crie um app com armazenamento interno', NULL, 100, 'https://cursos.alura.com.br/certificate/6db04ef1-2ab2-4f69-acf2-ae07b3232e7e', 'https://cursos.alura.com.br/course/flutter-persistencia-interna', 6, 1);
INSERT INTO public.course VALUES (14, 'React parte 1: Componentes reutilizáveis para sua webapp', NULL, 100, 'https://cursos.alura.com.br/certificate/e04cdf23-5c5e-4495-be26-16786edd9edd', 'https://cursos.alura.com.br/course/react-componentes-reutilizaveis', 5, 1);
INSERT INTO public.course VALUES (21, 'SQL com Oracle: manipule e consulte dados', NULL, 100, 'https://cursos.alura.com.br/certificate/5f347707-d589-42b8-bf5a-2aa077dfae30', 'https://cursos.alura.com.br/course/oracle-database-sql-dml', 8, 1);
INSERT INTO public.course VALUES (33, 'Kubernetes: Pods, Services e ConfigMaps', NULL, 100, 'https://cursos.alura.com.br/certificate/0b672a94-7703-4407-84cf-f2c2d4234109', 'https://cursos.alura.com.br/course/kubernetes-pods-services-configmap', 13, 1);
INSERT INTO public.course VALUES (4, 'Entity Framework Core: banco de dados de forma eficiente', NULL, 100, 'https://cursos.alura.com.br/certificate/25d6492e-0ef0-4e79-9df5-9acb5ed16c7c', 'https://cursos.alura.com.br/course/entity-framework-core', 3, 1);
INSERT INTO public.course VALUES (30, 'UX: entenda a experiência de usuário', NULL, 13, NULL, 'https://cursos.alura.com.br/course/fundamentos-ux-entendendo-experiencia-usuario', 10, 1);
INSERT INTO public.course VALUES (31, 'Amazon EC2: alta disponibilidade e escalabilidade em uma aplicação', NULL, 100, 'https://cursos.alura.com.br/certificate/d36021e8-a4f3-4ce7-8a9e-a6ca386d97a4', 'https://cursos.alura.com.br/course/amazon-ec2-alta-disponibilidade-escalabilidade-aplicacao', 9, 1);
INSERT INTO public.course VALUES (22, 'Angular parte 1: produtividade e organização com framework SPA', NULL, 100, 'https://cursos.alura.com.br/certificate/b22fc80b-6561-40a9-a529-90046b87a3d9', 'https://cursos.alura.com.br/course/angular-fundamentos', 2, 1);
INSERT INTO public.course VALUES (23, 'APIs Rest com Asp.NET Core 2.1 Parte 1: Da app MVC para API', NULL, 100, 'https://cursos.alura.com.br/certificate/c18deed2-6c84-45b5-9e65-5355051e56a1', 'https://cursos.alura.com.br/course/asp-net-core-web-api', 3, 1);
INSERT INTO public.course VALUES (6, 'ASP.NET Core parte 1: um e-Commerce com MVC e EF Core', NULL, 100, 'https://cursos.alura.com.br/certificate/9deb9f8a-68de-4fb8-b8cf-105f880d1041', 'https://cursos.alura.com.br/course/webapp-com-aspnet-core-2', 3, 1);
INSERT INTO public.course VALUES (5, 'Entity Framework Core parte 1: mapeando um banco pré-existente', NULL, 100, 'https://cursos.alura.com.br/certificate/3e6b5aea-a2f5-445e-bf13-9dbbe1b9fa00', 'https://cursos.alura.com.br/course/entity-framework-core-banco-pre-existente-parte1', 3, 1);
INSERT INTO public.course VALUES (8, 'Entity Framework Core parte 2: mapeando um banco pré-existente', NULL, 100, 'https://cursos.alura.com.br/certificate/88594523-d3f1-4fae-8225-9b655d98e751', 'https://cursos.alura.com.br/course/entity-framework-core-banco-pre-existente-parte2', 3, 1);
INSERT INTO public.course VALUES (26, 'Mocks em Java: conhecendo o Mockito', NULL, 100, 'https://cursos.alura.com.br/certificate/15dbe312-97a9-4ade-a116-d15b59c522ee', 'https://cursos.alura.com.br/course/mocks-java-mockito', 1, 1);
INSERT INTO public.course VALUES (28, 'SOLID com C#: princípios da programação orientada a objetos', NULL, 100, 'https://cursos.alura.com.br/certificate/d3cb8b8f-1151-48f1-b805-5737aa22230d', 'https://cursos.alura.com.br/course/solid-csharp-principios-orientacao-a-objetos', 3, 1);
INSERT INTO public.course VALUES (12, 'Spring Boot: Agilidade no desenvolvimento java com Spring', NULL, 100, 'https://cursos.alura.com.br/certificate/6eb1056d-0897-4c47-b724-ab924f504973', 'https://cursos.alura.com.br/course/spring-boot-api-rest', 1, 1);
INSERT INTO public.course VALUES (20, 'Spring Boot API Rest: Segurança da API, Cache e Monitoramento', NULL, 100, 'https://cursos.alura.com.br/certificate/75f39528-f18b-4301-827f-5ff549c822aa', 'https://cursos.alura.com.br/course/spring-boot-seguranca-cache-monitoramento', 1, 1);
INSERT INTO public.course VALUES (24, 'Spring Boot e Teste: Profiles, Testes e Deploy', NULL, 100, 'https://cursos.alura.com.br/certificate/b74eb476-6e42-49d5-aba6-c65e95628852', 'https://cursos.alura.com.br/course/spring-boot-profiles-testes-deploy', 1, 1);
INSERT INTO public.course VALUES (13, 'Spring Boot API REST: construa uma API', NULL, 100, 'https://cursos.alura.com.br/certificate/a68ceb9f-76c4-429a-97b1-f4354100b4e8', 'https://cursos.alura.com.br/course/spring-boot-api-rest', 1, 1);
INSERT INTO public.course VALUES (25, 'Testes de Integração: testes de SQL e DAOs automatizados em Java', NULL, 100, 'https://cursos.alura.com.br/certificate/5516aa5f-0405-417e-a740-0ca6f3716f63', 'https://cursos.alura.com.br/course/teste-integracao-sql-daos-automatizados-java', 1, 1);
INSERT INTO public.course VALUES (34, 'SOLID com Java: princípios da programação orientada a objetos', NULL, 41, NULL, 'https://cursos.alura.com.br/course/solid-orientacao-objetos-java', 1, 1);
INSERT INTO public.course VALUES (9, 'ASP.NET Core parte 2: um e-Commerce com MVC e EF Core', NULL, 100, 'https://cursos.alura.com.br/certificate/2ef3bd89-42e7-4046-883c-b435ff021bec', 'https://cursos.alura.com.br/course/aspnet-core-2-validacoes-seguranca', 3, 1);
INSERT INTO public.course VALUES (7, 'Asp.NET Core: uma webapp usando o padrão MVC', NULL, 100, 'https://cursos.alura.com.br/certificate/8ec8dc7a-a79a-432f-8bec-9e87f7f07e39', 'https://cursos.alura.com.br/course/introducao-ao-mvc-com-asp-net-core', 3, 1);
INSERT INTO public.course VALUES (3, 'C# parte 1: primeiros passos', NULL, 100, 'https://cursos.alura.com.br/certificate/7ff90e44-b622-4bff-9bae-5f64aa80f3c3', 'https://cursos.alura.com.br/course/csharp-parte-1-primeiros-passos', 3, 1);
INSERT INTO public.course VALUES (2, 'C# parte 2: Entendendo a Orientação a Objetos', NULL, 100, 'https://cursos.alura.com.br/certificate/e949f7cc-7aba-4fa7-9a26-7bf2e3ad6f46', 'https://cursos.alura.com.br/course/csharp-parte-2-introducao-orientacao-objetos', 3, 1);
INSERT INTO public.course VALUES (27, 'Design Patterns em Java I: boas práticas de programação', NULL, 100, 'https://cursos.alura.com.br/certificate/483045c5-168b-4a07-a204-3b82140e0a98', 'https://cursos.alura.com.br/course/introducao-design-patterns-java', 1, 1);
INSERT INTO public.course VALUES (35, 'RabbitMQ: de A-Z com exemplos', NULL, 80, null, 'https://www.udemy.com/course/rabbitmq-de-a-z/', 14, 2);
INSERT INTO public.course VALUES (36, 'RabbitMQ com SpringBoot e Docker', NULL, 50, null, 'https://www.udemy.com/course/rabbitmq-com-springboot-e-docker/', 14, 2);

INSERT INTO public.coursetags VALUES (21, 18),
(21, 19),(30, 32),(26, 1),(26, 6),(26, 5),(26, 4),(26, 3),(28, 10),(34, 10),(34, 1),
(28, 23),(1, 17),(19, 17),(3, 23),(2, 23),(4, 23),(4, 15),(5, 23),(5, 15),(6, 23),(6, 24),
(6, 15),(6, 39),(7, 23),(7, 24),(8, 23),(8, 15),(9, 23),(9, 24),(9, 15),(10, 13),(10, 16),(10, 23),(10, 24),
(11, 13),(11, 16),(11, 23),(11, 24),(12, 1),(12, 2),(13, 1),(13, 2),(14, 7),(14, 12),(20, 1),(20, 2),
(24, 1),(24, 2),(24, 3),(24, 4),(25, 1),(25, 2),(25, 3),(25, 4),(15, 29),(15, 27),(16, 29),(18, 27),(17, 27),
(22, 12),(22, 26),(23, 23),(23, 24),(23, 13),(23, 39),(27, 28),(27, 1),(29, 7),(29, 12),(29, 25),(31, 8),(31, 9),(33, 30),(33, 9),
(12, 13),(20, 13),(13, 13),(35,36),(36,36),
(9,39),(11,39),(10,39),(7,39),(4,39),(5,39),(8,39);

insert into public.project(idproject,description,title, status)
values(1, 'Este projeto é destinado a mostrar um pouco dos meus conhecimentos, cursos executados, serviços cujo qual já trabalhei e tecnologias usadas nestes projetos','Portfolio',2)
,
(2, 'Com o intuíto de monitorar os serviços de replicação 
	do servidores slaves foi criado um monitor que verificava além de estar 
	rodando a replicação dos bancos, verificava algumas possíveis divergências 
	entre os servidores por falha de replicação que possa ter ocorrido em algum momento. O mesmo encontar-se em 
fora de uso pois foi trocado pela empersa por outro sistema','Monitor BI',4),
(3, 'Devido ao serviço de BI funcionar em um servidor réplica e usarmos algumas tabelas auxiliares, 
era necessário fazer um backup periódicamente apenas destas tabelas extras, sendo assim fazia-se 
necessário uma aplicação para que a mesma fizesse apenas backup das tabelas extras que não tinham no 
backup do servidor principal. Economizando assim tempo de uma pessoa fazer o backup destas tabelas 
manualmente e podendo ser feito o backup periódicamente em multiplos clientes diáriamente. O mesmo encontar-se em 
fora de uso pois foi trocado pela empersa por outro sistema','Bkp Bi',4),
(4, 'Com o intuíto de divulgar o Jovens Sarados mostrando eventos e com o intuíto de praticar flutter foi feito um app. Este app por sua vez ainda não está em produção.','Jovens Sarados App',2);


insert into	public.projectlink(idlink,description,isprivate,title,url,idproject)
	VALUES
	(1, 'Código fonte frontend',false, 'Github Frontend', 'https://github.com/vitorpadovan/portfolio_front',1)
	,(2, 'Código fonte backend',false, 'Github Backend', 'https://github.com/vitorpadovan/portfolio',1)
	,(3, 'Site',false, 'Site', 'http://vitorpadovan.com.br',1)
	,(4, 'Gitlab',true, 'Gitlab', 'https://gitlab.com/vitorpadovan/mono-bi',2)
	,(5, 'Gitlab',true, 'Gitlab', 'https://gitlab.com/vitorpadovan/bkpbi201811',3)
	,(6, 'Swagger',false, 'Swagger', 'http://backend.vitorpadovan.com.br',1)
	,(7, 'Github Backend',false, 'Github', 'https://github.com/vitorpadovan/jovens_sarados_api',4)
	,(8, 'Github Flutter',false, 'Github', 'https://github.com/vitorpadovan/jovens_sarados_app',4)
	;
	
insert into public.projecttags (idproject,idsmarttag)
values
(1,1),
(1,2),
(1,7),
(1,12),
(1,13),
(1,14),
(1,17),
(1,18),
(1,21),
(1,25),
(1,8),
(1,34),
(1,43),
(2,23),
(2,18),
(2,20),
(2,33),
(2,15),
(2,39),
(3,1),
(3,18),
(3,20),
(3,33),
(3,35),
(4,1),
(4,2),
(4,13),
(4,29);

insert into job(idjob,companyname,description,enddate,mainposition,note,startdate, outsourced, temp, urlLogo,urlCompanyName)
values
(1,'FAEPA','Técnico em informática','2016-10-09','Técnico em informática',null /*Note*/,'2008-05-13',false,false, 'https://site.faepa.br/assets/img/logo-faepa.png'/*urlLogo*/, null /*urlCompanyName*/),
(2,'Raizen','Analista de Suporte á Campo','2018-02-15','Analista de Suporte á Campo',null /*Note*/,'2016-10-10',true, true, 'https://logodownload.org/wp-content/uploads/2014/06/raizen-logo-1-1-2048x845.png'/*urlLogo*/, null /*urlCompanyName*/),
(3,'Citel Software','Analista BI','2021-02-16','Analista BI',null /*Note*/,'2018-06-25',false,false, 'https://www.citelsoftware.com.br/assets/images/logos/citel-software-logo.png'/*urlLogo*/, null /*urlCompanyName*/),
(4,'Sênior Sistemas','Desenvolvedor Java','2021-06-11','Desenvolvedor Java',null /*Note*/,'2021-02-17',false,false, 'https://portalerp.com/images/joomla/SENIOR_LOGO_New.png'/*urlLogo*/, null /*urlCompanyName*/),
(5,'FAEPA','Analista de Sistemas','2021-12-20','Analista de Sistemas',null /*Note*/,'2021-06-16',false,false, 'https://site.faepa.br/assets/img/logo-faepa.png'/*urlLogo*/, null /*urlCompanyName*/),
(6,'BTG Pactual','Analista de Sistemas','2022-12-29','Analista de Sistemas',null /*Note*/,'2021-12-21',true,false, 'https://vetores.org/d/btg-pactual.svg'/*urlLogo*/, null /*urlCompanyName*/);

ALTER SEQUENCE public.employment_activity_seq START 1;

insert into employmentactivity(idemploymentactivity, idjob, title, description)
values
-- FAEPA - réplica em Inform�tica
(nextval('employment_activity_seq'),1,'Atendimento ao cliente',''),
(nextval('employment_activity_seq'),1,'Manutenção em computadores',''),
(nextval('employment_activity_seq'),1,'Manutenção em servidores Linux',''),
(nextval('employment_activity_seq'),1,'Manutenção em servidores Windows',''),
(nextval('employment_activity_seq'),1,'Manutenção de AD',''),


-- RAIZEN - Analista de Suporte � campo
(nextval('employment_activity_seq'),2,'Validação de postos para instalação de sistema',''),
(nextval('employment_activity_seq'),2,'Liderança de equipe para instalação de cabeamento',''),
(nextval('employment_activity_seq'),2,'Homologação do ShellBox',''),
(nextval('employment_activity_seq'),2,'Suporte e instalações ShellBox',''),

-- Citel Software
(nextval('employment_activity_seq'),3,'Criação de relatórios',''),
(nextval('employment_activity_seq'),3,'Manutenção em banco de dados',''),
(nextval('employment_activity_seq'),3,'Manutenção em servidores linux',''),
(nextval('employment_activity_seq'),3,'Gestão de backups',''),
(nextval('employment_activity_seq'),3,'Atendimento ao cliente',''),

-- S�nior Sistemas
(nextval('employment_activity_seq'),4,'Desenvolvimento de sistema em java',''),
(nextval('employment_activity_seq'),4,'Manutenção de sistema',''),

-- FAEPA	
(nextval('employment_activity_seq'),5,'P.O. Sistemas de RH do Hospital das Clínicas',''),
(nextval('employment_activity_seq'),5,'Desenvolvimento de sistemas',''),
(nextval('employment_activity_seq'),5,'Extração de informações do banco de dados',''),
(nextval('employment_activity_seq'),5,'Atendimento ao usuário',''),


-- BTG Pactual
(nextval('employment_activity_seq'),6,'Desenvolvimento de aplicações em .Net Core, Visual Studio, Sql Server e Postgres, RabbitMq, Datadog, Jira, Azure, Entity Framework',''),
(nextval('employment_activity_seq'),6,'Desenvolvimento em sistemas legados(Visual Basic)',''),
(nextval('employment_activity_seq'),6,'Suporte ao usuário','');

insert into jobtags(idjob, idsmarttag)
values
-- FAEPA - réplica em Inform�tica
(1,23),
(1,33),
(1,35),
(1,37),
(1,38),
(1,15),

-- RAIZEN - Analista de Suporte � campo,
(2,35),

-- Citel Software
(3,33),
(3,1),
(3,18),
(3,17),
(3,20),
(3,23),
(3,39),

-- S�nior Sistemas
(4,1),
(4,19),
(4,17),
(4,2),
(4,14),

-- FAEPA
(5,26),
(5,19),
(5,18),
(5,23),
(5,24),
(5,39),
(5,15),
(5,17),

-- BTG Pactual
(6,23),
(6,22),
(6,20),
(6,39),
(6,15),
(6,17),
(6,40),
(6,8),
(6,11),
(6,41),
(6,42),
(6,7),
(6,21);