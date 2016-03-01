'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainCtrl

 # @description

###
class MainCtrl
  @$inject = ['localStorageService','$state']
  constructor: (localStorageService,$state) ->
    @ctrlName = 'MainCtrl'
    idUser = localStorageService.get('session')
    if !idUser
      $state.go('home')

angular
  .module('main')
  .controller 'MainCtrl', MainCtrl
