import express from 'express';
import mysql from 'mysql2/promise'
import cors from 'cors';

const app = express();
const db = mysql.createPool({
  user: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
  host: process.env.DB_HOST,
})

app.use(cors())

app.get('/getUrgentNews', async (_, res) => {
  const [rows] = await db.query('SELECT * FROM news');

  res.json(rows);
})

app.listen(process.env.PORT, () => {
  console.log(`Server running on port ` + process.env.PORT);
});

declare global {
  namespace NodeJS {
    interface ProcessEnv {
      readonly DB_USERNAME: string,
      readonly DB_PASSWORD: string,
      readonly DB_DATABASE: string,
      readonly DB_HOST: string,
      readonly PORT: string
    }
  }
}