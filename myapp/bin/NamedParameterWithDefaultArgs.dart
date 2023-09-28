void sayName({String? name = "Your Name"}) {
  print("Name is $name");
}

void widget(
    {String? name = "Layout",
    int? height = 0,
    int? width = 0,
    String? theme = "light"}) {
  print("name $name");
  print("height $height");
  print("width $width");
  print("theme $theme");
}

void main() {
  sayName(name: "Subramanian");
  sayName();
  //widget(name, height, width, theme);
  widget();
  widget(name: "Tab", theme: "dark");
  widget(name: "Panel", width: 100, height: 200, theme: "light");
}
