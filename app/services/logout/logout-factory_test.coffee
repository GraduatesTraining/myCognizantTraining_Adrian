###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'Logout', ->
  factory = undefined

  beforeEach module 'services'

  beforeEach inject (Logout) ->
    factory = Logout

  it 'should have someValue be Logout', ->
    expect(factory.someValue).toEqual 'Logout'

  it 'should have someMethod return Logout', ->
    expect(factory.someMethod()).toEqual 'Logout'
