// dart Test code
import 'package:http_io_app/post_repository.dart';

void main() async{
  // await findById_test(); // await로 기다려주려면 Future<void> 가 되야 한다
   // 실행이 종료될 때까지 기다리게 하기
  await findById_test();

}

Future<void> findById_test() async{
  //given
  int id = 1;
  //when
  PostRepository postRepository = PostRepository();
  await postRepository.findById(id);
  //then

}

Future<void> findAll_test() async{
  //given

  //when
  PostRepository postRepository = PostRepository();
  await postRepository.findAll();
  //then

}