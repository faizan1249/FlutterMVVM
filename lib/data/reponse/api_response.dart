import 'package:my_app/data/reponse/status.dart';

class ApiResponse<T> {
  AppStatus? appStatus;
  T? data;
  String? message;

  ApiResponse(
    this.appStatus,
    this.data,
    this.message,
  );

  ApiResponse.loading() : appStatus = AppStatus.LOADING;
  ApiResponse.completed() : appStatus = AppStatus.COMPLETED;
  ApiResponse.error() : appStatus = AppStatus.ERROR;

  @override
  String toString() {
    return "Status: $appStatus \n Message: $message \n Data: $data";
  }
}
