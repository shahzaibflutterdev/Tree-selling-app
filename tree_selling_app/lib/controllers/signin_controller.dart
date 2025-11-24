import 'package:get/get.dart';

class SigninController extends GetxController {
  final passwordVisibility = false.obs;

  togglePasswordVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }
}
