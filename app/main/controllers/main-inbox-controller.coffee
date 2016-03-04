'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainInboxCtrl

 # @description

###
class MainInboxCtrl
  constructor: ->
    @ctrlName = 'MainInboxCtrl'
    
angular
  .module('main')
  .controller 'MainInboxCtrl', MainInboxCtrl
