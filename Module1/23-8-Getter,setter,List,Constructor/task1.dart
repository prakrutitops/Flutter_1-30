import 'dart:io';

void main()
{


    print("Enter Your Choice: \n Press 1 For Area of Traingle \n Press 2 For Area of Rectangle \n Press 3 For Area of Circle");
    var num = int.parse(stdin.readLineSync());

    if(num==1)
    {

    }
    if(num==2)
    {

    }
    if(num==3)
    {
        double pi =3.14;

        print("Enter Required Radius");
        var r = int.parse(stdin.readLineSync());

        double ans = pi*r*r;
        print("Area of Circle is: $ans");


    }


}