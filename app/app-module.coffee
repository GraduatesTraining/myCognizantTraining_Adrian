'use strict'

###* @ngdoc object
 # @name myCognizantTrainingAdrian
 # @description

###
angular
  .module 'myCognizantTrainingAdrian', [
    'ngMaterial',
    'ui.router',
    'home',
    'LocalStorageModule',
    'main',
    'services'
  ]
  .config ($mdThemingProvider) ->
    $mdThemingProvider.theme 'default'
      .primaryPalette 'grey'
  .config ($mdIconProvider) ->
    $mdIconProvider.defaultIconSet 'images/icons/mdi.svg'
