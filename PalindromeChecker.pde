public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(onlyLetters(noSpaces(word.toLowerCase())).equals(reverse(onlyLetters(noSpaces(word.toLowerCase())))))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i  = sNew.length()-1; i >= 0; i--) {
      sNew += sNew.charAt(i);
    }
    return sNew;
}
public String onlyLetters(String sString){
  String ans = "";
  for(int i = 0; i < sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i)))
      ans += sString.charAt(i);
  }
  return ans;
}
public String noSpaces(String sWord){
  String ans = "";
  for(int i = 0; i < sWord.length(); i++) {
    if(sWord.charAt(i) != ' ')
      ans += sWord.charAt(i);
  }
  return ans;
}


