//ENV SET UP, change table name

const Service = {
  getAll(knex, table) {
    return knex.select('*').from(table)
  },
  getById(knex, table, id) {
    return knex.from(table).select('*').where('id', id).first()
  },
  insertItem(knex, table, newItem) {
    return knex
      .insert(newItem)
      .into(table)
      .returning('*')
      .then(rows => {
        return rows[0]
      })
  },
  deleteItem(knex, table, id) {
    return knex
    .from(table)
    .where({ id })
    .delete()
  },
  updateItem(knex, table, id, newFields) {
    return knex(table)
    .where({ id })
    .update(newFields)
  },
}

module.exports = Service
