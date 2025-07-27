abstract class Failure {
  final String message;
  Failure(this.message);
  @override
  String toString() => 'Failure: $message';
}

class FirebaseFailure extends Failure {
  FirebaseFailure(super.message);
}
