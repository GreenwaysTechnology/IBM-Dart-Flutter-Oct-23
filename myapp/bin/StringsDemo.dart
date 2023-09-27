void main() {
  String str = 'Hello';
  var name = "Subramaian";
  //print values : Using + operator
  print("Name " + name);
  //using string interpolation
  print("Name ${name}");
  print("Name $name");

  var html = """
       <html>
         <head>
        <title>Hello</title>
        </head>
        <body>
        <h1>Hello $name</h1>
        </body>
        </html>
  """;
  print(html);
}
