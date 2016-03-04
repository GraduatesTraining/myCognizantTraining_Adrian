###global describe, beforeEach, it, browser, expect ###
'use strict'


MainPagePo = require './main.po'

describe 'Main page', ->
  mainPage = undefined

  beforeEach ->
    mainPage = new MainPagePo
    browser.get '/#/main'

  it 'should say MainCtrl', ->
    expect(mainPage.heading.getText()).toEqual 'main'
    expect(mainPage.text.getText()).toEqual 'MainCtrl'
