import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Box extends StatelessWidget {
  String imageUrl;
  String title;

  Box(this.imageUrl, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        semanticContainer: true,
        child: InkWell(
          splashColor: const Color(0xfff6f8f9),
          child: SizedBox(
            width: 150,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Svg(
                                imageUrl,
                                source: SvgSource.network
                            )
                        )
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text(title),
                    ),
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
