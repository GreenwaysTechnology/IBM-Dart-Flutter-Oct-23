int getDayofWeek(String dayOfWeek) {
  return switch (dayOfWeek) {
    'Monday' => 1,
    'Tuesday' => 2,
    'Wednesday' => 3,
    'Thursday' => 4,
    'Friday' => 5,
    'Saturday' => 6,
    'Sunday' => 7,
    _ => 10
  };
}

void main() {
  var dayOfWeek = 'Monday';
  var result = switch (dayOfWeek) {
    'Monday' => 1,
    'Tuesday' => 2,
    'Wednesday' => 3,
    'Thursday' => 4,
    'Friday' => 5,
    'Saturday' => 6,
    'Sunday' => 7,
    _ => 10
  };
  print("$result");
  print(getDayofWeek("Friday"));
}
