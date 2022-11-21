
import 'package:get/get.dart';

extension PercentageSized on double {
  double get hp => (Get.height * (this / 100));

  double get wp => (Get.width * (this / 100));
}

extension ResponsiveText on double {
  double get sp => Get.width / 100 * (this / 3);
}

// extension HexColor on Color {
//   static Color fromHex(String hexString) {
//     final buffer =StringBuffer();
//     if (hexString.length== 6 || hexString.length ==7 ) buffer.write(object)
//   }
// }
