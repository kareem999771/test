import 'package:dartz/dartz.dart';
import 'package:movie/data/auth/models/signup_req_params.dart';
import 'package:movie/data/auth/sources/auth_api_service.dart'; // Ensure this import is correct
import 'package:movie/domain/auth/repositories/auth.dart';

class AuthRepositoryImpl extends AuthRepository {
AuthApiService authApiService;

  AuthRepositoryImpl({
  required this.authApiService,
  });

  @override
  Future<Either> signup(SignupReqParams params) async {
    return await authApiService.signup(params); 
    }
  }
