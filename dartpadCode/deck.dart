void main() {
  var deck = Deck();
  deck.shuffle();
  print(deck);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank, suit);

        cards.add(card);
      }
    }
  }
  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    cards.where((card) {
      return card.suit == suit;
    });
  }
}

class Card {
  String suit;
  String rank;

  Card(this.suit, this.rank);

  toString() {
    return '$rank of $suit';
  }
}