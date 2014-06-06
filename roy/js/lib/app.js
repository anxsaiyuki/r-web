var app = angular.module('app-test',[]);

app.directive("header", function() {
  return {
    restrict: "E",
    replace: true,
    templateUrl: "/widget/header.html"
  };
});
app.directive("banner", function() {
  return {
    restrict: "E",
    replace: true,
    templateUrl: "/widget/banner.html"
  };
});
app.directive("menu", function() {
  return {
    restrict: "E",
    replace: true,
    templateUrl: "/widget/menu.html"
  };
});
app.directive("footer", function() {
  return {
    restrict: "E",
    replace: true,
    templateUrl: "/widget/footer.html"
  };
});

