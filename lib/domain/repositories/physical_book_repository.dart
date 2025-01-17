

import 'package:bookpal/domain/entities/physical_book.dart';
import 'package:bookpal/domain/resources/data_state.dart';

abstract class PhysicalBookRepository {
  Future<DataState<PhysicalBook>> getPhysicalBook();
}