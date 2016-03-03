'use strict'

###*
 # @ngdoc service
 # @name services.factory:Session

 # @description

###
angular
  .module 'services'
  .factory 'Session', (localStorageService,$state,$rootScope) ->
    idUser = localStorageService.get 'session'
    unless idUser
      $state.go 'home'
    else
      users = localStorageService.get 'users'
      for u,i in users
        pos = i if u.id is idUser
      user = users[pos]
      name = user.name
      surname = user.surname
      $rootScope.username = name + ' ' + surname
