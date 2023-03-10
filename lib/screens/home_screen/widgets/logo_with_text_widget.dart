import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:save_money_web/common/configs.dart';
import 'package:save_money_web/common/const_images.dart';
import 'package:save_money_web/common/share_styles.dart';

class LogoWithTextWidget extends StatelessWidget {
  /// MARK: - Initials;
  const LogoWithTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Logo
        Image.asset(
          ConstImages.kLogo,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 8.0),
        Text(
          Configs.kAppName,
          style: ShareStyles.bold.copyWith(
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
