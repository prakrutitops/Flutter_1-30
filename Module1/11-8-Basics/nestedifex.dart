void main()
{
  int age = 62;

  if(age>=18)
  {
    print("Eligible to vote");

    //nested if
      if(age>=60)
      {
          print("Senior Citizen");
      }
      else
      {
        print("Young Age");
      }
  }
}