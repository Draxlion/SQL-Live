CREATE TABLE EMPRESA(
    ID_EMP NUMBER PRIMARY KEY,
    NOME_EMP VARCHAR(100),
    EMAIL_EMP VARCHAR(60),
    CNPJ_EMP NUMBER (9),
    INS_EST_EMP NUMBER(3)
);

CREATE TABLE DPTO(
    ID_DPTO NUMBER PRIMARY KEY,
    NOME_DPTO VARCHAR(100),
    LOCAL_DPTO VARCHAR(100)
);

CREATE TABLE FUNCIONARIO(
    ID_FUNCIONARIO NUMBER PRIMARY KEY,
    NOME_FUNCIONARIO VARCHAR(100),
    EMAIL_FUNCIONARIO VARCHAR(100),
    DATA_NASCIMENTO DATE,
    ID_EMP NUMBER REFERENCES EMPRESA (ID_EMP),
    ID_DPTO NUMBER REFERENCES DPTO (ID_DPTO)
);

CREATE TABLE COUNTRIES(
    ID_COUNTRIES NUMBER PRIMARY KEY,
    NOME_COUNTRIES VARCHAR (100)
);

--- INSERT ---

INSERT INTO EMPRESA VALUES (1,'UNICSUL','UNICSUL@GMAIL.COM',123456789,101,'CLERK');
INSERT INTO EMPRESA VALUES (2,'CRUZEIRO','CRUZEIRODOSUL@GMAIL.COM',987654321,102,'ANALYST');
INSERT INTO EMPRESA VALUES (3,'ANHANGUERA','ANHANGUERA@GMAIL.COM',147258369,103,'MANAGER');
INSERT INTO EMPRESA VALUES (4,'FAAP','FAAP@GMAIL.COM',369258147,104,'DEVELOPER');
INSERT INTO EMPRESA VALUES (5,'ALURA','ALURA@GMAIL.COM',741852963,105,'NETWORK');
INSERT INTO EMPRESA VALUES (6, 'TECHNET', 'CONTACT@TECHNET.COM', 112233445, 106, 'SOFTWARE ENGINEER');
INSERT INTO EMPRESA VALUES (7, 'INNOVATECH', 'SUPPORT@INNOVATECH.COM', 223344556, 107, 'DATA SCIENTIST');
INSERT INTO EMPRESA VALUES (8, 'CYBERSECURITY', 'INFO@CYBERSECURITY.COM', 334455667, 108, 'SECURITY ANALYST');
INSERT INTO EMPRESA VALUES (9, 'DEVTEAM', 'TEAM@DEVTEAM.COM', 445566778, 109, 'DEVOPS ENGINEER');
INSERT INTO EMPRESA VALUES (10, 'CLOUDTECH', 'CLOUDSUPPORT@CLOUDTECH.COM', 556677889, 110, 'CLOUD ARCHITECT');
INSERT INTO EMPRESA VALUES (11, 'BIGDATA CORP', 'INFO@BIGDATACORP.COM', 667788990, 111, 'BIG DATA ENGINEER');
INSERT INTO EMPRESA VALUES (12, 'AI LAB', 'SUPPORT@AILAB.COM', 778899001, 112, 'AI RESEARCHER');
INSERT INTO EMPRESA VALUES (13, 'WEBTECH', 'CONTACT@WEBTECH.COM', 889900112, 113, 'FRONTEND DEVELOPER');
INSERT INTO EMPRESA VALUES (14, 'BACKEND SOLUTIONS', 'SUPPORT@BACKENDSOLUTIONS.COM', 990011223, 114, 'BACKEND DEVELOPER');
INSERT INTO EMPRESA VALUES (15, 'SYSTEMS INC', 'CONTACT@SYSTEMSINC.COM', 101112233, 115, 'SYSTEMS ADMINISTRATOR');
INSERT INTO EMPRESA VALUES (16, 'NETWORKING SOLUTIONS', 'SUPPORT@NETWORKINGSOLUTIONS.COM', 112233344, 116, 'MANAGER');
INSERT INTO EMPRESA VALUES (17, 'IT CONSULTING', 'INFO@ITCONSULTING.COM', 223344455, 117, 'MANAGER');
INSERT INTO EMPRESA VALUES (18, 'WEBMASTERS', 'SUPPORT@WEBMASTERS.COM', 334455566, 118, 'WEBMASTER');
INSERT INTO EMPRESA VALUES (19, 'BLOCKCHAIN INC', 'CONTACT@BLOCKCHAININC.COM', 445566677, 119, 'BLOCKCHAIN DEVELOPER');
INSERT INTO EMPRESA VALUES (20, 'MOBILE DEV', 'SUPPORT@MOBILEDEV.COM', 556677788, 120, 'MOBILE DEVELOPER');


