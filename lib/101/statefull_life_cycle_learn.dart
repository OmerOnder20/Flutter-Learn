import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("c");
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
    print("b");
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _computeName();
    print("a");
  }

  @override
  void dispose() {
    super.dispose();
    _message = "";
  }
  //dispose metodu sayfayla iş bittikten sonra sayfayı öldürür yani temizler.
  //En çok initState,didUpdateWidget ve dispose kullanılır.initState gelen verinin(controller da olabilir) üstüne
  //tekrardan sil baştan yenisini başlatır veya yazar(gelen veri dışarıdan da gelebilir biz kendimiz de verebiliriz).
  //Gelen veriyi veya verdiğimiz veriyi başka bir değişkene tanımlarız.
  //Bu değişken tanımlanmamış olması gerekir biz kendimiz initState içinde tanımlarız.
  //Veriyi ilk kullanım şeklini aldırtır.Verinin kullanıldığı
  //ilk yerdir.Adı üstünde.Sonradan değişecekse
  //didUpdateWidget devreye girer.***Ama didUpdateWidget dışarıdan gelen veriler için kullanılır.
  //didUpdateWidget ise verinin yerine gelen yeni veriyi
  //update yapar yani günceller.Adı üstünde.

  void _computeName() {
    if (widget.message.length.isOdd) {
      _message += " Çift ";
    } else {
      _message += " Tek ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: widget.message.length.isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = "a";
                });
              },
              child: Text(_message)),
    );
  }
}
