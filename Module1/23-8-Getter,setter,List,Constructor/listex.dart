void main()
{

  List<int> numbersList = List(5);        // Fixed-length list
  numbersList[0] = 73;  // Insert operation
  numbersList[1] = 64;
  numbersList[3] = 21;
  numbersList[4] = 12;

  numbersList[2]=67;
  //print(numbersList);

  for (int element in numbersList)
  {                          // Using Individual Element (Objects)
    print(element);
  }

  print("\n");

  numbersList.forEach((element) => print(element));

  print("\n");

  for (int i = 0; i < numbersList.length; i++) {              // Using Index
    print(numbersList[i]);
  }

  //add,remove,retain
  //numbersList.removeAt(0);


  //print("\n");



}