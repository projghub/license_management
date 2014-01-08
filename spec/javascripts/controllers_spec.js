describe('Central Management controllers', function() {
  beforeEach(module('CentralManagementApp'));

  describe('ProductVersionIndexController', function() {
    it('should set product versions to an empty array', inject(function($controller) {
      var scope = {};
      var ctrl = $controller('ProductVersionIndexController', { $scope: scope });

      expect(scope.product_versions.length).toBe(0);
    }));
  });
});
