// import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:unimind_core/unimind_core.dart';

class UnimindTestBlankFirebaseUser {
  UnimindTestBlankFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

User? currentUser;
bool get loggedIn => currentUser?.isArchived ?? false;
final WebSocketController = Get.find();
Stream<User> AuthStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UnimindTestBlankFirebaseUser>(
      (user) {
        currentUser = User(user);
        return currentUser!;
      },
    );
