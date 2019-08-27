//Refactor, getAll and join could be dried up, lots of repetitive code

const Service = { 
  dynamicGet(knex, query, bindings){
    return knex.raw(query, bindings)
  },
  getById(knex, table, id) {
    return knex.from(table).select('*').where(`${table}_id`, id).first()
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
