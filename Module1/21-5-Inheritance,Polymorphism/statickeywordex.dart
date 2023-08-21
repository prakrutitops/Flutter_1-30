class Student
{

    var id =0;
    var name="";
    static var clg_name="Atmiya";//static variable


    Student(var id,var name)
    {
      this.id = id;
      this.name = name;
    }

    void display()
    {
      print("$id , $name , $clg_name");
    }

    static void change()
    {

        clg_name = "VVP";
    }


}

void main()
{
    Student.change();

    var s1 = Student(101,"A");
    var s2 = Student(102,"B");

    s1.display();
    s2.display();


}