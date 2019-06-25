const path = require('path')
const express = require('express')
const xss = require('xss')
const logger = require('../logger')
const Service = require('./service')

//ENV SET UP table and array properties
//ISSUE: issues if some properties are mandatory, and others are optional?
const table = 'user_challenge_entries'
const properties = ['pass', 'score', 'notes']

const router = express.Router()
const bodyParser = express.json()

//ENV SET UP properties and values
const serializeItem = item => ({
    id: item.id, 
    challenge_id: item.challenge_id, 
    users_id: item.users_id, 
    pass: item.pass, 
    score: item.score, 
    notes: xss(item.notes)
})

//better way to name this? 
router
  .route('/all-entries/:users_id')
  
  .get((req, res, next) => {
      const {users_id} = req.params
    Service.getAllUsersChallenges(req.app.get('db'), users_id)
      .then(item => {
          logger.info(`the params ${req.params}`)
        res.json(item.map(serializeItem))
      })
      .catch(next)
  })

router
  .route('/add')
  .post(bodyParser, (req, res, next) => {
    const entries = Object.entries(req.body)
    let newItem = {}
    entries.map(entry => {
      if(entry[0] === "id"){
        return 
      } else {
        newItem[entry[0]] = entry[1]
      }
    })

    for (const field of properties) {
      if (!newItem[field]) {
        logger.error(`${field} is required`)
        return res.status(400).send({
          error: { message: `'${field}' is required` }
        })
      }
    }

    Service.insertItem(
      req.app.get('db'),
      newItem
    )
      .then(item => {
        logger.info(`Table ${table}: Item with id ${item.id} created.`)
        res
          .status(201)
          .location(path.posix.join(req.originalUrl, `${item.id}`))
          .json(serializeItem(item))
      })
      .catch(next)
  })  
 
  
router
  .route('/:item_id')

  .all((req, res, next) => {
    const { item_id } = req.params
    Service.getById(req.app.get('db'), item_id)
      .then(item => {
        if (!item) {
          logger.error(`Table ${table} with id ${item_id} not found.`)
          return res.status(404).json({
            error: { message: `Table ${table}: Item Not Found` }
          })
        }
        res.item = item
        next()
      })
      .catch(next)

  })

  .get((req, res) => {
    res.json(serializeItem(res.item))
  })

  .delete((req, res, next) => {
    const {item_id } = req.params
    Service.deleteItem(
      req.app.get('db'),
      item_id
    )
      .then(numRowsAffected => {
        logger.info(`Table ${table}: with id ${item_id} deleted.`)
        res.status(204).end()
      })
      .catch(next)
  })

  .patch(bodyParser, (req, res, next) => {
    let updatedFields = {}
    Object.entries(req.body).map(entry => {
      updatedFields[entry[0]] = entry[1]
    })

    let updatedItem = {}
    properties.forEach(prop => {
      updatedItem[prop] = updatedFields[prop]
    })


    const numberOfValues = Object.values(updatedItem).filter(Boolean).length
    if (numberOfValues === 0) {
      logger.error(`Invalid update without required fields ${numberOfValues}`)
      return res.status(400).json({
        error: {
          message: `Request body must contain either ${properties}`
        }
      })
    }

    // const error = getBookmarkValidationError(bookmarkToUpdate)

    // if (error) return res.status(400).send(error)

    Service.updateItem(
      req.app.get('db'),
      req.params.item_id,
      updatedItem
    )
      .then(numRowsAffected => {
        res.status(204).end()
      })
      .catch(next)
  })

module.exports = router





