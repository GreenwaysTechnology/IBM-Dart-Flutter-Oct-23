void httpClient(
    {required String? url,
    String? method = "GET",
    required String? payload,
    String? headers = "headers"}) {
  print("url $url");
  print("method $method");
  print("payload $payload");
  print("headers $headers");
}

void main() {
  httpClient(url: "http://www.mockapi.com/users", payload: "Users");
  httpClient(url: "http://www.mockapi.com/users", payload: "Users",method: "POST");

}
