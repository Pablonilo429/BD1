

SELECT * FROM funcionario WHERE Dnr='4' AND Salario < 40.000;



SELECT * FROM FUNCIONARIO WHERE LOCATE('SP',Endereco);


SELECT Pnome,Minicial,Unome,Endereco FROM funcionario WHERE Dnr ='5'; 


SELECT DISTINCT salario FROM funcionario;


SELECT Projnome FROM Projeto WHERE Dnum = '5' ORDER BY Projnome DESC; 


SELECT Dnome,cpf_gerente from departamento,localizacao_dep WHERE departamento.dnumero=localizacao_dep.Dnumero and locate('Santo André',localizacao_dep.Dlocal);



SELECT  e.Pnome funcionario_pnome,e.Unome funcionario_unome,
		 m.Pnome supervisor_pnome,m.Unome supervisor_unome
        FROM funcionario e 
        inner join funcionario m on (m.cpf=e.cpf_supervisor) or (m.cpf_supervisor='null' and e.cpf_supervisor='null')
        order by funcionario_pnome;


SELECT * FROM funcionario WHERE Cpf_supervisor = 'NULL';



SELECT Fcpf, COUNT(Fcpf) FROM dependente GROUP BY fcpf;



SELECT Pnome FROM funcionario inner join dependente on cpf=fcpf GROUP BY Pnome HAVING COUNT(Fcpf)>2 ;





