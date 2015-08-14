/**
 * 
 * @authors Your Name (you@example.org)
 * @date    2015-01-08 18:00:12
 * @version $Id$
 */
window.onload = function () {
	var oDIV = document.getElementById('navbox');
	var oUL = oDIV.document.getElementsByTagName('ul')[0];
	var aLI = oUL.document.getElementsByTagName('li');
	var oDIV1 = aLI.document.getElementsByTagName('div');

	for (var i = 0; i < aLI.length; i++) {
		aLI[i].onmouseover = function  () {
			this.document.getElementsByTagName('div').style.cssText='display:block;boder:none'
		}
	};


}
