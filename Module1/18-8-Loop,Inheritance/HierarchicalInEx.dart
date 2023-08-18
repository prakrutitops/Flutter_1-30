class Bank
{
  void bank()
  {
    print("bank accessed");
  }
}
class Current extends Bank
{
  void current()
  {
    print("Current Accessed");
  }
}
class Save extends Bank
{
  void save()
  {
    print("Saving");
  }
}
void main()
{
    var c1 = Current();
    var s1 = Save();

    c1.current();
    s1.save();
    c1.bank();

}