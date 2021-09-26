import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nossoapp/logic/authentication/auth_event.dart';
import 'package:nossoapp/logic/authentication/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(Unauthenticated());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is LoginUser) {
      if (event.password == event.username) {
        yield Authenticated(nome: event.username);
      }
    } else if (event is LoginAnonymousUser) {
      yield Authenticated(nome: "incognito");
    } else if (event is Logout) {
      yield Unauthenticated();
    }
  }
}
