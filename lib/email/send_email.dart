import 'dart:convert';
import 'package:http/http.dart' as http;
Future MailFeedback({to_mail, to_name, title,id,date,amt,cost,qty}) async {
  final service_id = 'service_0k4ia79';
  final template_id = 'template_2k62i01';
  final user_id = 'KZzpr_NfpSl3-_zCs';
  var url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  try {
    var response = await  http.post(url,
        headers: {
          'origin': '<http://localhost>',
          'Content-Type': 'application/json'
        },
        body: json.encode({
          'service_id': service_id,
          'template_id': template_id,
          'user_id': user_id,

          'template_params': {
            'to_mail' : to_mail,
            'to_name' : to_name,
            'date': date,
            'id' : id,
            'title':title,
            'amt':amt,
            'qty':qty,
            'cost':cost,
          }
        }));
    print('[FEED BACK RESPONSE]');
    print(response.body);
  } catch (error) {
    print('[SEND FEEDBACK MAIL ERROR]');
  }
}