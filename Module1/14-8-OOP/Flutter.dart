class Flutter
{

   static var count =0;
 // static -Old memory reuse
    //default
    Flutter()
    {
      count++;
      print(count);
    }

}

void main()
{
   var f1 = Flutter();
   var f2 = Flutter();
   var f3 = Flutter();
}