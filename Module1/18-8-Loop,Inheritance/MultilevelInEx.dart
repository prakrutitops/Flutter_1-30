class A1
{
  void a1()
  {
    print("A1 Accessed");
  }
}
class B1 extends A1
{
  void b1()
  {
    print("B1 Accessed");
  }
}

class C1 extends B1
{
  void c1()
  {
    print("C1 Accessed");
  }
}

class D1 extends C1
{
  void d1()
  {
    print("D1 Accessed");
  }
}
void main()
{
  var d = D1();

  d.a1();
  d.b1();
  d.c1();
  d.d1();

}