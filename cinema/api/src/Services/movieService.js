import database from '../Repository/connection.js'; 


async function createMovie(name, year, duration, idDirector, idGender){
  const sql = 'insert into filme(nome_filme, ano_lancamento, duracao, FK_id_diretor, FK_id_genero) values(?, ?, ?, ?, ?)';
  const dados = [name, year, duration, idDirector, idGender];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
 
}



async function updateMovie(name, year, duration, idDirector, idGender, idMovie){
  const sql = 'update into filme set nome_filme = ?, ano_lancamento = ?, duracao = ?, FK_id_diretor = ?, FK_id_genero where id_filme = ?';
  const dados = [name, year, duration, idDirector, idGender, idMovie];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
}

export default {updateMovie, createMovie};