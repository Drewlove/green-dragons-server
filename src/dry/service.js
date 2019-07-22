//Refactor, getAll and join could be dried up, lots of repetitive code

const Service = { 
  dynamicGet(knex, query, bindings){
    return knex.raw(query, bindings)
  },
  getById(knex, table, id) {
    return knex.from(table).select('*').where(`${table}_id`, id).first()
  },
  getItemTemplate(knex, table){
    return knex.select('column_name')
    .from('information_schema.columns')
    .where('table_name', table)
  },
  getAll(knex, table) {
    return knex.select('*').from(table)
  }, 
  getAllJoinOneTable(knex, fromTable, joinStatement ){
    return knex.select('*')
    .from(fromTable)
    .joinRaw(joinStatement)
  },  
  getAllJoinTwoTables(knex, fromTable, joinStatementOne, joinStatementTwo){
    return knex.from(fromTable)
    .joinRaw(joinStatementOne)
    .joinRaw(joinStatementTwo)
  },
    getAllJoinTwoTablesById(knex, fromTable, joinStatementOne, joinStatementTwo, whereStatement){
    return knex.from(fromTable)
    .joinRaw(joinStatementOne)
    .joinRaw(joinStatementTwo)
    .whereRaw(whereStatement)
  },
  insertRow(knex, table, newRow) {
    return knex
      .insert(newRow)
      .into(table)
      .returning('*')
      .then(rows => {
        return rows[0]
      })
  },
  deleteRow(knex, table, id) {
    return knex
    .from(table)
    .where(`${table}_id`, id)
    .delete()
  },
  updateRow(knex, table, id, newFields) {
    return knex(table)
    .where(`${table}_id`, id)
    .update(newFields)
  },
}

module.exports = Service
