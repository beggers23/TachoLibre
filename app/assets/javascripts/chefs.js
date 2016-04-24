// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


function orderStyles(){

  var form = $('form');
  for(var i=0;i<form.length;i++){

    var button = form[i].children
    for(var j=0;j<button.length;i++){

      var order = button[j]
      $(order).removeClass();

      $(order).addClass('btn order red darken-'+i );
    }
  }
}
