'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Register

 # @description

###
angular
  .module 'myCognizantTrainingAdrian'
  .factory 'Register', [
    'localStorageService'
    'UsersIni'
    (localStorageService,UsersIni) ->
      register: (user,password,name,surname,state) ->
        reg = true
        if !localStorageService.get('users')
          UsersIni.usersIni()
        users = localStorageService.get('users')
        for u in users
          if user is u.user
            reg = false
        if reg is true
          lastId = users[users.length - 1].id
          newId = lastId + 1
          newUser = {
            "id": newId
            "user": user
            "password": password
            "name": name
            "surname": surname
          }
          users.push(newUser)
          localStorageService.set('users',users)
        @registerError = !reg
        if reg is true
          localStorageService.set('session',newId)
          state.go('main')
  ]
