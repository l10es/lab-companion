// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require jquery_ujs
//= require materialize
//= require materialize-sprockets
//= require_tree .
$(document).ready(function(){
  $('.sidenav').sidenav();
});
$(document).ready(function(){
  $('.parallax').parallax();
});
$(document).ready(function(){
  $('.tooltipped').tooltip();
});
$(document).ready(function(){
  $('select').formSelect();
});
$('#textarea1').val('New Text');
M.textareaAutoResize($('#textarea1'));
$(document).ready(function(){
  $('.fixed-action-btn').floatingActionButton();
});
document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.fixed-action-btn');
  var instances = M.FloatingActionButton.init(elems, {
    direction: 'top',
    hoverEnabled: false
  });
});