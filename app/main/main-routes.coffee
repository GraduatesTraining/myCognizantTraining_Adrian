'use strict'

angular
  .module 'main'
  .config ($stateProvider) ->
    $stateProvider
      .state 'main',
        url: '/main'
        templateUrl: 'main/main.tpl.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .state 'main.exams',
        url: '/exams'
        templateUrl: 'main/views/main-exams.tpl.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .state 'main.stats',
        url: '/stats'
        templateUrl: 'main/views/main-stats.tpl.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .state 'main.inbox',
        url: '/inbox'
        templateUrl: 'main/views/main-inbox.tpl.html'
        controller: 'MainInboxCtrl'
        controllerAs: 'inbox'
      .state 'main.profile',
        url: '/profile'
        templateUrl: 'main/views/main-profile.tpl.html'
        controller: 'MainProfileCtrl'
        controllerAs: 'profile'
