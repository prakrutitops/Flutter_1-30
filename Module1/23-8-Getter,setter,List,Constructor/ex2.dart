class A
{
  int id;
  String name;

  A(int id,String name)
  {
    this.id = id;
    this.name = name;
  }

  void display()
  {
    print("$id and $name");
  }
}
void main()
{
  var a1 = A(101,"A");

  a1.display();
}