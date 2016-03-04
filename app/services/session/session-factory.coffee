'use strict'

###*
 # @ngdoc service
 # @name services.factory:Session

 # @description

###
angular
  .module 'services'
  .factory 'Session', (Getuser,localStorageService,$state,$rootScope) ->
    idUser = localStorageService.get 'session'
    unless idUser
      $state.go 'home'
    else
      user = Getuser
      $rootScope.username = user.name + ' ' + user.surname
