/*final*/ class A1
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
void main()
{
  var b = B1();

  b.a1();
  b.b1();

}