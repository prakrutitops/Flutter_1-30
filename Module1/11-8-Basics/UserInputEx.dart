import 'dart:io';

void main()
{

  print("Enter Your Value for a");
  var a = int.parse(stdin.readLineSync());

  print("Enter Your Value for b");
  var b = int.parse(stdin.readLineSync());

  var c=a+b;

  print("Your id is $c");


}