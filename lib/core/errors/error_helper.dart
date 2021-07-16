

import 'base_error.dart';
import 'cancel_error.dart';
import 'connection_error.dart';
import 'custom_error.dart';
import 'http_error.dart';

class ErrorHelper {
 static final String notFoundErrorMessage = 'not_found_err';
 static final String unauthorizedErrorMessage = 'unauthorized_err';
 static final String badRequestErrorErrorMessage = 'bad_request_err';
 static final String forbiddenErrorErrorMessage = 'forbidden_err';
 static final String internalServerErrorMessage = 'server_err';
 static final String timeoutErrorErrorMessage = 'timeout_err';
 static final String unExpectedErrorMessage ='unexpected_err';
 static final String connectionErrorMessage = 'connection_err';
static  final String conflictErrorMessage = 'conflict_err';
 static final String cancelErrorMessage = 'cancel_err';
 static final String unKnownErrorMessage = 'unKnown_err';

 static String getErrorMessage(BaseError error) {
    if (error is NotFoundError) {
      return notFoundErrorMessage;
    }else if (error is ConflictError) {
      return conflictErrorMessage;
    } else if (error is UnauthorizedError) {
      return unauthorizedErrorMessage;
    } else if (error is BadRequestError) {
      return badRequestErrorErrorMessage;
    } else if (error is ForbiddenError) {
      return forbiddenErrorErrorMessage;
    } else if (error is InternalServerError) {
      return internalServerErrorMessage;
    } else if (error is TimeoutError) {
      return timeoutErrorErrorMessage;
    } else if (error is NetError || error is SocketError) {
      return connectionErrorMessage;
    } else if (error is CustomError) {
      return error.message??'null from server';
    }
    else if (error is CancelError){
      return cancelErrorMessage;
    }else if (error is UnknownError){
      return unKnownErrorMessage;
    }
    else {
      return unExpectedErrorMessage;
    }
  }
}
