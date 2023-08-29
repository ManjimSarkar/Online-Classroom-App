import 'package:supabase/supabase.dart';

class SupasbaseCredentials {
  static const String APIKEY =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJoZ3VqaGF1YXpsemxseXhoanVyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTEyOTc1OTksImV4cCI6MTk2Njg3MzU5OX0.jIKLuHPhFClxW3ncILo3tuVzUQwfXQbeEr4VjoY85kk";
  static const String APIURL = "https://rhgujhauazlzllyxhjur.supabase.co";

  static SupabaseClient supabaseClient = SupabaseClient(APIKEY, APIURL);
}
