class Bank
{
  int rate()
  {
    return 0;
  }
}
class Sbi extends Bank
{
  int rate()
  {
    return 7;
  }
}
class Icici extends Bank
{
  int rate()
  {
    return 8;
  }
}
class Axis extends Bank
{
  int rate()
  {
    return 9;
  }
}

void main()
{
  var b = Bank();

  b= Sbi();
  print(b.rate());

  b= Icici();
  print(b.rate());

  b= Axis();
  print(b.rate());
}