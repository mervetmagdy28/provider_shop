import 'item.dart';

class CatalogModel{
  List<String> itemNames=[
    'Hand Cream',
    'Lisa Pollock',
    'Babiators',
    'blackMILK',
    'Voodoo',
    'Artico',
    'Bonds',
    'Jockey',
    'Vitals',
    'William Morris',
    'BLU.HEN',
    'Mary Grace',
    'Vera May',
    'Sundaise',
    'Intrinsic',
  ];


  Item getById (int id){
    return Item(id ,itemNames[id %itemNames.length]);
  }
}