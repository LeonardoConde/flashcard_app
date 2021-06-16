import 'package:flashcard_app/BackEnd/DataStructures/FlashCard.dart';
import 'package:flutter/cupertino.dart';
import 'BackEnd/DataStructures/Deck.dart';
import 'package:flashcard_app/BackEnd/IO/DeckFilesManipulationMobile.dart'
    if (dart.library.html) 'package:flashcard_app/BackEnd/IO/DeckFilesManipulationWeb.dart';

//  if(dart.libray.html) import
class Controller extends ChangeNotifier {
  DeckFilesManipulation fileIO = DeckFilesManipulation();
  List<String> deckNames = [];
  Deck _selectedDeck;
  bool _acertou = false;

  List<String> _decks = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  List<String> get decks => _decks;
  bool get acertou => _acertou;

  void createNewDeck(String deckName) {
    _selectedDeck = Deck(deckName);
  }

  void addCard(String frontName, String backName) {
    _selectedDeck.addFlashCard(FlashCard(frontName, backName));
    notifyListeners();
  }

  void removeCard(String frontName, String backName) {
    _selectedDeck.addFlashCard(FlashCard(frontName, backName));
    notifyListeners();
  }

  void saveDeck() {
    if (_selectedDeck.getDeckSize() > 0) {
      //Salvar deck
    }
    if (!deckNames.contains(_selectedDeck)) {
      deckNames.add(_selectedDeck.getDeckName());
      notifyListeners();
    }
  }

  void addDeck() {
    _decks.add('a');
    notifyListeners();
  }

  void setAcertou(bool a) {
    _acertou = a;
    notifyListeners();
  }

  void getDecksNames() async {
    //var test = await fileIO.readFileString();
    //fileIO.saveFileString();
    fileIO.saveFileString('vaiiiii', 'teste batata paçoca');
    print(await fileIO.readFileString('vaiiiii'));

    notifyListeners();
  }
}
