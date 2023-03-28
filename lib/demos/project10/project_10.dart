import 'package:flutter/material.dart';

class Project10 extends StatelessWidget {
  const Project10({super.key});

  final godofwaradress = "https://www.seekpng.com/png/detail/53-532491_kratos-transparent-image-god-of-war-png.png";
  final godofwarname = "God Of War";
  final zerodawnadress = "https://www.nicepng.com/png/full/142-1421627_logo-horizon-zero-dawn-png.png";
  final zerodawnname = "Horizon Zero Down";
  final readdeadadress =
      "https://cdn2.unrealengine.com/Diesel%2Fproductv2%2Fheather%2Fhome%2FEGS_RockstarGames_RedDeadRedemption2_IC1-625x625-38ae1bca6b89370d01ac3ed3a17daf7dd004f9f5.png?h=270&resize=1&w=480";
  final readdeanname = "Read Dead Redemption 2";
  final dyinlightaddress =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Dying_Light_2_Stay_Human.svg/2560px-Dying_Light_2_Stay_Human.svg.png";
  final dyinglightname = "Dying Light 2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  "Steam",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.w600, fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
            backgroundColor: Colors.grey[800],
            leading: Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.align_horizontal_left,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _ContainerImage(imageAdress: godofwaradress, gameName: godofwarname),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: _ContainerImage(
                gameName: zerodawnname,
                imageAdress: zerodawnadress,
              ),
            ),
            _ContainerImage(imageAdress: readdeadadress, gameName: readdeanname),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: _ContainerImage(imageAdress: dyinlightaddress, gameName: dyinglightname),
            )
          ],
        ));
  }
}

class _ContainerImage extends StatelessWidget {
  const _ContainerImage({
    Key? key,
    required this.imageAdress,
    required this.gameName,
  }) : super(key: key);

  final String imageAdress;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: 210,
      width: 125,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.network(
              imageAdress,
              height: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              gameName,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Colors.black, fontStyle: FontStyle.italic, fontWeight: FontWeight.w800, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
