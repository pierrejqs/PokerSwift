import UIKit


// 1. Création d'un deck de 52 cartes
    // Prendre la liste des cartes et la stocker de manière aléatoire
// 2. Piocher 2 cartes
// JOUER : MISER / COUCHER / VOIR
// 3. Mettre 3 cartes au milieu
// JOUER : MISER / COUCHER / VOIR
// 4. Ajouter une nouvelle carte au milieu
// JOUER : MISER / COUCHER / VOIR
// 5. Ajouter une nouvelle carte au milieu



// Liste des couleurs
enum Suit: String, CaseIterable {
    case spades = "♠️"
    case hearts = "♥️"
    case diamonds = "♦️"
    case clubs = "♣️"
}


// Liste des cartes
enum Card: String, CaseIterable {
    case ace = "1️⃣"
    case king = "🤴"
    case queen = "👸"
    case jack = "🧑‍🎨"
    case ten = "🔟"
    case nine = "9️⃣"
    case eight = "8️⃣"
    case seven = "7️⃣"
    case six = "6️⃣"
    case five = "5️⃣"
    case four = "4️⃣"
    case three = "3️⃣"
    case two = "2️⃣"
}



func generateGame() ->  [String] {
    var deck = Array<String>()
    for suit in Suit.allCases {
        for card in Card.allCases {
            deck += ["\(card) \(suit)"]
        }
    }
    
    return deck.shuffled()
}
func draw(cards:Int, from: inout [String]) -> [String] {
    var newCards = Array<String>()
    
    for cardIndex in 1...cards {
        newCards += [from[cardIndex - 1]]
    }
    from.removeSubrange(0...cards)
    return newCards
}


var deck = generateGame()
let firstDraw = draw(cards: 2, from: &deck)


