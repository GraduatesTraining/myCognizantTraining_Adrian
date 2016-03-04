###global describe, beforeEach, it, browser, expect ###
'use strict'


ServicesPagePo = require './services.po'

describe 'Services page', ->
  servicesPage = undefined

  beforeEach ->
    servicesPage = new ServicesPagePo
    browser.get '/#/services'

  it 'should say ServicesCtrl', ->
    expect(servicesPage.heading.getText()).toEqual 'services'
    expect(servicesPage.text.getText()).toEqual 'ServicesCtrl'
