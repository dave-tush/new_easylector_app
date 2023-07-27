// import 'package:flutter/material.dart';
//
// import '../../../house page/dart pages/best deals/Best_deal_slide.dart';
//
// class Bossman extends StatefulWidget {
//   const Bossman({Key? key}) : super(key: key);
//
//   @override
//   State<Bossman> createState() => _BossmanState();
// }
//
// class StickySliver extends SingleChildRenderObjectWidget {
//   const StickySliver({Widget? child, Key? key}) : super(child: child, key: key);
//
//   @override
//   RenderObject createRenderObject(BuildContext context) => Best_deal();
// }
//
// class _BossmanState extends State<Bossman> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CustomScrollView(
//           slivers: [
//             SliverToBoxAdapter(
//                 child: Best_deal()
//             ),
//             StickySliver(
//                 child: Best_deal()
//             ),
//             SliverToBoxAdapter(
//                 child: Best_deal()
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
