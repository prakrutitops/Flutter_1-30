class M
{
  void m1()
  {
    print("m1 accessed");
  }
}
abstract class N extends M
{
  void n1();

}
abstract class T extends M
{
  void t1();

}
class Q implements N,T
{
  void q1()
  {
    print("q1 accessed");
  }

  @override
  void m1() {
    // TODO: implement m1
  print("m1 accessed");
  }

  @override
  void n1() {
    // TODO: implement n1
    print("n1 accessed");
  }

  @override
  void t1() {
    // TODO: implement t1
    print("t1 accessed");
  }
}

void main()
{

  var q = Q();

  q.m1();
  q.n1();
  q.t1();
  q.q1();

}