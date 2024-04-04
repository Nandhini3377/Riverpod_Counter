import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/counter.dart';


final counterProvider = ChangeNotifierProvider((ref) => Count());