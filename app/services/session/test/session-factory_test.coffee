###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'Session', ->
  factory = undefined

  beforeEach module 'services'

  beforeEach inject (Session) ->
    factory = Session

  it 'should have someValue be Session', ->
    expect(factory.someValue).toEqual 'Session'

  it 'should have someMethod return Session', ->
    expect(factory.someMethod()).toEqual 'Session'
