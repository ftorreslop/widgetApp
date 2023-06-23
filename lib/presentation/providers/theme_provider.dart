import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);
