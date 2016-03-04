###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'MainInboxCtrl', ->
  ctrl = undefined

  beforeEach module 'main'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'MainInboxCtrl'

  it 'should have ctrlName as MainInboxCtrl', ->
    expect(ctrl.ctrlName).toEqual 'MainInboxCtrl'

