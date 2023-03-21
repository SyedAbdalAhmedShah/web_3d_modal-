import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final WebViewXController _controller;
  final String headPhoneDescription =
      'Headphones are a hardware device that can be plugged into a computer, laptop, smartphone, mp3 player or other device to privately listen to audio without disturbing anyone in the vicinity. They are plug-and-play devices and do not require any sort of installation before use.';

  @override
  Widget build(BuildContext context) {
    final themeColor = Color(0xAAB09391);
    final darkThemeColor = Color(0xFFB09391);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WebViewX(
            height: 450,
            width: double.infinity,
            initialContent: 'https://app.vectary.com/p/4nZyPGAzf1NIw1UMp4tkKM',
            initialSourceType: SourceType.url,
            onWebViewCreated: (controller) => _controller = controller,
            javascriptMode: JavascriptMode.unrestricted,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Headsphones Vectry ll',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        color: themeColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'HEADPHONES',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        color: themeColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'ELECTRONICS',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  headPhoneDescription,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: darkThemeColor,
                    letterSpacing: 2,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        maintainBottomViewPadding: true,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkThemeColor,
            padding: const EdgeInsets.symmetric(vertical: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                30,
              ),
            ),
          ),
          onPressed: () {},
          child: const Text("PURCHASE"),
        ),
      ),
    );
  }
}
