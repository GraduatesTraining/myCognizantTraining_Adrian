'use strict'

###*
 # @ngdoc service
 # @name myCognizantTrainingAdrian.factory:Getuser

 # @description

###
angular
  .module 'services'
  .factory 'Getuser', (localStorageService) ->
    iduser = localStorageService.get 'session'
    users = localStorageService.get 'users'
    for u,i in users
      pos = i if u.id is iduser
    user = users[pos]
    user
