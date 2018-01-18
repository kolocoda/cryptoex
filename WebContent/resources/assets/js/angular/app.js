var app = angular.module('app', ['ngRoute','ngResource']);
app.config(function($routeProvider){
    $routeProvider
        .when('/dashboard',{
            templateUrl: 'profile',
            controller: 'dashboardController'
        })
        .when('/orders',{
            templateUrl: 'registration',
            controller: 'ordersController'
        })
        .when('/wallet',{
            templateUrl: 'resources/static/views/contactus.html',
            controller: 'walletController'
        })
        .when('/advertisement',{
            templateUrl: 'resources/static/views/contactus.html',
            controller: 'advertisementController'
        })
        .when('/settings',{
            templateUrl: 'resources/static/views/contactus.html',
            controller: 'settingsController'
        })
        .when('/messages',{
            templateUrl: 'resources/static/views/contactus.html',
            controller: 'messagesController'
        })
        .when('/referral',{
            templateUrl: 'resources/static/views/contactus.html',
            controller: 'referralController'
        })
        .otherwise(
            { redirectTo: '/'}
        );
});