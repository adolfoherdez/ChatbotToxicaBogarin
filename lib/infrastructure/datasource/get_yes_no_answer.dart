import 'package:chatsex_bogarin/domain/entities/message.dart';
import 'package:chatsex_bogarin/infrastructure/dto/yes_no_answer.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio(BaseOptions(baseUrl: 'https://yesno.wtf'));

  Future<Message> getAnswer()async{
    final response = await _dio.get('/api');
    print(response.data);
    final YesNoAnswer yesNoAnswer = YesNoAnswer.fromJson(response.data);
    return Message(
      //text: yesNoAnswer.answer,
      text: yesNoAnswer.answer == 'yes' ? 'Si' : 'No',
      imageUrl: yesNoAnswer.image,
      fromWho: FromWho.hers);
  }
}