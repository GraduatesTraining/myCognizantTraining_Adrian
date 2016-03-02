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
    auth = @Login.login(user,password,@$state)
    @loginError = !auth
  register: (user,password,name,surname) ->
    reg = @Register.register(user,password,name,surname,@$state)
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
