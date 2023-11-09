import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:retrofit/retrofit.dart';

part 'users_api_service.g.dart';

@RestApi(baseUrl: usersApiBaseUrl)
abstract class UsersApiService {
  factory UsersApiService(Dio dio) = _UsersApiService;

  @GET('/users')
  Future<HttpResponse<List<UserModel>>> getUsers();
}
