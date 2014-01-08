module.exports = function(config) {
  config.set({
    basePath: '../../',

    frameworks: ['jasmine'],

    autoWatch: true,

    files: [
      'app/assets/javascripts/angular.js',
      'app/assets/javascripts/angular-mocks.js',
      'app/assets/javascripts/angular_app.js',
      'spec/javascripts/*_spec.js'
    ]
  });
};
