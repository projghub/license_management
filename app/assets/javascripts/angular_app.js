var CentralManagementApp = angular.module('CentralManagementApp', ['ngRoute']);

CentralManagementApp.config(['$routeProvider', function($routeProvider) {
  $routeProvider.
  when('/product_versions', {
    templateUrl: '../templates/product_versions/index.html',
    controller: 'ProductVersionIndexController'
  }).
  otherwise({
    templateUrl: '../templates/home.html',
    controller: 'HomeController'
  });
}]);

CentralManagementApp.controller('HomeController', function($scope) {
  $scope.product_versions = [
    { name: 'Whitney' },
    { name: 'Pieces' }
  ];
});

CentralManagementApp.controller('ProductVersionIndexController', ['$scope', '$location', '$http', function($scope, $location, $http) {
  $scope.product_versions = [];
  $http.get('./product_versions.json').success(function(data) {
    $scope.product_versions = data;
  });

  $scope.viewProductVersion = function(id) {
    $location.url("/product_versions/" + id);
  }
}]);
