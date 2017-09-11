// Also include jQuery above (Example uses 2.1.1)
var Loader = function () {    
  var loader = document.querySelector('.loader-container'),
      meter = document.querySelector('.meter'),
      meterload = document.querySelector('.meterload'),
      load = meterload.innerHTML,
      k, i = 1,
      counter = function () {
        if (load > 50) {
            meter.classList.remove('leftmeter');
          }
        
        if (i <= load) { 
          if (i <= 100) { 
            meter.style.width = i+"%";
          }
          meterload.innerHTML = i.toString();
          i++;
        } else {
          window.clearInterval(k);
        }
      };

	return {
  	init: function (options) {
      options = options || {};
      var time = options.time ? options.time : 0,
	        interval = time/100;
      
    	loader.classList.add('run');
      k = window.setInterval(counter, interval); 
      setTimeout(function () {        
      	loader.classList.add('done');
      }, time);
    },
  }
}();
 
Loader.init({
  	time: 1000
});