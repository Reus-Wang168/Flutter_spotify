import 'package:dartz/dartz.dart';

abstract class UserCase<Type, Params> {
  Future<Type> call({Params params});
}
