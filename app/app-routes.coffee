'use strict'

angular
  .module 'myCognizantTrainingAdrian'
  .config ($urlRouterProvider) ->
    $urlRouterProvider.otherwise '/home'
