class A11
{
  var color ="orange";
}

class MyColor extends A11
{
   var color="black";

   void display2()
   {
     print(super.color);
   }
}
class MyColor2 extends MyColor
{
  var color="white";

  void display()
  {
    print(color);
    print(super.color);

  }

}

void main()
{
  var m2 = MyColor2();
  m2.display();
  m2.display2();

}