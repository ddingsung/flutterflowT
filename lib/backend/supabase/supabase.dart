import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ffugorsdjjxnnlbwptfh.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmdWdvcnNkamp4bm5sYndwdGZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNjI5MTIsImV4cCI6MjAzMzgzODkxMn0.X44TcAHE9u2Rx0ViGUY47M2lbJqbTB5yemWUU2utuB4';

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
