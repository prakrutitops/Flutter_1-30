class Student2
{
  //Data Members
    var id;
    var name;
    var surname;
    var email;
    var mobile;

    Student2(var id,var name,var surname, {var email,var mobile})
    {
        print("$id , $name , $surname , $email , $mobile");
    }


}
void main()
{
    var s1 = Student2(101,"a","b",email: "a@gmail.com",mobile: "1");
    var s3 = Student2(101,"a","b",mobile: "2",email: "b@gmail.com");
    var s2 = Student2(101,"a","b",email: "c@gmail.com",mobile: "3");
    var s4 = Student2(101,"a","b",email: "a@gmail.com",mobile: "");
    var s5 = Student2(102,"a","b");



}