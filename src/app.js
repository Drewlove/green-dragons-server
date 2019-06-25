require('dotenv').config()
const express = require('express')
const morgan = require('morgan')
const cors = require('cors')
const helmet = require('helmet')
const { NODE_ENV } = require('./config')
const validateBearerToken = require('./validate-bearer-token')
const errorHandler = require('./error-handler')
const app = express()

app.use(morgan((NODE_ENV === 'production') ? 'tiny' : 'common', {
  skip: () => NODE_ENV === 'test'
}))
app.use(cors())
app.use(helmet())
app.use(validateBearerToken)

//ENV SET UP router and URL
const user_challenge_entries_router = require('./user_challenge_entries/router')
const dry_router = require('./dry/router')

app.use('/api/', dry_router)
app.use('/api/user_challenge_entries/', user_challenge_entries_router)


app.use(errorHandler)

module.exports = app

//try CRUD for users
//add user, edit user, delete user

//THEN, work with viewing user challenges,
//fetch the right table with the call below
// THIS IS THE QUERY THAT RUNS WHEN USER VIEWS ALL CHALLENGES OF
// A SPECIFIC STUDENT

// SELECT * FROM challenges 
// INNER JOIN user_challenge_entries ON 
// (challenges.id = user_challenge_entries.challenge_id)
// WHERE user_challenge_entries.users_id = 1;
