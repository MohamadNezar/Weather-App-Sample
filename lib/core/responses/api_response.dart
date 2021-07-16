

class ApiResponse<T>{
  final dynamic cod;
  final dynamic message;
  final T? result;
  ApiResponse({this.cod, this.message,this.result});

}