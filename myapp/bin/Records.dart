// class Location {
//   int lat;
//   int lng;
//
//   Location(this.lat, this.lng);
// }
//

void main() {
  // (int, int) getMyLocation() {
  //   int lat = 10;
  //   int lng = 9223;
  //   return (lat, lng);
  // }
  (int, int) getMyLocation() {
    int lat = 10;
    int lng = 9223;
    return (lat, lng);
  }

  var location = getMyLocation();
  print(location);
  print(location.$1);
  print(location.$2);
  //Destructuring
  final (lat, lng) = getMyLocation();
  print("lat=$lat lng=$lng");
}
