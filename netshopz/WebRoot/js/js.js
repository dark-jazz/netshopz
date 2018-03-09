window.onload = function(){
    var oAdd = document.getElementById('add_button');
    var oCount = document.getElementById('cont-cont');
    var oShut = document.getElementById('shut_button');
    var count= oCount.value;
    oAdd.onclick=function () {
        if (count<999){
            oCount.value = Number(count)+1;
            count= oCount.value;
        }
    };
    oShut.onclick = function () {
        if (count>1){
            oCount.value = Number(count)-1;
            count= oCount.value;
        }
    };
    oCount.onblur = function () {
       oCount.value=count;
    }
    
};