import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UnimindTestBlankFirebaseUser {
  UnimindTestBlankFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

UnimindTestBlankFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UnimindTestBlankFirebaseUser> unimindTestBlankFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UnimindTestBlankFirebaseUser>(
      (user) {
        currentUser = UnimindTestBlankFirebaseUser(user);
        return currentUser!;
      },
    );
