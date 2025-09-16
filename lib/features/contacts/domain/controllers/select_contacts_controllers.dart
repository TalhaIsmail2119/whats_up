import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repository/select_contact_repository.dart';

final getContactsProvider = FutureProvider((ref) {
  final selectContactRepository = ref.watch(selectContactsRepositoryProvider);
  return selectContactRepository.getContacts();
});