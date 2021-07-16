import './base_error.dart';

class HttpError extends BaseError {
}

class BadRequestError extends HttpError {
}
class ForbiddenError extends HttpError {
}
class InternalServerError extends HttpError {
}
class NotFoundError extends HttpError {
}
class UnauthorizedError extends HttpError {
}
class ConflictError extends HttpError{}
