class CommonMethods {
  static String numberToTurkishMoneyString(num number, {bool shouldAddZeros = false}) {
    var intPart = number.truncate();
    num nonIntPart = number - intPart;

    var returnedString = '';
    var runeArray = intPart.abs().toString().runes;
    var pointCounter = 0;

    for (var i = runeArray.length - 1; i >= 0; i--) {
      if (pointCounter == 3) {
        returnedString = "." + returnedString;
        pointCounter = 0;
      }
      returnedString = String.fromCharCode(runeArray.elementAt(i)) + returnedString;
      pointCounter++;
    }

    if (shouldAddZeros) returnedString += "," + nonIntPart.abs().toStringAsFixed(2).split(".")[1].substring(0, 2);
    if (number < 0) returnedString = "-" + returnedString;

    return returnedString;
  }
}
