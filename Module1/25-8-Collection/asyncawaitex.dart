Future tops(int seconds, String msg)
{
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => msg);

}

Future tops2(int seconds, String msg)
{
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => msg);

}

void main()async
{
  print('Life');

 //await tops(2, "Is").then((value) => print(value));

  await tops2(2000,"Is").then((value) => print(value));
  print('Good');
}