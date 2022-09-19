USE EMPRESA;

/* Questao 1 */

SELECT *  FROM funcionario WHERE Dnr='4' AND Salario < 40.000 INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer1.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


/* Questao 2 */

SELECT * FROM FUNCIONARIO WHERE LOCATE('SP',Endereco) INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer2.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

/* Questao 3 */

SELECT Pnome,Minicial,Unome,Endereco FROM funcionario WHERE Dnr ='5' INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer3.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'; 

/* Questao 4 */

SELECT DISTINCT salario FROM funcionario INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer4.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'; 

/* Questao 5 */

SELECT Projnome FROM Projeto WHERE Dnum = '5' ORDER BY Projnome INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer5.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'; 

/* Questao 6 */

SELECT Dnome,cpf_gerente from departamento,localizacoes_dep WHERE departamento.dnumero=localizacoes_dep.Dnumero and locate('Santo André',localizacoes_dep.Dlocal) INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer6.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

/* Questao 7 */

SELECT  e.Pnome funcionario_pnome,e.Unome funcionario_unome,
	m.Pnome supervisor_pnome,m.Unome supervisor_unome
        FROM funcionario e 
        inner join funcionario m on (m.cpf=e.cpf_supervisor) or (m.cpf_supervisor='null' and e.cpf_supervisor='null')
        order by funcionario_pnome
        INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer7.txt'
		FIELDS TERMINATED BY ','
		ENCLOSED BY '"'
		LINES TERMINATED BY '\n';

/* Questao 8 */

SELECT * FROM funcionario WHERE Cpf_supervisor = 'NULL' INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer8.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

/* Questao  9*/

SELECT Fcpf, COUNT(Fcpf) FROM dependente GROUP BY fcpf INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer9.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

/* Questao 10 */

SELECT Pnome FROM funcionario inner join dependente on cpf=fcpf GROUP BY Pnome HAVING COUNT(Fcpf)>2 INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer10.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

/*11- Exibir o número do departamento, o número de funcionários no departamento
e o salário médio do departamento, para cada departamento da empresa*/

SELECT Dnumero,count(cpf) numfuncionarios,avg(salario) media FROM departamento inner join funcionario on Dnumero=Dnr group by Dnumero INTO OUTFILE 'C:/projetos/BD1/matheus_pablo_resultados/matheus_pablo_resultados_exer11.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

