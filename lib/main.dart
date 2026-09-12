import 'package:flutter/material.dart';

void main() {
  runApp(const AalTareeqApp());
}

class AalTareeqApp extends StatelessWidget {
  const AalTareeqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'عَالطَّرِيق',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1E222A),
        primaryColor: const Color(0xFFFF6B00),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFF6B00),
          surface: Color(0xFF242933),
        ),
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عَالطَّرِيق', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        centerTitle: true,
        backgroundColor: const Color(0xFF242933),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.local_shipping_rounded,
              size: 80,
              color: Color(0xFFFF6B00),
            ),
            const SizedBox(height: 16),
            const Text(
              'وصل طردك بذكاء',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF242933),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFFFF6B00).withOpacity(0.4)),
              ),
              child: const Text(
                '📍 الخطوط: درعا ⇆ دمشق وقراها',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFFFF6B00), fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF6B00),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {},
              child: const Text('أنا سائق / مسافر', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFFFF6B00), width: 2),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {},
              child: const Text('أنا أريد إرسال طرد', style: TextStyle(fontSize: 18, color: Color(0xFFFF6B00), fontWeight: FontWeight.bold)),
            ),
            const Spacer(),
            const Text(
              '🎁 الشهر الأول مجاني بالكامل • ثم 1\$ فقط لكل طلب توصيل',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white38, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
