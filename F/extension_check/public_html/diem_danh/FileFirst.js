/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


document.addEventListener('DOMContentLoaded', function () {

    var checkChange = document.getElementById("checkChange");
    checkChange.addEventListener('click', function () {
        var stringScript = document.getElementsByTagName("input");
//        for (var i = 0; i < stringScript.length; i++) {
//            
//            if (stringScript[i].type=="radio") {
//                
//                if(stringScript[i].value=="rdPresent"){
//                stringScript[i].setAttribute("checked","checked");
//                }
//                }
//            }
 for (var i = 0; i < stringScript.length; i++) {
                    if(stringScript[i].type=="radio"){
                       if(i%2 ==1){
                           stringScript[i].setAttribute("checked","checked");                       }
                   }
               }
           }
                        
                );});
            
//            <script>
      //      function takeAlls(){//
//                var radios = document.getElementsByTagName("input");
//                var count = 0 ;
//                for (var i = 0; i < radios.length; i++) {
//                    if(radios[i].type=="radio"){
//                        if(i%2 ==1){
//                            radios[i].setAttribute("checked","checked");
//                        }
        //            }
          //      }
           // }
     //   </script>
//});
//
//document.addEventListener('DOMContentLoaded', function () {
//    var arrColors = ["#FF0000", "#00FF00", "#0000FF", "#FFFFFF"];
//    var i = 3; //chỉ số màu nền hiện thời
//
//    var btnBgColorChange = document.getElementById('btnChangeBgColor');
//    btnBgColorChange.addEventListener('click', function () {
//        var color = arrColors[(i++) % 4];
//        var stringScript = 'document.body.style.backgroundColor="' + color + '";';
//        chrome.tabs.executeScript({
//            code: stringScript,
//        });
//    });
//
//});