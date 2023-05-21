import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navToHomeView() async {
    final result = await _navigationService.replaceWithHomeView(
        startingIndex: 0, transition: TransitionsBuilders.slideTop);
    print("Result: $result");
  }
}
