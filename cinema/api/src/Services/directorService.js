import database from '../Repository/connection.js'; 


async function createDirector(name, country, date, gender){
  const sql = 'insert into diretor(nome_diretor, nacionalidade, dt_nascimento, sexo) values(?, ?, ?, ?)';
  const dados = [name, country, date, gender];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
 
}



async function updateDirector(name, country, date, gender, idDirector){
  const sql = 'update into filme set nome_diretor = ?, nacionalidade = ?, dt_nascimento = ?, sexo = ? where id_diretor = ?';
  const dados = [name, country, date, gender, idDirector];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
}

export default {updateDirector, createDirector};