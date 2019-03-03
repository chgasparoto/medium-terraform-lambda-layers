const moment = require('moment')
const Joi = require('joi')

exports.handler = async (event = {}) => {
  const { error, value } = Joi.validate(event, { date: Joi.date().required() })

  if (error) {
    throw new Error(error.message)
  }

  return moment(event.date).format('MMMM Do YYYY, h:mm:ss a')
}
