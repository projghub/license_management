var eventsApp = angular.module("eventsApp", ['ngResource']);

/*
 * eventsApp.factory("Event", function($resource) {
  var Event;

  Event = $resource("/events/:id", {id: "@id"}, {
    update: {method: "PUT"},
    destroy: {method: "DELETE"}
  });

  Event.prototype.destroy = function(callback) {
    Event.remove({id: this.id}, callback);
  };

  return Event;
});  
*/

function EventsCtrl($scope) {
  $scope.events = [
    { name: "Created"}
  ];

  $scope.create = function() {
    $scope.events.push($scope.newEvent);
    $scope.newEvent = {};
  }

  $scope.destroy = function() {

    console.log(this.event);
    $scope.events = $scope.events.splice(this.event, 1);

    /*
    var destroy_confirm, original;
    destroy_confirm = confirm("Are you sure?");
    if (destroy_confirm) {
      original = this.event;
      console.log(original);
      this.event.destroy(function() {
        return $scope.events = _.without($scope.events, original);
      });
    }
    */
  };
};
