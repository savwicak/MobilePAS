
// import 'package:flutter/material.dart';
// import 'package:flutterchallange/controllers/team_controller.dart';
// import 'package:get/get.dart';

// class FeatScreen extends StatefulWidget {
//   const FeatScreen({super.key});

//   @override
//   State<FeatScreen> createState() => _FeatScreenState();
// }

// class _FeatScreenState extends State<FeatScreen> {
//   late final SportController controller;

//   @override
//   void initState() {
//     super.initState();

//     controller = Get.put(SportController());

//     controller.fetchSports();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(() {
//         if (controller.isLoading.value) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }

//         if (controller.errorMessage.value.isNotEmpty) {
//           return Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(controller.errorMessage.value),
//                 const SizedBox(height: 12),
//                 ElevatedButton(
//                   onPressed: () {
//                     controller.fetchSports();
//                   },
//                   child: const Text('Coba Lagi'),
//                 ),
//               ],
//             ),
//           );
//         }

//         // final sport = controller.teamList;

//         // if (sport.isEmpty) {
//         //   return const Center(
//         //     child: Text('Tidak ada data asteroid'),
//         //   );
//         // }

//     //     return ListView.builder(
//     //       padding: const EdgeInsets.all(16),
//     //       itemCount: sport.length,
//     //       itemBuilder: (context, index) {
//     //         final sport = sport[index];

//     //         // final logoclub = teamList;

//     //         return Card(
//     //           margin: const EdgeInsets.only(bottom: 12),
//     //           child: Padding(
//     //             padding: const EdgeInsets.all(16),
//     //             child: Column(
//     //               crossAxisAlignment: CrossAxisAlignment.start,
//     //               children: [
//     //                 Text(
//     //                   sport.id,
//     //                   style: const TextStyle(
//     //                     fontSize: 18,
//     //                     fontWeight: FontWeight.bold,
//     //                   ),
//     //                 ),
//     //                 const SizedBox(height: 8),
//     //                 Text('badge: ${sport.strBadge}'),
//     //                 Text(
//     //                   'Teams '
//     //                   '${sport.strTeam}',
//     //                 ),
//     //                 Text(
//     //                   'Stadium: '
//     //                   '${sport.strStadium}',
//     //                 ),
//     //               ],
//     //             ),
//     //           ),
//     //         );
//     //       },
//     //     );
//     //   }),
//     // );
//   }
// }
