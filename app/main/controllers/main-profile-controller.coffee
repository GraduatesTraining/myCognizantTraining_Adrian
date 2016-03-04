'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainProfileCtrl

 # @description

###
class MainProfileCtrl
  @$inject = ['Getuser']
  constructor: (@Getuser) ->
    @ctrlName = 'MainProfileCtrl'
    userinfo = @Getuser
    @user = userinfo.user
    @password = userinfo.password
    @name = userinfo.name
    @surname = userinfo.surname
angular
  .module('main')
  .controller 'MainProfileCtrl', MainProfileCtrl
