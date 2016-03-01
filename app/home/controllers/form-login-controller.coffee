'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:FormLoginCtrl

 # @description

###
class HomeCtrl
  @$inject = ['Login','Register','localStorageService','UsersIni','$state']
  @loginError = false
  @registerError = false
  @regFields = false
  constructor: (@Login,@Register,@localStorageService,@UsersIni,@$state) ->
    @ctrlName = 'HomeCtrl'
  login: (user,password) ->
    @Login.login(user,password,@$state)
  register: (user,password,name,surname) ->
    @Register.register(user,password,name,surname,@$state)
  goRegister: ->
    @loginError = false
    @regFields = true
  goLogin: ->
    @registerError = false
    @regFields = false
    
angular
  .module('myCognizantTrainingAdrian')
  .controller 'HomeCtrl', HomeCtrl
