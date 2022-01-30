import 'package:flutter/material.dart';
import 'package:contentful/contentful.dart';
import '../module/box.dart';
import '../service/service_contentful.dart';
import '../contentful.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final repo = EventRepository(Client(
    BearerTokenHTTPClient('B9SUv1dgYGgItrtS4ix5jX1Rd5kioSVGG5bd1eB0QJ0'),
    spaceId: 'oxzain8j0qg1',
  ));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Test Contentful'),
        ),
        elevation: 0,
      ),
      body: FutureBuilder<List<Event>>(
        future: repo.findAllCategory(),
        builder: (BuildContext context, AsyncSnapshot<List<Event>> snapshot) {
          if (snapshot.hasData) {
            List<Widget> list = [];
            snapshot.data?.forEach((element) {
              list.add(Box('https:' + element.fields!.icon.fields!.file!.url, element.fields!.title));
            });

            return GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: list,
            );
          } else {
            return const Center(
              child: Text('Cargando...'),
            );
          }
        },
      )
    );
  }
}