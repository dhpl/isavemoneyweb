import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:save_money_web/common/const_images.dart';
import 'package:save_money_web/common/share_colors.dart';
import 'package:save_money_web/common/share_styles.dart';
import 'package:save_money_web/screens/home_blackpink_screen/widgets/logo_with_text_widget.dart';
import 'package:save_money_web/screens/home_screen/cubit/home_cubit.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeBlackpinkScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<HomeCubit> provider() {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeBlackpinkScreen(),
    );
  }

  const HomeBlackpinkScreen({Key? key}) : super(key: key);

  @override
  State<HomeBlackpinkScreen> createState() => _HomeBlackpinkScreenState();
}

class _HomeBlackpinkScreenState extends State<HomeBlackpinkScreen> {
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
                          'Blackpink Wallpaper',
                          style: ShareStyles.bold.copyWith(
                            fontSize: 32,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Welcome to the fantastic app designed exclusively for Blackpink fans on mobile devices! With this app, you will experience unique and stunning wallpapers featuring the world-renowned girl group – Blackpink, every time you unlock your phone. \nKey Features: \n1. High-Quality Blackpink Wallpapers: Enjoy high-resolution wallpapers specially designed for your mobile device. The sharp and vibrant images will refresh your phone screen every day. \n2. Diverse Wallpaper Collection: The app offers an extensive collection of hundreds of unique Blackpink wallpapers, ranging from official photos to creative artwork, without any duplicates. You'll never run out of ideas for new wallpapers. \n3. Regular Updates: We are committed to providing fresh and captivating wallpapers continuously, ensuring you always have something new and exciting to explore. You'll never get bored with your phone's display again!\n4.User-Friendly Interface: The app features a user-friendly interface that allows you to easily browse through the collection and set a new wallpaper in just a few simple steps. \nAs a Blackpink fan, you cannot miss out on this Blackpink wallpaper app! Download it now to decorate your phone with beautiful images of Jennie, Jisoo, Lisa, and Rosé.",
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
                                      'https://play.google.com/store/apps/details?id=com.plstore.wallpaper_blackpink');
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
                      'assets/icons/unnamed.webp',
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
