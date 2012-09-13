/* filename: pilquiy.js */
/******************************************************************************************

All the code and functionality of the pilquiy application

******************************************************************************************/

function _getRandomData_OK(payload){
    alert(payload + " :-)");
}

function _getRandomDate_FAIL(err){
    alert("!!" + err + " :-(");
}

function btnGet() {
    pilquiy.Pilquiy.GetRandomData($('#num').val(), _getRandomData_OK, _getRandomDate_FAIL, "userContext");
}

