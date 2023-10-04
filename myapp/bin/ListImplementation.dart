class Product {
  int productId;
  String productName;
  double price;

  Product(this.productId, this.productName, this.price);
}

void main() {
  //immutable list
  const List<int> numList = [1, 2, 3, 4];
  for (int value in numList) {
    print(value);
  }
  numList.forEach((element) {
    print(element);
  });
  List<Product> products = [
    Product(1, "p1", 1334.0),
    Product(2, "p2", 34412.0),
    Product(3, "p3", 12121.0)
  ];
  for (Product product in products) {
    print("${product.productId} ${product.productName} ${product.price}");
  }
}
