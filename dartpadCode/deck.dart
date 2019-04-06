void main() {
  // var deck = new Deck();
  var deck = new Deck();
  deck.shuffle();
  // print(deck.cardsWithSuit('Diamonds'));
  // print(deck.deal(5));
  print(deck.removeCard('Diamonds', 'Ace'));
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var mySuit in suits) {
      for (var rank in ranks) {
        var card = new Card(suit: mySuit, rank: rank);
        cards.add(card);
      }
    }
  }
  toString() {
    return cards.toString();
  }

  // Sort by random value
  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}

class Card {
  String suit;
  String rank;

  Card({this.suit, this.rank});

  toString() {
    return '$rank of $suit';
  }
}