INSERT INTO DPTO VALUES (1,'RECURSOS HUMANOS','SÃO PAULO');
INSERT INTO DPTO VALUES (2,'FINANCEIRO','DESTRITO FEDERAL');
INSERT INTO DPTO VALUES (3,'ADMINISTRATIVO','MATO GROSSO');
INSERT INTO DPTO VALUES (4,'SECRETARIADO','AMAPÁ');
INSERT INTO DPTO VALUES (5,'JURIDICO','AMAZONAS');
INSERT INTO DPTO VALUES (6, 'DESENVOLVIMENTO DE SOFTWARE', 'SÃO PAULO');
INSERT INTO DPTO VALUES (7, 'CIÊNCIA DE DADOS', 'RIO DE JANEIRO');
INSERT INTO DPTO VALUES (8, 'SEGURANÇA DA INFORMAÇÃO', 'MINAS GERAIS');
INSERT INTO DPTO VALUES (9, 'DEVOPS E INFRAESTRUTURA', 'SÃO PAULO');
INSERT INTO DPTO VALUES (10, 'ARQUITETURA DE NUVEM', 'BRASÍLIA');
INSERT INTO DPTO VALUES (11, 'BIG DATA E ANÁLISE', 'SÃO PAULO');
INSERT INTO DPTO VALUES (12, 'PESQUISA EM INTELIGÊNCIA ARTIFICIAL', 'RIO DE JANEIRO');
INSERT INTO DPTO VALUES (13, 'DESENVOLVIMENTO FRONTEND', 'SÃO PAULO');
INSERT INTO DPTO VALUES (14, 'DESENVOLVIMENTO BACKEND', 'MINAS GERAIS');
INSERT INTO DPTO VALUES (15, 'ADMINISTRAÇÃO DE SISTEMAS', 'SÃO PAULO');
INSERT INTO DPTO VALUES (16, 'ENGENHARIA DE REDE', 'RIO DE JANEIRO');
INSERT INTO DPTO VALUES (17, 'CONSULTORIA DE TI', 'BRASÍLIA');
INSERT INTO DPTO VALUES (18, 'DESENVOLVIMENTO DE SITES', 'SÃO PAULO');
INSERT INTO DPTO VALUES (19, 'DESENVOLVIMENTO EM BLOCKCHAIN', 'RIO DE JANEIRO');
INSERT INTO DPTO VALUES (20, 'DESENVOLVIMENTO DE APLICAÇÕES MÓVEIS', 'MINAS GERAIS');


