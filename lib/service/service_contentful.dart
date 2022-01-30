import 'package:contentful/contentful.dart';
import '../contentful.dart';

class EventRepository {
  EventRepository(this.contentful);
  final Client contentful;

  Future<List<Event>> findAllCategory() async {
    final collection = await contentful.getEntries<Event>({
      'content_type': 'category',
    }, Event.fromJson);

    return collection.items;
  }
}