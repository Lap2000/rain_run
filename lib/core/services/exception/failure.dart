abstract class Failure implements Exception {
  Failure(this.message);
  final String message;
}

class ClientFailure extends Failure {
  ClientFailure(super.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class NoConnectionFailure extends Failure {
  NoConnectionFailure() : super('No internet connection');
}

class UnknownFailure extends Failure {
  UnknownFailure(super.message);
}
