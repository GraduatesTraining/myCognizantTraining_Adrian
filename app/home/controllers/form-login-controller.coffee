'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:FormLoginCtrl

 # @description

###
class FormLoginCtrl
  @$inject = ['Login','Register','localStorageService','UsersIni']
  @loginError = false
  @registerError = false
  @regFields = false
  constructor: (@Login,@Register,@localStorageService,@UsersIni) ->
    @ctrlName = 'FormLoginCtrl'
  login: (user,password) ->
    auth = @Login.login(user,password)
    @loginError = !auth
    if auth is true
      alert "LOG SUCCESS"
  register: (user,password,name,surname) ->
    reg = @Register.register(user,password,name,surname)
    @registerError = !reg
    if reg is true
      alert "REG SUCCESS"
  goRegister: ->
    @loginError = false
    @regFields = true
  goLogin: ->
    @registerError = false
    @regFields = false
    
angular
  .module('myCognizantTrainingAdrian')
  .controller 'FormLoginCtrl', FormLoginCtrl
