'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainCtrl

 # @description

###
class MainCtrl
  @$inject = ['Session','localStorageService']
  constructor: (@Session,@localStorageService) ->
    @ctrlName = 'MainCtrl'

angular
  .module('main')
  .controller 'MainCtrl', MainCtrl
  