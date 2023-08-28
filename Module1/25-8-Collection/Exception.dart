void main()
{

 //logic
  try
  {
    double data = 10/0;
    print(data);
  }
  catch(e)
  {
    print(e);//error print
  }
  finally
  {
    print("Executed");
  }


}