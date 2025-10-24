import 'package:chatsex_bogarin/domain/entities/message.dart';
import 'package:chatsex_bogarin/infrastructure/dto/yes_no_answer.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://yesno.wtf'));

  Future<Message> getAnswer() async {
    final response = await _dio.get('/api');
    print(response.data);
    final YesNoAnswer yesNoAnswer = YesNoAnswer.fromJson(response.data);
    return Message(
      text: yesNoAnswer.answer == 'yes' ? 'Sí' : 'No',
      imageUrl: yesNoAnswer.image,
      fromWho: FromWho.hers,
    );
  }
}