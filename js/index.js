/**
 *
 * @authors Your Name (you@example.org)
 * @date    2015-01-08 18:00:12
 * @version $Id$
 */

/*顶部导航*/
window.onload = function() {
    var oGoal = document.getElementsByClassName('myOrder');
    var oShow = document.getElementsByClassName('loveclubtab');
    oGoal[0].onmouseover = function() {
        oShow[0].style.display = 'block';
    }
    oGoal[0].onmouseout = function() {
        oShow[0].style.display = 'none';
    }

}
/*window.onload = function () {
    var oDIV = document.getElementById('navbox');
    var oUL = oDIV.document.getElementsByTagName('ul')[0];
    var aLI = oUL.document.getElementsByTagName('li');
    var oDIV1 = aLI.document.getElementsByTagName('div');

    for (var i = 0; i < aLI.length; i++) {
        aLI[i].onmouseover = function  () {
            oDIV1[0].style.display='block';
        }
    };


}
*/
