String reverse(String input) {
  StringBuffer sb = new StringBuffer();
  for (int i = input.runes.length - 1; i >= 0; i--) {
    sb.writeCharCode(input.runes.elementAt(i));
  }
  return sb.toString();
}
