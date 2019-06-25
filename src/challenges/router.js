const path = require('path')
const express = require('express')
const xss = require('xss')
const logger = require('../logger')
const Service = require('./service')

//ENV SET UP table and array properties
//ISSUE: issues if some properties are mandatory, and others are optional?
const table = 'challenges'
const properties = ['pic_url',
'challenge_name', 'challenge_description', 'dragon_bucks']


const router = express.Router()
const bodyParser = express.json()

//ENV SET UP properties and values
const serializeItem = item => ({
    id: item.id, 
    pic_url: xss(item.pic_url), 
    community_type: xss(item.community_type), 
    challenge_name: xss(item.challenge_name), 
    challenge_description: xss(item.challenge_description), 
    number_type: xss(item.number_type), 
    number_to_pass: xss(item.number_to_pass), 
    dragon_bucks: item.dragon_bucks
})

router
  .route('/')
  
  .get((req, res, next) => {
    Service.getAll(req.app.get('db'))
      .then(item => {
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