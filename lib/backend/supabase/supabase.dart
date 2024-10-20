import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import '/flutter_flow/flutter_flow_util.dart';

export 'database/database.dart';

String _kSupabaseUrl = 'https://gxcbeudzmpccompszoua.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd4Y2JldWR6bXBjY29tcHN6b3VhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc3MDk2NzksImV4cCI6MjA0MzI4NTY3OX0.s38apSqwioH5cTe2dNt48Eclfsju7T3GBpOMd_9Vuhc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
