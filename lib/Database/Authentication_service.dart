import 'package:supabase/supabase.dart';
import 'Supabase_credetials.dart';

class AuthenticationService {
  Future<String?> signup({
    required String email,
    required String password,
  }) async {
    GotrueSessionResponse response =
        await SupasbaseCredentials.supabaseClient.auth.signUp(email, password);
    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      print("Signup successful : $userEmail");
    } else {
      print("Signup error : ${response.error!.message}");
    }
    return null;
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    GotrueSessionResponse response =
        await SupasbaseCredentials.supabaseClient.auth.signIn(
      email: email,
      password: password,
      options: AuthOptions(redirectTo: SupasbaseCredentials.APIURL),
    );
    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      print("Signup successful : $userEmail");
    } else {
      print("Signup error : ${response.error!.message}");
    }
    return null;
  }
}
