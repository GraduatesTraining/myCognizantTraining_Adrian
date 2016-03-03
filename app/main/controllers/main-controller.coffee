'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainCtrl

 # @description

###
class MainCtrl
  @$inject = ['Session','localStorageService','Logout']
  constructor: (@Session,@localStorageService,@Logout) ->
    @ctrlName = 'MainCtrl'
  logout: ->
    @Logout.logout()

angular
  .module('main')
  .controller 'MainCtrl', MainCtrl
  