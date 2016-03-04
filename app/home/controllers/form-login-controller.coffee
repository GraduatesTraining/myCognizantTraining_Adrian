'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:FormLoginCtrl

 # @description

###
class HomeCtrl
  @$inject = ['Login','Register','UsersIni']
  @loginError = false
  @registerError = false
  @regFields = false
  constructor: (@Login,@Register,@UsersIni) ->
    @ctrlName = 'HomeCtrl'
  login: (user,password) ->
    auth = @Login.login user, password
    @loginError = !auth
  register: (user,password,name,surname) ->
    reg = @Register.register user, password, name, surname
    @registerError = !reg
  goRegister: ->
    @loginError = false
    @regFields = true
  goLogin: ->
    @registerError = false
    @regFields = false
    
angular
  .module('myCognizantTrainingAdrian')
  .controller 'HomeCtrl', HomeCtrl
