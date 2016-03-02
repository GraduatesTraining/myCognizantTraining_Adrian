###global element, By###
'use strict'

class ServicesPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = ServicesPage
