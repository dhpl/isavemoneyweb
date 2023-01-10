import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/background.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'iSaveMoney',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff3378),
                        fontSize: 60,
                      ),
                    ),

                    /// Message
                    const SizedBox(height: 20),
                    Text(
                      "How do you manage your budget and watch every dollar? With Monefy, your financial organizer and finance tracker, it’s simple. Each time you buy a coffee, pay a bill, or make a daily purchase, you only need to add each expense you have — that's it! Just add new records each time you make a purchase. It’s done in one click, so you don’t need to fill anything except the amount. Tracking daily purchases, bills, and everything else you spend money on has never been so quick and enjoyable with this money manager.",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: const Color(0xffff3378).withOpacity(0.5),
                        fontSize: 17,
                      ),
                    ),

                    /// Contact US
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Contact
                        Flexible(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.phone),
                            label: const Text(
                              'Contact us: +84966618746',
                            ),
                          ),
                        ),

                        /// Support
                        Flexible(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.help),
                            label: const Text(
                              'Support: isavemoney.help@gmail.com',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
