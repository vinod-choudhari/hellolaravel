[33mcommit b75d4c16ab962a685b7db03ddc76e91913c36311[m
Author: vinod-choudhari <vinod.choudhari@maximess.com>
Date:   Wed Jun 7 16:35:03 2017 +0530

    	modified:   Sample.php

[1mdiff --git a/Sample.php b/Sample.php[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m

[33mcommit 21dea1b1c04ddb2abc58524fc7d49d733fae3711[m
Author: vinodchoudhari-maximess <vinod.choudhari@maximess.com>
Date:   Wed Jun 7 15:43:22 2017 +0530

    Add files via upload

[1mdiff --git a/bootstrap.htm b/bootstrap.htm[m
[1mnew file mode 100644[m
[1mindex 0000000..41fa05a[m
[1m--- /dev/null[m
[1m+++ b/bootstrap.htm[m
[36m@@ -0,0 +1,82 @@[m
[32m+[m[32m<html>[m[41m[m
[32m+[m[32m<head>[m[41m[m
[32m+[m[32m  <meta charset="utf-8">[m[41m[m
[32m+[m[32m  <meta name="viewport" content="width=device-width, initial-scale=1">[m[41m[m
[32m+[m[32m  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">[m[41m[m
[32m+[m[32m  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>[m[41m[m
[32m+[m[32m  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>[m[41m[m
[32m+[m[32m  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>[m[41m[m
[32m+[m[32m  </head>[m[41m[m
[32m+[m[32m<body ng-app="mymodal">[m[41m[m
[32m+[m[32m<div ng-controller="MainCtrl" class="container">[m[41m[m
[32m+[m[32m  <h1>Modal example</h1>[m[41m[m
[32m+[m[32m  <button ng-click="toggleModal()" class="btn btn-default">Open modal</button>[m[41m[m
[32m+[m[41m    [m
[32m+[m[32m  <modal title="Login form" visible="showModal">[m[41m[m
[32m+[m[32m    <form role="form">[m[41m[m
[32m+[m[32m      <div class="form-group">[m[41m[m
[32m+[m[32m        <label for="email">Email address</label>[m[41m[m
[32m+[m[32m        <input type="email" class="form-control" id="email" placeholder="Enter email" />[m[41m[m
[32m+[m[32m      </div>[m[41m[m
[32m+[m[32m      <div class="form-group">[m[41m[m
[32m+[m[32m        <label for="password">Password</label>[m[41m[m
[32m+[m[32m        <input type="password" class="form-control" id="password" placeholder="Password" />[m[41m[m
[32m+[m[32m      </div>[m[41m[m
[32m+[m[32m      <button type="submit" class="btn btn-default">Submit</button>[m[41m[m
[32m+[m[32m    </form>[m[41m[m
[32m+[m[32m  </modal>[m[41m[m
[32m+[m[32m</div>[m[41m[m
[32m+[m[32m<script>[m[41m[m
[32m+[m[32mvar mymodal = angular.module('mymodal', []);[m[41m[m
[32m+[m[41m[m
[32m+[m[32mmymodal.controller('MainCtrl', function ($scope) {[m[41m[m
[32m+[m[32m    $scope.showModal = false;[m[41m[m
[32m+[m[32m    $scope.toggleModal = function(){[m[41m[m
[32m+[m[32m        $scope.showModal = !$scope.showModal;[m[41m[m
[32m+[m[32m    };[m[41m[m
[32m+[m[32m  });[m[41m[m
[32m+[m[41m[m
[32m+[m[32mmymodal.directive('modal', function () {[m[41m[m
[32m+[m[32m    return {[m[41m[m
[32m+[m[32m      template: '<div class="modal fade">' +[m[41m [m
[32m+[m[32m          '<div class="modal-dialog">' +[m[41m [m
[32m+[m[32m            '<div class="modal-content">' +[m[41m [m
[32m+[m[32m              '<div class="modal-header">' +[m[41m [m
[32m+[m[32m                '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>' +[m[41m [m
[32m+[m[32m                '<h4 class="modal-title">{{ title }}</h4>' +[m[41m [m
[32m+[m[32m              '</div>' +[m[41m [m
[32m+[m[32m              '<div class="modal-body" ng-transclude></div>' +[m[41m [m
[32m+[m[32m            '</div>' +[m[41m [m
[32m+[m[32m          '</div>' +[m[41m [m
[32m+[m[32m        '</div>',[m[41m[m
[32m+[m[32m      restrict: 'E',[m[41m[m
[32m+[m[32m      transclude: true,[m[41m[m
[32m+[m[32m      replace:true,[m[41m[m
[32m+[m[32m      scope:true,[m[41m[m
[32m+[m[32m      link: function postLink(scope, element, attrs) {[m[41m[m
[32m+[m[32m        scope.title = attrs.title;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        scope.$watch(attrs.visible, function(value){[m[41m[m
[32m+[m[32m          if(value == true)[m[41m[m
[32m+[m[32m            $(element).modal('show');[m[41m[m
[32m+[m[32m          else[m[41m[m
[32m+[m[32m            $(element).modal('hide');[m[41m[m
[32m+[m[32m        });[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        $(element).on('shown.bs.modal', function(){[m[41m[m
[32m+[m[32m          scope.$apply(function(){[m[41m[m
[32m+[m[32m            scope.$parent[attrs.visible] = true;[m[41m[m
[32m+[m[32m          });[m[41m[m
[32m+[m[32m        });[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        $(element).on('hidden.bs.modal', function(){[m[41m[m
[32m+[m[32m          scope.$apply(function(){[m[41m[m
[32m+[m[32m            scope.$parent[attrs.visible] = false;[m[41m[m
[32m+[m[32m          });[m[41m[m
[32m+[m[32m        });[m[41m[m
[32m+[m[32m      }[m[41m[m
[32m+[m[32m    };[m[41m[m
[32m+[m[32m  });[m[41m[m
[32m+[m[32m</script>[m[41m[m
[32m+[m[32m</body>[m[41m[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
