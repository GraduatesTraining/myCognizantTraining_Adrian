'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:FormLoginCtrl

 # @description

###
class MainCtrl
  @$inject = ['Session','Logout']
  constructor: (@Session,@Logout) ->
    @ctrlName = 'HomeCtrl'
  logout: ->
    @Logout.logout()
    
angular
  .module('myCognizantTrainingAdrian')
  .controller 'MainCtrl', MainCtrl
