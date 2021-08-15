import 'package:dio/dio.dart';
import 'package:iti_flutter/models/user.dart';

class UserServices{
String baseUrl = 'https://jsonplaceholder.typicode.com/';

String users = 'users/';

Future <List<User>>getUser()async{
  List<User> usersList = [];
Response response = await Dio().get('${baseUrl}${users}');
var data = response.data;
data.forEach((e){
  User user= User.fromJson(e);
  usersList.add(user);

});

///////or////////////////////
//   data.forEach((e){
//     User user = User.fromJson(e);
//     users.add(user);
//   });

return usersList ;
}


}