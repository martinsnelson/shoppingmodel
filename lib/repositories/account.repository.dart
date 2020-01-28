import 'package:dio/dio.dart';
import '../models/authenticate-user.model.dart';
import '../models/create-user.model.dart';
import '../models/user.model.dart';
import '../settings.dart';

class AccountRepository {
  Future<UserModel> authenticate(AuthenticateModel model) async {
    var url = "${Settings.apiUrl}v1/account/login";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data);
  }

  Future<UserModel> create(CreateUserModel model) async {
    var url = "${Settings.apiUrl}v1/account";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data);
  }

  Future<UserModel> createProgress(CreateUserModel model) async {
    var url = "${Settings.apiUrl}v1/account";
    Response response = await Dio().post(url, data: model,
        onSendProgress: (int sent, int total) {
      print("$sent $total");
    });
    return UserModel.fromJson(response.data);
  }
}
