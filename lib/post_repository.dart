
import 'package:dio/dio.dart';

class PostRepository {
  final dio = Dio();

  void findByIdV1 (int id){
    print("1");
    // Response 빈박스 돌려주는 것 - return 타입이 void 여도 그냥 future 박스에 데이터를 넣어주는 개념 ?
    Future<Response> responseFT = dio.get("https://jsonplaceholder.typicode.com/posts/$id");
    print("1");
    responseFT.then((value) => print(value.data));
    print("1");// 다운이 다되면 value 에 값 들어옴

    // 단위테스트

  }
}