INSERT INTO FUNCIONARIO VALUES (1,'BRUNA', 'BRUNA@GMAIL.COM', TO_DATE('12/10/2004', 'DD/MM/YY'), 1, 1, 1508, 1200);
INSERT INTO FUNCIONARIO VALUES (2,'JESSICA', 'JESSICA@GMAIL.COM', TO_DATE('22/05/2000', 'DD/MM/YY'), 2, 2, 800, 5000);
INSERT INTO FUNCIONARIO VALUES (3,'LUIZ', 'LUIZ@GMAIL.COM', TO_DATE('02/07/2015', 'DD/MM/YY'), 3, 3, 1780, 7000);
INSERT INTO FUNCIONARIO VALUES (4,'ALINE', 'ALINE@GMAIL.COM', TO_DATE('16/12/1995', 'DD/MM/YY'), 4, 4, 2000, 13000);
INSERT INTO FUNCIONARIO VALUES (5,'JONES', 'JONES@GMAIL.COM', TO_DATE('27/11/1981', 'DD/MM/YY'), 5, 5, 5200, 10000);
INSERT INTO FUNCIONARIO VALUES (6,'ANA', 'ANA@TECHNET.COM', TO_DATE('15/08/1992', 'DD/MM/YY'), 6, 6, 4500, 1000);
INSERT INTO FUNCIONARIO VALUES (7,'BRUNO', 'BRUNO@INNOVATECH.COM', TO_DATE('22/03/1989', 'DD/MM/YY'), 7, 7, 5500, 2000);
INSERT INTO FUNCIONARIO VALUES (8,'CARLOS', 'CARLOS@CYBERSECURITY.COM', TO_DATE('10/01/1985', 'DD/MM/YY'), 8, 8, 4800, 1500);
INSERT INTO FUNCIONARIO VALUES (9,'DANIELA', 'DANIELA@DEVTEAM.COM', TO_DATE('05/12/1990', 'DD/MM/YY'), 9, 9, 6000, 2500);
INSERT INTO FUNCIONARIO VALUES (10,'EDUARDO', 'EDUARDO@CLOUDTECH.COM', TO_DATE('17/07/1988', 'DD/MM/YY'), 10, 10, 7500, 3000);
INSERT INTO FUNCIONARIO VALUES (11,'FERNANDA', 'FERNANDA@BIGDATACORP.COM', TO_DATE('29/05/1993', 'DD/MM/YY'), 11, 11, 6500, 2000);
INSERT INTO FUNCIONARIO VALUES (12,'GUSTAVO', 'GUSTAVO@AILAB.COM', TO_DATE('03/02/1987', 'DD/MM/YY'), 12, 12, 7000, 3500);
INSERT INTO FUNCIONARIO VALUES (13,'HELENA', 'HELENA@WEBTECH.COM', TO_DATE('14/09/1991', 'DD/MM/YY'), 13, 13, 5500, 1800);
INSERT INTO FUNCIONARIO VALUES (14,'IVO', 'IVO@BACKENDSOLUTIONS.COM', TO_DATE('26/11/1986', 'DD/MM/YY'), 14, 14, 6000, 2200);
INSERT INTO FUNCIONARIO VALUES (15,'JULIANA', 'JULIANA@SYSTEMSINC.COM', TO_DATE('07/06/1990', 'DD/MM/YY'), 15, 15, 5000, 1600);
INSERT INTO FUNCIONARIO VALUES (16,'KLEBER', 'KLEBER@NETWORKINGSOLUTIONS.COM', TO_DATE('19/03/1984', 'DD/MM/YY'), 16, 16, 5300, 1900);
INSERT INTO FUNCIONARIO VALUES (17,'LUIZA', 'LUIZA@ITCONSULTING.COM', TO_DATE('13/08/1982', 'DD/MM/YY'), 17, 17, 4500, 1300);
INSERT INTO FUNCIONARIO VALUES (18,'MARCOS', 'MARCOS@WEBMASTERS.COM', TO_DATE('21/10/1989', 'DD/MM/YY'), 18, 18, 4200, 1200);
INSERT INTO FUNCIONARIO VALUES (19,'NATÁLIA', 'NATALIA@BLOCKCHAININC.COM', TO_DATE('08/05/1994', 'DD/MM/YY'), 19, 19, 8000, 3500);
INSERT INTO FUNCIONARIO VALUES (20,'OTÁVIO', 'OTAVIO@MOBILEDEV.COM', TO_DATE('11/02/1991', 'DD/MM/YY'), 20, 20, 5400, 2000);


INSERT INTO COUNTRIES VALUES (1, 'BRASIL');
INSERT INTO COUNTRIES VALUES (2, 'NORUEGA');
INSERT INTO COUNTRIES VALUES (3, 'NIGERIA');
INSERT INTO COUNTRIES VALUES (4, 'PORTUGAL');
INSERT INTO COUNTRIES VALUES (5, 'MEXICO');

---ALTERAÇÃO ---

ALTER TABLE FUNCIONARIO ADD COMISSAO NUMBER;
ALTER TABLE FUNCIONARIO ADD SALARIO NUMBER;
ALTER TABLE FUNCIONARIO ADD CODIGO NUMBER;
ALTER TABLE FUNCIONARIO ADD DATA_ADMISSAO DATE;


