# Inserindo os dados para alimentar o banco

INSERT INTO Usuario(nome_usuario, email_usuario, senha, tipo_usuario)
	VALUES('Paulo', 'paulin@gmail.com', 'Xuxu(y)', 'Admin'),
		('Ronaldo','ronirustico@gmail.com','Pork@1mund@','Comum'),
        ('Gustavo', 'guga@gmail.com', 'L0kur4', 'Comum'),
		('Deomedersi','shreka@gmail.com','F10n4!','Comum');
        
     #SELECT * FROM Usuario;

INSERT INTO Ator(nome_ator, sexo, dt_nascimento)
	VALUES('Andrew Garfield', 'M', '1983/08/20'),
    ('Sandra Bullock', 'F', '1964/06/26'),
    ('Will Smith', 'M', '1968/09/25'),
    ('Harrison Ford', 'M', '1942/07/13'),
    ('Hugh Jackman', 'M', '1968/10/12'),
	('Angelina Jolie', 'F', '1975/06/04'),
    ('Keanu Reeves', 'M', '1964/09/02'),
    ('Jennifer Lawrence', 'F', '1990/08/15'),
    ('Sylvester Stallone', 'M', '1946/07/06'),
    ('James Mcavoy', 'M', '1951/04/21'),
    ('Brad Pitty', 'M', '1967/12/18'),
    ('Leonardo Dicaprio', 'M', '1974/11/11'),
    ('Vin Diesel', 'M', '1967/07/18'),
    ('Johnny Depp', 'M', '1963/06/09'),
    ('Robin Williams', 'M','1951/07/21'),
    ('Robert Downey Jr.', 'M', '1965/04/04'),
    ('Patrick Stewart', 'M', '1940/07/13'),
    ('Sandra Bullock', 'F', '1964/07/26'),
    ('Jackie Chan', 'M', '1954/04/07'),
    ('Jennifer Aniston', 'F', '1969/02/11'),
    ('Jim Carey', 'F', '1962/01/17'),
    ('Scarlett Johanson', 'F', '1986/11/22'),
    ('Megan Fox', 'F', '1986/05/16'),
    ('Ben Stiller', 'F', '1965/11/30'),
    ('Emma Stone', 'F', '1988/11/06');

	#SELECT * FROM Ator;
    
INSERT INTO Diretor (Nome_diretor, Nacionalidade, Dt_nascimento, sexo) 
		VALUES('Steven Spielberg', 'Estados Unidos', '1946/12/18','M'),
        ('James Cameron', 'Canadá', '1954/08/16', 'M'),
        ('José Padilha', 'Brasil', '1967/08/01', 'M'),
        ('George Lucas', 'Estados Unidos', '1944/05/14', 'M'),
        ('Alan Rickman', 'Inglaterra', '1946/02/21', 'M'),
        ('Fernando Meireles', 'Brasil', '1965/11/09', 'M');
	
    #SELECT * FROM Diretor;
    	
INSERT INTO Genero (Genero) 
		VALUES('Terror'),
        ('Ação'),
        ('Comedia'),
        ('Drama'),
        ('Suspense'),
        ('Ficção'),
        ('Romance'),
        ('Animação');
        
	#SELECT * FROM Genero;
    
INSERT INTO Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor)
	VALUES('Viva: A vida é uma festa','2017','105','8','5'),
    ('Logan','2017','137','2','1'),
    ('Um sonho de liberdade','1995','145','4','5'),
    ('Matrix','1999','150','6','1'),
    ('Jumanji','1996','104','3','6'),
    ('Cidade de Deus','2002','135','2','3'),
    ('O resgate do soldado Ryan','1998','170','2','6'),
    ('Extraordinário','2017','113','4','5'),
    ('O poderoso chefão','1972','178','2','2'),
    ('Forrest Gump','1994','142','7','1'),
    ('Truque de mestre','2013','125','2','4'),
    ('Fragmentado','2017','117','4','6'),
    ('Avatar','2009','162','6','2'),
    ('O preço do amanhã','2011','109','2','3'),
    ('O Senhor dos anéis: O retorno do Rei','2003','200','6','5'),
    ('Toy Story','1995','141','8','2'),
    ('Star wars: Os últimos jedi','2017','152','6','4'),
    ('O menino do pijama listrado','2008','94','4','1'),
    ('O lobo de Wall Street','2013','181','4','6'),
    ('A hora do rush','1998','98','3','5'),
    ('Piratas do caribe - Maldição do Perola Negra','2003','143','2','4'),
    ('Passageiros','2016','116','2','1'),
    ('Beleza oculta','2016','97','4','2'),
    ('It - A coisa','2017','134','1','3'),
    ('Rocky V','1990','111','4','4'),
    ('Titanic','1997','195','7','4'),
    ('Vingadores 4','2019','150','2','2'),
    ('Velozes e Furiosos 8','2017','136','2','6'),
    ('Transformers','2007','150','2','4'),
    ('Ilha do medo','2010','139','5','1');
    
    #SELECT * FROM Filme;