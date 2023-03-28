part of "./part_of_learn.dart";

class _PartofAppBar extends StatelessWidget with PreferredSizeWidget {
  const _PartofAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("data"),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded))],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// import material yapmana gerek yok cunku diğer sayfanın part of u yani parçası!
// Yani ana classtaki yani sayfadakı bütün importlar buraya gelir.
// Buraya importlayacagın paket varsa da importladıktan sonra buraya değil
// Ana sayfaya düşer.Yani parçası oldugun sayfaya.