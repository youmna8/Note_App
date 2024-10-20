import '../database.dart';

class NotesTable extends SupabaseTable<NotesRow> {
  @override
  String get tableName => 'notes';

  @override
  NotesRow createRow(Map<String, dynamic> data) => NotesRow(data);
}

class NotesRow extends SupabaseDataRow {
  NotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  String? get imgUrl => getField<String>('img_url');
  set imgUrl(String? value) => setField<String>('img_url', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
