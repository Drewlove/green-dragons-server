/*
FEATURES
*Admin, viewing all students, should be able to sort by: 
level, age, dragon bucks, alphabetical
*/

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
const users_router = require('./users/router')
const challenges_router=require('./challenges/router')
app.use('/api/users/', users_router)
app.use('/api/challenges/', challenges_router)

app.use(errorHandler)

module.exports = app
