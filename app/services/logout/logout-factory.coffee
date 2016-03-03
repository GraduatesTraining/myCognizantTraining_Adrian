'use strict'

###*
 # @ngdoc service
 # @name services.factory:Logout

 # @description

###
angular
  .module 'services'
  .factory 'Logout', (localStorageService,$state) ->
    logout: ->
      localStorageService.remove 'session'
      $state.go 'home'
