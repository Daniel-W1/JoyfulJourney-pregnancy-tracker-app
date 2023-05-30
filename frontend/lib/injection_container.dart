import 'package:get_it/get_it.dart';

import 'core/Themes/bloc/theme_changer_bloc.dart';
// import 'features/Appointments/Presentation/bloc/time_pick_logic_bloc.dart';
import 'features/BottomNavigation/Presentation/bloc/page_provider_bloc.dart';

final GetIt getI = GetIt.instance;
void setup() {
  getI.registerLazySingleton(() => PageProviderBloc());
  getI.registerLazySingleton(() => ThemeChangerBloc());
}
