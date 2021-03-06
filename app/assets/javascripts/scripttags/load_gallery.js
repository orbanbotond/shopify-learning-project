(function(){
  var loadScript = function(url, callback){
    console.debug('Loading: ' + url);
    var script = document.createElement("script")
    script.type = "text/javascript";
 
    if (script.readyState){  //IE
      script.onreadystatechange = function(){
        if (script.readyState == "loaded" ||
              script.readyState == "complete"){
          script.onreadystatechange = null;
          callback();
        }
      };
    } else {  //Others
      script.onload = function(){
        callback();
      };
    }
 
    script.src = url;
    document.getElementsByTagName("head")[0].appendChild(script);
    /* JavaScript that will load the jQuery library on Google's CDN.
       We recommend this code: http://snipplr.com/view/18756/loadscript/.
       Once the jQuery library is loaded, the function passed as argument,
       callback, will be executed. */
  };

  var myAppJavaScript = function($){
    console.debug('jquery loaded...' + $.fn.jquery);
    console.debug('$ Version ' + $.fn.jquery);
    // console.debug('Window jquery Version:' + window.$.fn.jquery);

    window.jQuery = $;

    loadScript('http://e711ec89.ngrok.io/assets/jquery.slides.min.js', function(){
      console.debug('jquery: ' + jQuery);
      console.debug('camera loaded...');
      console.debug('starting  to process the gallery...');

      $.ajax({
        url: '/a/gallery',
        dataType: 'json'
      }).done(function(data) {
        console.debug(data);

        if($('.toptal-product-slider').length != 0){
          $('.toptal-product-slider').append("<div class='slides'><a href='#' class='slidesjs-previous slidesjs-navigation'><i class='icon-chevron-left icon-large' /></a><a href='#' class='slidesjs-next slidesjs-navigation'><i class='icon-chevron-right icon-large' /></a> </div>");
          $slides = $('.slides', '.toptal-product-slider');

          $(data).each(function( index, element ) {
            $slides.prepend("<img src='" + element.image_url + "' alt='" + element.name + "' >");
          });

          $('.slides', '.toptal-product-slider').slidesjs({
            width: 500,
            height: 328,
            navigation: false
          });
        }
      });
    });

    // var products_json   = #{raw @current_shop.shopify_products.to_json};
    // console.debug(products_json);

    if($('.toptal-product-slider').length != 0){
      console.debug('Container Div is detected.');
    }
  };
  if ((typeof jQuery === 'undefined') || (parseFloat(jQuery.fn.jquery) < 3.2)) {
    loadScript('https://code.jquery.com/jquery-3.2.1.min.js', function(){
      jQuery32 = jQuery.noConflict(true);
      myAppJavaScript(jQuery32);
    });
  } else {
    myAppJavaScript(jQuery);
  }
})();
