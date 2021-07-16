import 'base_error.dart';

class ConnectionError extends BaseError {
}
class NetError extends ConnectionError {}
class SocketError extends ConnectionError {}
class TimeoutError extends ConnectionError {}
class UnknownError extends ConnectionError {}
