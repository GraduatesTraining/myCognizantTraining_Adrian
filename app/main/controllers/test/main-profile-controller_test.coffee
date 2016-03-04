###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'MainProfileCtrl', ->
  ctrl = undefined

  beforeEach module 'main'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'MainProfileCtrl'

  it 'should have ctrlName as MainProfileCtrl', ->
    expect(ctrl.ctrlName).toEqual 'MainProfileCtrl'

