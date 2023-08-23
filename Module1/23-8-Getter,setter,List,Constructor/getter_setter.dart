class Student
{

  String _name;
  double _percent;

  double get percent => _percent;

  set percent(double value) {
    _percent = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

//getter-setter

}

void main()
{

  var s1 = Student();

  //set
  s1._name="A";
  s1._percent=90.00;

  //get
  print(s1._name);
  print(s1._percent);


}