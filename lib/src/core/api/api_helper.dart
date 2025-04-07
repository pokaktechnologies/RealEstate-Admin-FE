import 'package:dio/dio.dart';
import 'package:real_estate_admin_fe/src/core/api/api_exception.dart';

class ApiHelper {

  Map<String, dynamic> returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 201:
        return response.data;
      case 400:
        throw BadRequestException(response.data["message"].toString());
      case 401:
        throw UnauthorizedException(response.data["message"].toString());
      case 403:
        throw ForbiddenException(response.data["message"].toString());
      case 404:
        throw NotFoundException(response.data["message"].toString());
      case 422:
        throw UnprocessableContentException(
            response.data["message"].toString());
      case 500:
        throw InternalServerException(response.data["message"].toString());
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}