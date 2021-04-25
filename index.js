import {pg_passwd} from "./secrets.js"
import knex_module from "knex"
const knex = knex_module({
  client: 'pg', version: '8.6',
  connection: {
    host : '127.0.0.1',
    user : "postgres",
    password : pg_passwd,
    database : 'knex-test'
  }
})
main()
async function main(){
    const rows = await knex
    .from('newtable')
    .select('column1', 'column2')
    console.log(rows)
    await knex.destroy()
}
