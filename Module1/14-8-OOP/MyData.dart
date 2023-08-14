class Student
{
  //Data Members
    var id;
    var name;
    var surname;
    var email;
    var mobile;


    void display()
    {
        print("$id , $name , $surname , $email , $mobile");

    }
}
void main()
{
    var s1 = Student();
    s1.id=101;
    s1.name="tops";
    s1.email="a@gmail.com";

    var s2 = Student();
    s2.id=102;
    s2.name="tech";
    s2.email="a@gmail.com";

    var s3 = Student();
    s3.id=103;
    s3.name="tops2";
    s3.email="a@gmail.com";

    var s4 = Student();
    s4.id=104;
    s4.name="tech2";
    s4.email="a@gmail.com";

    var s5 = Student();
    s5.id=105;
    s5.name="tech3";
    s5.email="a@gmail.com";

    s1.display();
    s2.display();
    s3.display();
    s4.display();
    s5.display();

    /*print("${s1.id} and ${s1.name}");
    print("${s2.id} and ${s2.name}");*/

}