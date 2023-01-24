import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:save_money_web/common/const_images.dart';
import 'package:save_money_web/common/share_colors.dart';
import 'package:save_money_web/common/share_styles.dart';
import 'package:save_money_web/screens/home_screen/cubit/home_cubit.dart';
import 'package:save_money_web/screens/home_screen/widgets/logo_with_text_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<HomeCubit> provider() {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            const LogoWithTextWidget(),
            const Divider(),

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
                          'iSaveMoney - Budget & Expenses',
                          style: ShareStyles.bold.copyWith(
                            fontSize: 32,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "How do you manage your budget and watch every dollar?\nWith Monefy, your financial organizer and finance tracker, it’s simple. Each time you buy a coffee, pay a bill, or make a daily purchase, you only need to add each expense you have — that's it! Just add new records each time you make a purchase. It’s done in one click, so you don’t need to fill anything except the amount. Tracking daily purchases, bills, and everything else you spend money on has never been so quick and enjoyable with this money manager.",
                          style: ShareStyles.normal.copyWith(
                            color: Colors.grey,
                          ),
                        ),

                        /// Button Download App
                        const SizedBox(height: 80),
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  launchUrlString(
                                      'https://apps.apple.com/us/app/isavemoney-budget-expenses/id1664008460');
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
                                        ConstImages.kAppStore,
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
                                            'Download on the',
                                            style: ShareStyles.normal.copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'App Store',
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

                            /// Google
                            const SizedBox(width: 20),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  launchUrlString(
                                      'https://play.google.com/store/apps/details?id=com.plstore.isavemoney');
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
                      ConstImages.kBackgroundHome,
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
