describe('Home controllers', function() {
  beforeEach(module('CentralManagementApp'));

  describe('HomeController', function() {
    it('should crete "purchase orders" with 3 purchase orders', function() {
      var scope = {};
      var ctrl = $controller('HomeController', { $scope: scope });

      expect(scope.purchase_orders.length).toBe(3);
    });
  });
});
