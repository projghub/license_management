//ProductVersion
var productVerionServices = angular.module('productVerionServices', ['ngResource']);

productVerionServices.factory('ProductVersion', ['$resource', function($resource) {
  return $resource('/product_versions/:id.json',
    { id: '@id' },
    {
      create: { method: 'POST' },
      update: { method: 'PUT' }
    });
}]);




var CentralManagementApp = angular.module('CentralManagementApp', ['ngRoute', 'productVerionServices']);

CentralManagementApp.config(['$routeProvider', function($routeProvider) {
  $routeProvider.
    when('/product_versions', {
      templateUrl: '../templates/product_versions/index.html',
      controller: 'ProductVersionIndexController'
    }).
    when('/product_versions/new', {
      templateUrl: '../templates/product_versions/edit.html',
      controller: 'ProductVersionEditController'
    }).
    when('/product_versions/:id/edit', {
      templateUrl: '../templates/product_versions/edit.html',
      controller: 'ProductVersionEditController'
    }).
    when('/product_versions/:id', {
      templateUrl: '../templates/product_versions/show.html',
      controller: 'ProductVersionShowController'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeController'
    });
}]);





CentralManagementApp.controller('HomeController', ['$scope', 'ProductVersion', function($scope, ProductVersion) {
  $scope.product_versions = ProductVersion.query();
}]);


CentralManagementApp.controller('ProductVersionIndexController', ['$scope', '$location', '$http', 'ProductVersion', function($scope, $location, $http, ProductVersion) {

  $scope.product_versions = ProductVersion.query();

  $scope.addProductVersion = function() {
    var product_version = ProductVersion.save($scope.newProductVersion);

  }

  $scope.showProductVersion = function(id) {
    $location.url("/product_versions/" + id);
  }

  $scope.editProductVersion = function(product_version) {
    $scope.opts = ['on', 'off'];

    if (event === 'new') {
      $scope.newProductVersion = true;
      $scope.product_version = { name: '' }
    } else {
      $scope.newProductVersion = false;
      $scope.product_version = product_version;
    }
  }
}]);

CentralManagementApp.controller('ProductVersionEditController', ['$scope', '$location', 'ProductVersion', function($scope, $location, ProductVersion) {
  $scope.save = function() {
    var _product_version = new ProductVersion();
    _product_version.name = $scope.product_version.name;

    _product_version.$save(function success() {
      console.log("Successfully created Product Version");
      $location.url("/product_versions");
    }, function error(repsonse) {
      console.log("Failed creating Product Version");
    });
  }
}]);

CentralManagementApp.controller('ProductVersionShowController', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
  $http.get('/product_versions/' + $routeParams.id + '.json').success(function(data) {
    $scope.product_version = data;
  });
}]);
