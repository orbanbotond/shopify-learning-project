  // (function(){
  //   var loadScript = function(url, callback){
  //     var script = document.createElement("script")
  //     script.type = "text/javascript";
   
  //     if (script.readyState){  //IE
  //         script.onreadystatechange = function(){
  //             if (script.readyState == "loaded" ||
  //                     script.readyState == "complete"){
  //                 script.onreadystatechange = null;
  //                 callback();
  //             }
  //         };
  //     } else {  //Others
  //         script.onload = function(){
  //             callback();
  //         };
  //     }
   
  //     script.src = url;
  //     document.getElementsByTagName("head")[0].appendChild(script);
  //      // JavaScript that will load the jQuery library on Google's CDN.
  //      //   We recommend this code: http://snipplr.com/view/18756/loadscript/.
  //      //   Once the jQuery library is loaded, the function passed as argument,
  //      //   callback, will be executed. 

  //   };

  //   var myAppJavaScript = function(){
  //     console.debug('$ Version' + $.fn.jquery);
  //     // var products_json   = #{raw @current_shop.shopify_products.to_json};
  //     // console.debug(products_json);

  //     if($('.toptal-product-slider').size() != 0){
  //       console.debug('Container Div is detected.');
  //     }

  //     /* Your app's JavaScript here.
  //        $ in this scope references the jQuery object we'll use.
  //        Don't use 'jQuery', or 'jQuery191', here. Use the dollar sign
  //        that was passed as argument.*/
  //     $('body').append('<p>Your app is using jQuery version '+$.fn.jquery+'</p>');
  //   };

  //   loadScript('http://52b00abd.ngrok.io/assets/camera.min.js', function(){
  //     myAppJavaScript();
  //   });
  // })();
