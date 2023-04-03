
import 'package:dio/dio.dart';

import 'post.dart';

class PostRepository {
  final dio = Dio(BaseOptions(contentType: Headers.jsonContentType));

  Future<Post> findById (int id) async{ // await - async 비동기니까 Future 박스를 줘야 해 Future 로 감싸기
    // Response 빈박스 돌려주는 것 - return 타입이 void 여도 그냥 future 박스에 데이터를 넣어주는 개념 ?
    Response response = await dio.get("https://jsonplaceholder.typicode.com/posts/$id");
    Post post = Post.fromJson(response.data); // map -> dto 객체로 변환
    return post;
    // Map<String, dynamic> responseMap = response.data; //<key, value>
    // print(responseMap["userId"]); // 1
    // print(response.data);
    // 단위테스트

  }
  Future<List<Post>> findAll () async{
    // Response 빈박스 돌려주는 것 - return 타입이 void 여도 그냥 future 박스에 데이터를 넣어주는 개념 ?
    Response response = await dio.get("https://jsonplaceholder.typicode.com/posts");
    List<Map<String, dynamic>> mapList = response.data;
    return mapList.map((e) => Post.fromJson(e)).toList();
    print(response.data); // Json데이터 -> flutter의 map 타입으로 자동 변환해서 받는다 -> 오브젝트로 바꾸기만 하면됨

    // 단위테스트

  }
}