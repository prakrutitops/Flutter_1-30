void main()
{
  Map<String, int> countryDialingCode =
  {         // Method 1: Using Literal
    "USA": 1,
    "INDIA": 91,
    "PAKISTAN": 92
  };

  print(countryDialingCode);

  Map<String, String> fruits = Map();             // Method 2: Using Constructor
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"]  = "green";


  print(fruits);

  print(fruits.containsKey("apple"));

  fruits.update("apple", (value) => "green");
  fruits.remove("apple");
  print(fruits.isEmpty);
  print(fruits.length);
  print(fruits);
}
