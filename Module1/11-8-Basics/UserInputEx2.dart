import 'dart:io';

void main()
{

  print("Enter Your Id");
  var id = int.parse(stdin.readLineSync());

  print("Enter Your Name");
  var name = stdin.readLineSync();

  print("Enter Your Salary");
  var salary = double.parse(stdin.readLineSync());

  print("Your id is $id");
  print("Your name is $name");
  print("Your salary is $salary");



}