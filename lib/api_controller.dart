import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpController {
  String url = "";
  String nim = "";
  String namaMhs = "";
  Map<String, dynamic> responseBody = {};

  Future<void> submit() async {
    Map<String, dynamic> requestBody = {
      "nim": nim,
      "nama_mhs": namaMhs,
    };
    String requestBodyJson = jsonEncode(requestBody);
    try {
      http.Response response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: {requestBodyJson},
      );
      if (response.statusCode == 200) {
        responseBody = jsonDecode(response.body);
      } else {
        print("failed to post");
      }
    } catch (e) {
      print(e);
    }
  }

  // setter
  void setUrl(String url) {
    this.url = url;
  }

  void setNim(String nim) {
    this.nim = nim;
  }

  void setNamaMhs(String namaMhs) {
    this.namaMhs = namaMhs;
  }
}
