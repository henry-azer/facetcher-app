import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/core/utils/app_colors.dart';
import 'package:flutter_starter/features/app-signin/presentation/cubit/signin_cubit.dart';
import 'config/locale/app_localizations_setup.dart';
import 'config/routes/app_routes.dart';
import 'config/themes/app_theme.dart';
import 'core/utils/app_strings.dart';
import 'features/app-splash/presentation/cubit/localization_cubit.dart';
import 'injection_container.dart' as di;

class FacetcherApp extends StatelessWidget {
  const FacetcherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => di.sl<SigninCubit>()),
          BlocProvider(create: (context) => di.sl<LocalizationCubit>()),
        ],
        child: BlocBuilder<LocalizationCubit, LocalizationState>(
          buildWhen: (previousState, currentState) {
            return previousState != currentState;
          },
          builder: (context, state) {
            return AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light.copyWith(systemNavigationBarColor: AppColors.background),
              child: MaterialApp(
                title: AppStrings.appName,
                locale: state.locale,
                debugShowCheckedModeBanner: false,
                theme: appTheme(),
                onGenerateRoute: AppRoutes.onGenerateRoute,
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
                localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
              ),
            );
          },
        ));
  }
}
