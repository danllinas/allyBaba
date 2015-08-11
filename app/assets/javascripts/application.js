// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require social-share-button
//= require jquery_ujs
//= require turbolinks
//= require_tree .


function ready() {
  $('.trigger').on("click", function() {
    $('.overlay').show();
    $('.modal').show('slow');
  });
  $('#login-trigger').on("click", function() {
    $('.overlay').hide();
    $('.modal').hide('slow');
  });
  $('.signup-button').on("click", function() {
    $('.overlay').hide();
    $('.modal').hide('slow');
  });
  $('.login-form').on('ajax:success', function (evt, data){
    location.reload();
  });
  $('.new_user').on('ajax:success', function(evt, data) {
    location.reload();
  });
  $('li').on('hover', function(){
    console.log("Hover working!");
    $(this).find('a').css('fontSize', '40px');
  });
};

$(document).on('ready page:load', ready)
// var main = function(){
//   $('.showView').hover(function(){
//     $('a').css("fontSize", "20px");
//   },
//   function(){
//     $('a').css("fontSize", "16px");
//   });
// }
//
// $(document).ready(main);


// $(document).ready(function() {
//  $('#type').on('mouseenter', function(){
//    $('#slider').slideToggle();
//  });
//
//  $('td').on('mouseenter', function(){
//    $(this).find('a').addClass('pulse');
//  });
//  $('td').on('mouseleave', function(){
//    $(this).find('a').removeClass('pulse');
//  });
//
//  setInterval(function(){
//    $('.shake').effect('shake', {direction: 'right'});
//  },
//  10000
//  );
// });
