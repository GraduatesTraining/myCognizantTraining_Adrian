'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:FormLoginCtrl

 # @description

###
class FormLoginCtrl
  constructor: ->
    @ctrlName = 'FormLoginCtrl'
    
angular
  .module('myCognizantTrainingAdrian')
  .controller 'FormLoginCtrl', [
    'Login'
    'Register'
    'localStorageService'
    'UsersIni'
    (Login,Register,localStorageService,UsersIni) ->
      @loginError = false
      @registerError = false
      @regFields = false
      @login = (user,password) ->
        auth = Login.login(user,password)
        @loginError = !auth
        if auth is true
          alert "LOG SUCCESS"
        return
      @goRegister = ->
        @loginError = false
        @regFields = true
        return
      @goLogin = ->
        @regFields = false
        return
      @register = (user,password,name,surname) ->
        reg = Register.register(user,password,name,surname)
        @registerError = !reg
        if reg is true
          alert "REG SUCCESS"
        return
      return
  ]
