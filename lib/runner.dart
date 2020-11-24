import 'api.dart';

main(List<String> args) async {
  print(await V2Api().historyGet());
  for (var item in [551, 552, 554, 555, 561, 9611]) {
    print(await V2Api().historyGet(codes: [item], limit: 100));
  }

  print(await JsonApi().jmaQuakeGet(limit: 100));
  print(await JsonApi().jmaTsunamiGet(limit: 100));
}
