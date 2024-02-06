import { pg_passwd } from "./secrets.js"
import knex_module from "knex"
const knex = knex_module({
  client: 'pg', version: '8.6',
  connection: {
    host: '127.0.0.1',
    user: "postgres",
    password: pg_passwd,
    database: 'knex-test'
  }
})

import { render as ejs_render } from "ejs";

main()
async function main() {
  const rows = await knex
    .from('newtable')
    .select('column1', 'column2')
  //console.log(rows)

  //let ejs = require('ejs');
  //import {render as ejs_render} from "ejs";
  //
  //let people = ['geddy', 'neil', 'alex'];
  //let html = ejs_render('<%= people.join(", "); %>', { people: people });
  //console.log(html);

  let template = `<ul>
  <% for(let item of items) { %>
    <li>
      <strong><%= item.column1 %></strong>: <%= item.column2 %>
    </li>
  <% } %>
</ul>`
  console.log(ejs_render(template, { items: rows }))

  await knex.destroy()
}