ALTER TABLE EMPRESA ADD CARGOS VARCHAR(50) NOT NULL;


--- UPDATE ---

UPDATE FUNCIONARIO
SET CODIGO = 7876
WHERE NOME_FUNCIONARIO = 'BRUNA';

UPDATE FUNCIONARIO
SET CODIGO = 7788
WHERE NOME_FUNCIONARIO = 'JESSICA';

UPDATE FUNCIONARIO
SET CODIGO = 7651
WHERE NOME_FUNCIONARIO = 'LUIZ';

UPDATE FUNCIONARIO
SET CODIGO = 7423
WHERE NOME_FUNCIONARIO = 'ALINE';

UPDATE FUNCIONARIO
SET CODIGO = 7876
WHERE NOME_FUNCIONARIO = 'JONES';

UPDATE FUNCIONARIO
SET CODIGO = 7902
WHERE NOME_FUNCIONARIO = 'ANA';

UPDATE FUNCIONARIO
SET CODIGO = 7788
WHERE NOME_FUNCIONARIO = 'BRUNO';

UPDATE FUNCIONARIO
SET CODIGO = 7651
WHERE NOME_FUNCIONARIO = 'CARLOS';

UPDATE FUNCIONARIO
SET CODIGO = 7423
WHERE NOME_FUNCIONARIO = 'DANIELA';

UPDATE FUNCIONARIO
SET CODIGO = 7876
WHERE NOME_FUNCIONARIO = 'EDUARDO';

UPDATE FUNCIONARIO
SET CODIGO = 7902
WHERE NOME_FUNCIONARIO = 'FERNANDA';

UPDATE FUNCIONARIO
SET CODIGO = 7788
WHERE NOME_FUNCIONARIO = 'GUSTAVO';

UPDATE FUNCIONARIO
SET CODIGO = 7651
WHERE NOME_FUNCIONARIO = 'HELENA';

UPDATE FUNCIONARIO
SET CODIGO = 7423
WHERE NOME_FUNCIONARIO = 'IVO';

UPDATE FUNCIONARIO
SET CODIGO = 7876
WHERE NOME_FUNCIONARIO = 'JULIANA';

