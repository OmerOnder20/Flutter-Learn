import 'package:first_project_flutter/demos/project12/project_12_service_models.dart';
import 'package:flutter/material.dart';

import '../demos/project12/post_model_demo_1.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> with AutomaticKeepAliveClientMixin {
  final IpostService _postService = ServiceModels();
  late final Future<List<PostDemoModel>?> _itemsFuture;
  @override
  void initState() {
    super.initState();
    _itemsFuture = _postService.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        actions: [ElevatedButton(onPressed: () {}, child: const Icon(Icons.ac_unit))],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
      body: FutureBuilder(
        future: _itemsFuture,
        builder: (BuildContext context, AsyncSnapshot<List<PostDemoModel>?> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Placeholder();
            case ConnectionState.waiting:
            case ConnectionState.active:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(child: ListTile(title: Text(snapshot.data?[index].body ?? "")));
                  },
                );
              } else {
                return const Placeholder();
              }
          }
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

// ConnectionState.none     internet durumu yokken yani internet yokken
// ConnectionState.waiting  internet bağlantısı bekleniyorken
// ConnectionState.active   internet bağlantısı varken
// ConnectionState.done     internet bağlantısı tamamlanmışsa


//  ***** İlk önce tabbar_advance.dart ı kol et.
// tabbar_advance.dart sayfasında sayfayı değiştirip tekrar geri geldiğinde
//  servis tekrardan istek atar.
//  bu olmaması gereken bir şey,her zaman tekrardan istek atmaması lazım.
// bunun çözümü:    
// with AutomaticKeepAliveClientMixin i ekle.Sonrasında ise
// 1 adet missing override gelecek onu ekle.
// Widget build(BuildContext context) {    buna       super.build(context); bunu yolla.
// Bunun anlamı bu contexti korumak istiyorum demek.
// Sonrasında ise    bool get wantKeepAlive =>  bunu true döndür.


// aynı sayfada floating action buttona tıkladıgında ve sayfa güncellendiğinde
// servise tekrardan istek atmaması için de çözümü 14.videoda.Kesinlikle izle
// *****FutureBuilder
// initState e koyduk cunku ınıtstate sadece 1 kere calısır.Burada da servise
// sadece 1 kez istek atar. Yani datayı sadece 1 kere çektik :)
