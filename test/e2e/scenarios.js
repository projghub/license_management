describe('CentralManagementApp', function() {
  describe('Home view', function() {
    beforeEach(function() {
      browser().navigateTo('/app/index.html');
    });

    it('should filter the purchase orders as the user types into the search box', function() {
      expect(repeater('.purhcase_orders li').count()).toBe(3);

      input('query').enter('1');
      expect(repeater('.purhcase_orders li').count()).toBe(1);

      input('query').enter('PO');
      expect(repeater('.purhcase_orders li').count()).toBe(3);
    });

    it('should display the current filter value within an element with id "status"', function() {
      expect(element('#status').text()).toMatch(/Current filter: \s*$/);

      input('query').enter('1');

      expect(element('#status').text()).toMatch(/Current filter: 1\s*$/);
      using('#status').expect(binding('query')).toBe('1');
    });
  });
});
