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
    else
      users = localStorageService.get('users')
      for u,i in users
        if u.id is idUser
          pos = i
      user = users[pos]
      name = user.name
      surname = user.surname
      @username = name + ' ' + surname

angular
  .module('main')
  .controller 'MainCtrl', MainCtrl
  