import 'package:api_sample/application/dashboard/home_notiifer.dart';
import 'package:api_sample/core/enum.dart';
import 'package:api_sample/core/logger.dart';
import 'package:api_sample/presenation/widgets/custom_sizedbox.dart';
import 'package:api_sample/presenation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeNotifier = ref.watch(homeNotifierProvider);
    return Scaffold(
      body: homeNotifier.when(
          data: (data) {
            Logger.log(msg: "Count == ${data.length}");
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  var item = data[index];
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: DBL.twenty.val,),
                    child: Card(
                      child: Column(
                        children: [
                          CustomSizedBox(
                            height: DBL.five.val,
                          ),
                          CustomText(item.name?.first ?? ""),
                          CustomSizedBox(
                            height: DBL.five.val,
                          ),
                          CustomText(item.location?.country ?? ""),
                          CustomSizedBox(
                            height: DBL.five.val,
                          ),
                          CustomText(item.location?.state ?? ""),
                          CustomSizedBox(
                            height: DBL.five.val,
                          ),
                          CustomText(item.location?.city ?? ""),
                          CustomSizedBox(
                            height: DBL.five.val,
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          error: ((error, stacktrace) => Center(child: Text(error.toString()))),
        loading: () {
          return const Center(child: CircularProgressIndicator(),);
        }),
    );
  }
}
