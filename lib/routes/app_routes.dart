import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/homemodel2page_screen/binding/homemodel2page_binding.dart';
import 'package:agronomek_app/screens/homemodel2page_screen/homemodel2page_screen.dart';
import 'package:agronomek_app/screens/homepage_screen/binding/homepage_binding.dart';
import 'package:agronomek_app/screens/homepage_screen/homepage_screen.dart';
import 'package:agronomek_app/screens/login_screen/binding/login_binding.dart';
import 'package:agronomek_app/screens/login_screen/login_screen.dart';
import 'package:agronomek_app/screens/map_screen/binding/maps_binding.dart';
import 'package:agronomek_app/screens/map_screen/map_screen.dart';
import 'package:agronomek_app/screens/mobileScanner_screen/binding/mobileScanner_binding.dart';
import 'package:agronomek_app/screens/mobileScanner_screen/mobileScanner_screen.dart';
import 'package:agronomek_app/screens/onboarding_1_screen/binding/onboarding_1_binding.dart';
import 'package:agronomek_app/screens/onboarding_1_screen/onboarding_1_screen.dart';
import 'package:agronomek_app/screens/onboarding_2_screen/binding/onboarding_2_binding.dart';
import 'package:agronomek_app/screens/onboarding_2_screen/onboarding_2_screen.dart';
import 'package:agronomek_app/screens/onboarding_3_screen/binding/onboarding_3_binding.dart';
import 'package:agronomek_app/screens/onboarding_3_screen/onboarding_3_screen.dart';
import 'package:agronomek_app/screens/page_loading_screen/binding/page_loading_binding.dart';
import 'package:agronomek_app/screens/page_loading_screen/page_loading_screen.dart';
import 'package:agronomek_app/screens/profile_screen/binding/profile_binding.dart';
import 'package:agronomek_app/screens/profile_screen/profile_screen.dart';
import 'package:agronomek_app/screens/profile_update_screen/binding/profile_update_binding.dart';
import 'package:agronomek_app/screens/profile_update_screen/profile_update_screen.dart';
import 'package:agronomek_app/screens/reset_password_screen/binding/reset_password_binding.dart';
import 'package:agronomek_app/screens/reset_password_screen/reset_password_screen.dart';
import 'package:agronomek_app/screens/signup_screen/binding/signup_binding.dart';
import 'package:agronomek_app/screens/signup_screen/signup_screen.dart';
import 'package:agronomek_app/screens/tempandhum_screen/TempAndHumScreen.dart';
import 'package:agronomek_app/screens/weatherReport_screen/binding/WeatherBinding.dart';
import 'package:agronomek_app/screens/weatherReport_screen/weather_report_screen.dart';


class AppRoutes {
  static String loadingScreen = '/loading_screen';

  static String boarding1Screen = '/boarding1_screen';
  
  static String boarding2Screen = '/boarding2_screen';

  static String boarding3Screen = '/boarding3_screen';

  static String loginScreen = '/login_screen';

  static String signupScreen = '/signup_screen';

  static String restPasswordScreen = '/rest_password_Screen';

  static String mapScreen = '/map_screen';

  static String homeScreen = '/home_screen';

  static String profileScreen = '/profile_screen';

  static String mobileScannerScreen = '/mobileScanner_screen';

  static String homemodel2pageScreen = '/homemodel2pageScreen';

  static String profileUpdateScreen = '/profileUpdateScreen';

  static String tempAndHumScreen = '/tempAndHumScreen';

  static String weatherReportScreen = '/weatherReportScreen';

  static String initialRoute = '/initialRoute';
  
  static List<GetPage> pages = [
    // GetPage(
    //   name: loadingScreen,
    //   page: () => PageLoadingScreen(),
    //   bindings: [
    //     PageLoadingBinding(),
    //   ],
    // ),
    GetPage(
      name: boarding1Screen,
      page: () => Onboarding1Screen(),
      bindings: [
        Onboarding1Binding(),
      ]
    ),
    GetPage(
      name: boarding2Screen,
      page: () => Onboarding2Screen(),
      bindings: [
        Onboarding2Binding(),
      ]
    ),
     GetPage(
      name: boarding3Screen,
      page: () => Onboarding3Screen(),
      bindings: [
        Onboarding3Binding(),
      ]
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen("",""),
      bindings: [
        LoginBinding(),
      ]
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ]
    ),
    GetPage(
      name: restPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ]
    ),
    GetPage(
      name: mapScreen,
      page: () => MapScreen(varLogin:"",tokenOfUser:"",listOfLatAndLong:"",resultOfGreenHouseName:"",),
      bindings: [
        MapBinding(),
      ]
    ),
    GetPage(
      name: homeScreen,
      page: () => HomepageScreen("","",""),
      bindings: [
        HomepageBinding(),
      ]
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ]
    ),
    GetPage(
      name: mobileScannerScreen,
      page: () => MobileScannerScreen(),
      bindings: [
        MobileScannerBinding(),
      ]
    ),
    GetPage(
      name: homemodel2pageScreen,
      page: () => Homemodel2pageScreen("","","",""),
      bindings: [
        Homemodel2pageBinding(),
      ]
    ),
    GetPage(
      name: profileUpdateScreen,
      page: () => ProfileUpdateScreen(),
      bindings: [
        ProfileUpdateBinding(),
      ]
    ),
    GetPage(
      name: weatherReportScreen,
      page: () => WeatherReportScreen(),
      bindings: [
        WeatherReportBinding(),
      ]
    ),
    GetPage(
      name: initialRoute,
      page: () => Onboarding1Screen(),
      bindings: [
        Onboarding1Binding(),
      ],
    ),
  ];
}
