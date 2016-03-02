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
    'main'
  ]
  .config ($mdThemingProvider) ->
    $mdThemingProvider.theme('default')
      .primaryPalette('grey')
      return
  .config ($mdIconProvider) ->
    $mdIconProvider.defaultIconSet 'images/icons/mdi.svg'
    return
  