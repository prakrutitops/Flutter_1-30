void main()
{
  List<String> countries = ["USA", "INDIA", "CHINA"];

  countries.add("AUSTRALIA");

  print(countries);

  List<int> numbersList = List();                         // Growable List: METHOD 2
  numbersList.add(73);    // Insert Operation
  numbersList.add(64);
  numbersList.add(21);
  numbersList.add(12);


  numbersList[2]=20;


  List<int> numbersList2 = List();                         // Growable List: METHOD 2
  numbersList2.add(3);    // Insert Operation
  numbersList2.add(4);
  numbersList2.add(5);
  numbersList2.add(6);

  numbersList.addAll(numbersList2);
  print(numbersList);
/*
  numbersList[0] = 99;    // Update operation
  numbersList[1] = null;  // Delete operation
  print(numbersList[0]);


  numbersList.remove(99);
  numbersList.add(24);
  numbersList.removeAt(3);
  print(numbersList);*/


}