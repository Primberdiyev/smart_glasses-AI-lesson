import 'package:flutter/material.dart';

class DetailedAnalysisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double youtubeTime = 1.5;
    double instagramTime = 1.0;
    double telegramTime = 0.5;
    double tiktokTime = 0.5;

    double totalTime = youtubeTime + instagramTime + telegramTime + tiktokTime;

    String analysisText = '';

    if (youtubeTime > instagramTime &&
        youtubeTime > telegramTime &&
        youtubeTime > tiktokTime) {
      analysisText =
          'Sizning farzandingiz YouTube platformasiga ko\'proq vaqt sarflamoqda. '
          'Bu ko\'pincha multfilmlar yoki o\'yinlar tomosha qilishni anglatadi. '
          'Agar bu multfilmga qiziqish bo\'lsa, farzandingizning tomosha qilayotgan kontentini nazorat qilishingiz kerak. '
          'Bu yaxshi bo\'lishi mumkin, chunki multfilmlar farzandingizga yangi bilimlarni o\'rgatishi mumkin, lekin ular kontentning turiga qarab o\'zgaradi.\n\n';
    } else if (instagramTime > youtubeTime &&
        instagramTime > telegramTime &&
        instagramTime > tiktokTime) {
      analysisText =
          'Instagramda ko\'proq vaqt sarflanmoqda. Bu ko\'pincha rasmlar, videolar va hikoyalar tomosha qilishni anglatadi. '
          'Farzandingizning Instagramdagi faoliyatini nazorat qilishni maslahat beramiz, chunki ijtimoiy tarmoqlarda juda ko\'p vaqt sarflash, uning diqqatini tarqatishi mumkin. '
          'Agar farzandingizni Instagramda ko\'proq vaqt sarflayotganini ko\'rsangiz, ijtimoiy tarmoqlarda foydali kontentga e\'tibor qaratishga yordam bering.\n\n';
    } else if (telegramTime > youtubeTime &&
        telegramTime > instagramTime &&
        telegramTime > tiktokTime) {
      analysisText =
          'Telegramda ko\'proq vaqt sarflanmoqda. Bu, ehtimol, guruhlarda suhbatlashish yoki o\'quv materiallarini izlashni anglatadi. '
          'Telegramning ta\'siri ko\'pincha to\'g\'ri guruhlarga qo\'shilish va foydali ma\'lumotlar olish bilan bog\'liq. '
          'Farzandingizning Telegramdagi faoliyatini nazorat qilish va uning o\'qish maqsadlaridan foydalanishiga yordam berish tavsiya etiladi.\n\n';
    } else if (tiktokTime > youtubeTime &&
        tiktokTime > instagramTime &&
        tiktokTime > telegramTime) {
      analysisText =
          'TikTokda ko\'proq vaqt sarflanmoqda. Bu qisqa videolarni tomosha qilishni anglatadi. '
          'TikTokning ta\'siri ko\'pincha uning qisqa videolariga e\'tibor qaratishdan kelib chiqadi. '
          'Farzandingizni TikTokda ko\'p vaqt sarflayotganini ko\'rsangiz, bu ijtimoiy media tarkibining ta\'siriga e\'tibor berish kerak. '
          'TikTokda vaqt sarflashning ko\'pligi, agar u zararli yoki yoshiga mos bo\'lmagan kontentni ko\'rsatsa, salbiy ta\'sir ko\'rsatishi mumkin.\n\n';
    } else {
      analysisText =
          'Farzandingiz ko\'proq vaqtni turli ilovalarda teng sarflamoqda. '
          'Bu yaxshi, chunki farzandingiz turli xil faoliyatlarga e\'tibor berayotgani ko\'rinadi. '
          'Bunday holatda, barcha ilovalar bilan bog\'liq faoliyatlarni taqsimlashni davom ettirish kerak, shu bilan birga, har bir platformaning foydaliligini nazorat qilish muhim.\n\n';
    }

    String generalAnalysis =
        'Farzandingizning umumiy vaqt sarflanishi: ${totalTime.toStringAsFixed(1)} soat.\n\n'
        'Tahlil davomida, sizning farzandingizning ko\'proq vaqt sarflaydigan platformasi aniqlanadi va unga mos tavsiyalar beriladi.';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Farzandning Tahlili"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Umumiy Sarflangan Vaqt: ${totalTime.toStringAsFixed(1)} soat',
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            // Har bir ilovaga sarflangan vaqtni ko'rsatish
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'YouTube: ${youtubeTime.toStringAsFixed(1)} soat',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Instagram: ${instagramTime.toStringAsFixed(1)} soat',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Telegram: ${telegramTime.toStringAsFixed(1)} soat',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'TikTok: ${tiktokTime.toStringAsFixed(1)} soat',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            // Batafsil tahlil
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Batafsil Tahlil:',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                analysisText + generalAnalysis,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
