import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:save_money_web/common/const_images.dart';
import 'package:save_money_web/common/share_colors.dart';
import 'package:save_money_web/common/share_styles.dart';
import 'package:save_money_web/screens/home_screen/cubit/home_cubit.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeAiScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<HomeCubit> provider() {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeAiScreen(),
    );
  }

  const HomeAiScreen({Key? key}) : super(key: key);

  @override
  State<HomeAiScreen> createState() => _HomeBlackpinkScreenState();
}

class _HomeBlackpinkScreenState extends State<HomeAiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ShareColors.kWhiteColor,
              ShareColors.kPrimaryColor.withOpacity(0.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
        child: Column(
          children: [
            /// Header
            // const LogoWithTextWidget(),
            // const Divider(),

            /// Body
            const SizedBox(height: 40),
            Expanded(
              child: Row(
                children: [
                  /// Description
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ai Girls',
                          style: ShareStyles.bold.copyWith(
                            fontSize: 32,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Welcome to \"AI Girls\" - the revolutionary AI-powered image downloader app. With \"AI Girls,\" you'll explore a vast and unique collection of images, all generated using cutting-edge AI technology. Enjoy stunning and diverse visuals, providing you with an immersive and captivating experience. Get ready to be mesmerized by the distinctive beauty that \"AI Girls\" brings to your fingertips. Download now to discover and share your passion with the world!",
                          style: ShareStyles.normal.copyWith(
                            color: Colors.grey,
                            height: 2,
                          ),
                        ),

                        /// Button Download App
                        const SizedBox(height: 80),
                        Row(
                          children: [
                            /// Google
                            const SizedBox(width: 20),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  launchUrlString(
                                      'https://play.google.com/store/apps/details?id=com.plstore.aigirls');
                                },
                                behavior: HitTestBehavior.opaque,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        ConstImages.kGooglePlay,
                                        color: Colors.white,
                                        width: 30,
                                        height: 30,
                                      ),
                                      const SizedBox(width: 8.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Get it on',
                                            style: ShareStyles.normal.copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Google Play',
                                            style: ShareStyles.bold.copyWith(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  /// Image
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Image.asset(
                      'assets/images/background_ai.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            /// Footer
            const SizedBox(height: 20),
            Container(
              width: Get.width,
              padding: const EdgeInsets.all(8.0),
              child: TextButton.icon(
                onPressed: () {
                  launchUrlString('mailto://isavemoney.help@gmail.com');
                },
                icon: const Icon(
                  Icons.help,
                  color: Colors.black,
                ),
                label: Text(
                  'Support: isavemoney.help@gmail.com',
                  style: ShareStyles.normal.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
