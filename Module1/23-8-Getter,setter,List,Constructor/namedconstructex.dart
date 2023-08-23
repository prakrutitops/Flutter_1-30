class Student
{

  int id =1;
  String name ="";

  Student()
  {
    print("Default Called");
  }
//named constructor
  Student.tops(var id,var name)
  {
    print("$id  $name");
  }



}
void main()
{
  var s1 = Student();

  Student.tops(101, "a");

}