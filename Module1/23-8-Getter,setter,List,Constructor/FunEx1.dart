//1. with para with return type
int cal(var a,var b)
{
  var c= a+b;

  return c;
}

//2. with return type without para
int cal2()
{
  var a = 6;
  var b= 5;
  var c= a+b;

  return c;
}
//3.with para without return type
 cal3(var a,var b)
{
  var c= a+b;
  print(c);
}
//4.without para without return type
cal4()
{
  var a = 6;
  var b = 5;

  var c= a+b;
  print(c);
}

void main()
{

  print(cal(6, 5));
  print(cal2());
  cal3(6, 5);
  cal4();


}