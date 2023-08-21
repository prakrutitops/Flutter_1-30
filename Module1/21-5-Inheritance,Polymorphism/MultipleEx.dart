abstract class P
{
  void p1()
  {
    print("p");
  }
  void p2();
}
abstract class Q
{
 void q1()
 {
   print("q");
 }

 void q2();
}
class R implements P,Q
{
  @override
  void p1()
  {
    // TODO: implement p1
    print("p1");
  }

  @override
  void q1()
  {
    // TODO: implement q1
    print("q1");
  }

  @override
  void p2() {
    // TODO: implement p2
    print("p2");
  }

  @override
  void q2() {
    // TODO: implement q2
    print("q2");
  }

}
void main()
{
  var r1 = R();

  r1.p1();
  r1.p2();
  r1.q1();
  r1.q2();
}