UPDATE FUNCIONARIO
SET CODIGO = 7902
WHERE NOME_FUNCIONARIO = 'KLEBER';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('03/01/2020', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'BRUNA';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('25/12/2011', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'JESSICA';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('05/06/2013', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'LUIZ';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('10/10/2024', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'ALINE';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('30/10/2004', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'JONES';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('15/08/2017', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'ANA';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('10/01/2015', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'BRUNO';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('22/03/2018', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'CARLOS';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('30/11/2020', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'DANIELA';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('17/07/2019', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'EDUARDO';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('29/05/2021', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'FERNANDA';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('14/09/2018', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'GUSTAVO';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('05/10/2022', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'HELENA';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('28/11/2021', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'IVO';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('06/06/2023', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'JULIANA';

UPDATE FUNCIONARIO
SET DATA_ADMISSAO = TO_DATE('02/01/2020', 'DD/MM/YY')
WHERE NOME_FUNCIONARIO = 'KLEBER';


--- SELECT ---

-- SELECT = NOME DO CAMPO 
-- FROM = NOME DA TABELA
-- WHERE = CONDIÇÃO

--  1.Exibir a estrutura da tabela DEPT.

    SELECT * FROM DPTO;

--  2. Exibir todos os dados da tabela EMP.

    SELECT * FROM EMPRESA;

--  3. Exibir o nome, departamento e salários dos empregados da tabela EMP.
-- As letras vão ser o referêncial para o campo --
-- Join vai ser utilizado para linkar as tabelas, e trazer as informações conforme o ID do DPTO --

    SELECT 
        F.NOME_FUNCIONARIO, 
        D.NOME_DPTO, 
        F.SALARIO
    FROM 
        FUNCIONARIO F
    JOIN 
        DPTO D ON F.ID_DPTO = D.ID_DPTO;

--  4. Exibir todos os cargos da tabela EMP, sem repetição.

    SELECT CARGOS
    FROM EMPRESA;

--  5. Exibir todos os empregados com salário maior que 2000.

    SELECT 
        F.ID_FUNCIONARIO,
        F.SALARIO,
        F.NOME_FUNCIONARIO
    FROM
        FUNCIONARIO F
    WHERE
        F.SALARIO > 2000;


--  6. Selecionar nome, salário e comissão dos empregados que tenham salário menor que recebido como comissão.
    
    SELECT
        F.NOME_FUNCIONARIO,
        F.SALARIO,
        F.COMISSAO
    FROM
        FUNCIONARIO F
    WHERE
        F.SALARIO < F.COMISSAO;

--  7. Na linguagem SQL a cláusula select é usada para relacionar os atributos desejados no resultado de uma consulta. A palavra chave que podemos inserir após a cláusula select para forçar a eliminação de duplicidade no resultado de uma consulta é:
        
    --  a) distinct        

--  8. Selecionar todos os empregados com salário entre 1000 e 1500.
    
    SELECT 
        F.NOME_FUNCIONARIO,
        F.SALARIO
    FROM
        FUNCIONARIO F
    WHERE
        F.SALARIO BETWEEN 1000 AND 1500;


--  9. Exibir todos os empregados com os códigos 7902, 7788 e 7876.

    SELECT
        F.NOME_FUNCIONARIO,
        F.CODIGO
    FROM
        FUNCIONARIO F
    WHERE
        F.CODIGO IN (7902,7788,7876);

        SELECT * FROM FUNCIONARIO;

--  10. Selecionar todos os empregados que não sejam Clerk, Manager ou Analyst.

    SELECT
        F.NOME_FUNCIONARIO,
        E.CARGOS
    FROM
        FUNCIONARIO F
    JOIN
        EMPRESA E ON F.ID_EMP = E.ID_EMP
    WHERE
        E.CARGOS NOT IN ('CLERK', 'MANAGER', 'ANALYST');

--  11. Selecione todos os empregados dos departamentos 10 e 20.

    SELECT
        F.NOME_FUNCIONARIO,
        D.ID_DPTO
    FROM 
        FUNCIONARIO F
    JOIN
        DPTO D ON F.ID_DPTO = D.ID_DPTO
    WHERE
        F.ID_DPTO IN (10, 20);


--  12. Exibir o salário e rendimento anual do funcionário Jones, considerando 14 salários por ano e bônus de 1200 por mês.

    SELECT 
        F.NOME_FUNCIONARIO,
        F.SALARIO,
        (F.SALARIO * 14) + (1200 * 12) AS RENDIMENTO_ANUAL
    FROM 
        FUNCIONARIO F
    WHERE 
        F.NOME_FUNCIONARIO = 'JONES';

--  13. Pesquise sobre a cláusula Order By. Em seguida, tente selecionar o nome, salário e data de admissão, com a listagem sendo ordenada pelo salário.
    
    SELECT
        F.NOME_FUNCIONARIO,
        F.SALARIO,
        F.DATA_ADMISSAO
    FROM 
        FUNCIONARIO F
    ORDER BY
        F.SALARIO DESC;

--  14. Selecionar os empregados que tenham o nome iniciado pela letra A;

    SELECT
        F.NOME_FUNCIONARIO
    FROM 
        FUNCIONARIO F
    WHERE
        F.NOME_FUNCIONARIO LIKE 'A%';

--  15. Exibir todos os empregados com a 2ª letra do nome igual a L.

    SELECT
        F.NOME_FUNCIONARIO
    FROM 
        FUNCIONARIO F
    WHERE
        F.NOME_FUNCIONARIO LIKE '_L%';

--  16. Exibir todos os países que tem o nome iniciado pela letra N (tabela: Countries)

    SELECT 
        C.NOME_COUNTRIES
    FROM
        COUNTRIES C
    WHERE
        C.NOME_COUNTRIES LIKE 'N%';

--  17. Selecionar todos os empregados que tenham cargo com a palavra ‘Manager’ (tabela: Jobs) 41

    SELECT 
        F.NOME_FUNCIONARIO,
        E.CARGOS
    FROM
        FUNCIONARIO F
    JOIN
       EMPRESA E ON F.ID_EMP = E.ID_EMP
    WHERE
        E.CARGOS IN 'MANAGER';
