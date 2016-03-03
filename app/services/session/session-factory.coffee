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
    if !idUser
      $state.go 'home'
    else
      users = localStorageService.get 'users'
      for u,i in users
        if u.id is idUser
          pos = i
      user = users[pos]
      name = user.name
      surname = user.surname
      $rootScope.username = name + ' ' + surname
