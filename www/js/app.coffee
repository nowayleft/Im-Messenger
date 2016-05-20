
'use strict'

app = angular.module 'messenger', [
  'ionic'
  ]

# Run
app.run [
  '$ionicPlatform'
  ($ionicPlatform)->
    $ionicPlatform.ready ->
      if window.cordova && window.cordova.plugins && window.cordova.plugins.Keyboard
        cordova.plugins.Keyboard.hideKeyBoardAccessoryBar true
        cordova.plugins.Keyboard.disableScroll true
      if window.StatusBar
        StatusBar.styleDefault()
  ]

# Config
app.config [
  '$stateProvider'
  '$urlRouterProvider'
  ($stateProvider, $urlRouterProvider)->

    $stateProvider
      .state 'signin',
        url: '/signin'
        templateUrl: 'templates/signin.html'
        controller: 'SigninController'

    $urlRouterProvider.otherwise '/signin'
  ]
