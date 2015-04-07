var aInput = new Array();
var iNum;
var iData;
var iCircleNum = 0;

function fnGet() {
	var sTmp = document.getElementById("ta1").value;
	var iLineS = sTmp.indexOf("\n");
	var iLineE = sTmp.lastIndexOf("\n");
	iNum = parseInt(sTmp.substring(0, iLineS));
	//var iI=1;
	iData = parseInt(sTmp.substring(iLineE + 1, sTmp.length));

	var iI = 0;
	var iStart = iLineS + 1;
	var iNode;
	while (iStart < iLineE) {
		iNode = sTmp.indexOf("\n", iStart);
		var sArrayTmp = sTmp.substring(iStart, iNode)
		aInput[iI] = sArrayTmp.split(" ");
		iI++;
		iStart = iNode + 1;
	}

	//aInput[0]=iNum;
	//aInput[iNum+1]=stmp.substring(iLineE+1,stmp.length-1);	//or aInput.pop
}

function fnRun() {
	fnGet();
	//console.log(aInput);
	var iLongestCircle = fnCalc();


	var hD = document.getElementById("d");
	d.appendChild(document.createTextNode("the number of hjzy :   " + iCircleNum + "        	"));
	d.appendChild(document.createTextNode("the longest:" + iLongestCircle));
	iCircleNum = 0;
}

function fnCalc() {
	var aTmp = new Array();

	for (i = 0; i < iNum; i++) {
		aInput[i][2] = parseInt(aInput[i][2]);
		aInput[i][3] = parseInt(aInput[i][3]);
		if (iData >= aInput[i][2] && iData < aInput[i][2] + aInput[i][3]) {
			iCircleNum++;
			aTmp.push([aInput[i][0], aInput[i][1]]);

		}
	}
	//console.log(aTm`p);
	var aNum = new Array();
	var iTmp = 0;
	for (i = 0; i < iCircleNum; i++) {

		fnLongestCircle(i);
		//console.log(iTmp);
		aNum[i] = iTmp + 1;
		iTmp = 0;

	}
	//console.log(aNum);

	var iMax = aNum[0];
	for (i = 1; i < aNum.length; i++) {
		if (iMax < aNum[i]) {
			iMax = aNum[i];
		}
	}
	function fnLongestCircle(flag) {
		var i = 0;
		while (i < iCircleNum) {
			if (aTmp[flag][1] === aTmp[i][0]) {
				iTmp++;
				fnLongestCircle(i);
				i = iCircleNum;

			}
			i++;
			if (iTmp > iCircleNum) {
				alert("There is an infinate loop, So" + "\n" + "Shutdown Your Computer Now! ___>_<" + "\n" + "or close your browser" + "\n" + "or just close this browser tab");

			}
		}


	}
	return iMax;



}



/*
8
0000 0001 1 3
0001 4964 2 1
4964 0005 2 3
0005 0006 2 1
0006 0007 2 1
0007 0008 2 1
0008 0001 2 1
0010 0001 3 1
2


"There is an infinate loop, So"+"\n"+ "Shutdown Your Computer Now!"+"\n"+"or close your browser"+"\n"+"or just close this browser tab");
*/