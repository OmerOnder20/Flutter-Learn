import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return _CustomSheet(backgroundColor: _backgroundColor);
              });
          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.brown;
            });
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    Key? key,
    required Color backgroundColor,
  }) : super(key: key);

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.white;
  final _gripHeight = 30.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: _gripHeight,
              child: Stack(
                children: [
                  Divider(
                    color: Colors.black26,
                    thickness: 4,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    height: 10,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close)),
                  )
                ],
              ),
            ),
            const Text("Data"),
            Image.network(
              "https://picsum.photos/200",
              height: 300,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _backgroundColor = Colors.redAccent;
                  });
                  Navigator.of(context).pop<bool>(true);
                },
                child: const Text("Okey"))
          ],
        ),
      ),
    );
  }
}




// Sheet komponenti genelde seçim,filtreleme gibi işlerde kullanılır.
// Alert komponenti genelde çıkış yap,evet veya hayır gibi durumlarda kullanılır.
// SnackBar kompenenti genelde haber vermek,notification(bildirim) gibi durumlarda kullanılır.

// Navigator.of(context).pop();    Bu kod butona bastıgımızda Sheet Bottomu kapattı.Bunu sayfayı
// tekrardan açıyormuş gibi düşünebilirsin.

// Not:Eğer extract widget diyince dışarı çıkmazsa içindeki on pressed içindekileri kaldır!

// Void yazmıyorsa sadece Future yazıyorsa direkt sonuç döndrüyordur.Void işini yapar çıkar
// sadece Future yazanlar ise result yani sonuç döndürür.