class Student2
{
  //Data Members
    var id;
    var name;
    var surname;
    var email;
    var mobile;

    Student2(var id,var name,var surname, [var email,var mobile])
    {
        print("$id , $name , $surname , $email , $mobile");
    }


}
void main()
{
    var s1 = Student2(101,"a","b","a@gmail.com","1");
    var s2 = Student2(101,"a","b","a@gmail.com","1");
    var s3 = Student2(101,"a","b","a@gmail.com","1");
    var s4 = Student2(101,"a","b","a@gmail.com");
    var s5 = Student2(102,"a","b");



}