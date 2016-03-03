'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Login

 # @description

###
angular
  .module 'myCognizantTrainingAdrian'
  .factory 'Login',
    (localStorageService,UsersIni,$state) ->
      login: (user,password) ->
        if !localStorageService.get('users')
          UsersIni.usersIni()
        users = localStorageService.get('users')
        for u in users
          if user is u.user and password is u.password
            auth = true
            idUser = u.id
            break
        if auth is true
          localStorageService.set('session',idUser)
          $state.go('main')
        auth
        