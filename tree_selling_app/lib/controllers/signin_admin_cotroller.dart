import 'package:get/get.dart';

class SigninAdminCotroller extends GetxController {
  final passwordVisibility = false.obs;

  togglePasswordVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }
}
