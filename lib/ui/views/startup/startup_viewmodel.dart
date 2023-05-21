import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:my_first_app/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authenticationService = locator<AuthenticationService>();

  Future runStartupLogic() async {
    if (_authenticationService.userLoggedIn()) {
      _navigationService.replaceWith(Routes.homeView);
    } else {
      _navigationService.replaceWith(Routes.loginView);
    }
  }
}
