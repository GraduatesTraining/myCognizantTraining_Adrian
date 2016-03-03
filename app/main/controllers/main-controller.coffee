'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainCtrl

 # @description

###
class MainCtrl
  @$inject = ['Session','Logout']
  constructor: (@Session,@Logout) ->
    @ctrlName = 'MainCtrl'
  logout: ->
    @Logout.logout()

angular
  .module('main')
  .controller 'MainCtrl', MainCtrl
  