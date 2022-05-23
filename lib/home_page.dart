import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:dio/dio.dart';
import 'dart:typed_data'; // Uint8List

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () async {
            const stringUri =
                "https://image.itmedia.co.jp/business/articles/2202/22/l_ko_neko_00.jpg";

            final response = await Dio().get(stringUri,
                options: Options(responseType: ResponseType.bytes));
            final result = await ImageGallerySaver.saveImage(
              Uint8List.fromList(response.data),
              quality: 60,
              name: "catImage",
            );
            print(result);
          },
          child: const Text("画像保存")),
    );
  }
}
