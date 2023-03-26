void main() {
  List<String> stringlist = ["hello", "hell", "hioe", "hey"];
  String subsequence = "";
  bool check = false;
  int checkCounter = 0;
  for (int count = 0; count < stringlist.length; count++) {
    for (int i = 0; i < stringlist[count].length; i++) {
      for (int count2 = count + 1; count2 < stringlist.length; count2++) {
        for (int j = 0; j < stringlist[count2].length; j++) {
          if (stringlist[count2][j] == stringlist[count][i]) {
            check = true;
          }
        }
        if (check == true) {
          ++checkCounter;
        }
      }
      if (stringlist.length - 1 == checkCounter) {
        subsequence = subsequence + stringlist[count][i];
      }
    }
  }
  print(subsequence);
}
