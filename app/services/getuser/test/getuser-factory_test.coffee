###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'Getuser', ->
  factory = undefined

  beforeEach module 'myCognizantTrainingAdrian'

  beforeEach inject (Getuser) ->
    factory = Getuser

  it 'should have someValue be Getuser', ->
    expect(factory.someValue).toEqual 'Getuser'

  it 'should have someMethod return Getuser', ->
    expect(factory.someMethod()).toEqual 'Getuser'
