void main()
{
  var p1 = Person();
 // var p2 = p1();

  var personOne = Person();
  var msg = personOne(25, "Peter");
  print(msg);

}
class Person
{
  void a()
  {
    print("a");
  }
  String call(int age, String name)
  {
    return "The name of the person is $name and age is $age";
  }
}