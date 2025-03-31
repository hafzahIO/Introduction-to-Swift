import Foundation

// Part 1: Creating Structs

struct Creature {
  let name: String
  let description: String
  let isGood: Bool
  var magicPower: Int

  // Part 2: Fibonacci Creature Abilities
  var ability: String {
    "a magic power strength of \(magicPower) points which translates into \(fibonacciAbility(number: magicPower)) points of special ability."
  }
  
  // Part 2: Fibonacci Creature Abilities
  func fibonacciAbility(number: Int) -> Int {
    if number < 0 {
      return 0
    }
    
    if number > 37 {
      return 24_157_817
    }
    
    let numerator: Double = pow((1 + 5.squareRoot()), Double (number)) - pow((1 - 5.squareRoot ()), Double (number))
    let denominator: Double = (pow(2.0, Double (number))) * 5.squareRoot()
    return Int(numerator / denominator)
  }
  
//  // Part 4: Mythical Creature Interactions
//  func interactWith(creature: Creature) {
//    
//    switch (self.isGood, creature.isGood) {
//    case (false, false):
//      let combinedPowers = self.magicPower + creature.magicPower
//      print("Both creatures are evil and have a combined magic power of\(combinedPowers).")
//    
//    case (false, true):
//      let combinedPowers = self.magicPower - creature.magicPower
//      if combinedPowers > 0 {
//        print("To beat the evil \(self.name), you have to increase \(creature.name)'s magic power by more than \(abs(combinedPowers)) points.")
//      } else if combinedPowers < 0 {
//        print("\(creature.name) is strong enough to beat \(self.name). Look out for any unexpected evil backup")
//      } else {
//        print("Both creatures are equally strong. Find a way to increase \(creature.name)'s chances of winning.")
//      }
//    
//    case (true, false):
//      let combinedPowers = self.magicPower - creature.magicPower
//      if combinedPowers > 0 {
//        print("\(self.name) is strong enough to beat \(creature.name). Look out for any unexpected evil backup")
//      } else if combinedPowers < 0 {
//        print("To beat the evil \(creature.name), you have to increase \(self.name)'s magic power by more than \(abs(combinedPowers)) points.")
//      } else {
//        print("Both creatures are equally strong. Find a way to increase \(self.name)'s chances of winning.")
//      }
//    
//    default:
//      let combinedPowers = self.magicPower + creature.magicPower
//      print("Both creatures are good and have a combined magic power of\(combinedPowers).")
//    }
//  }
  
  // Part 4: Mythical Creature Interactions
  func interactWith(creature: Creature) {
    switch (self.isGood, creature.isGood) {
    case (false, false):
      print("Both creatures are evil; it's good that they are fighting each other.")
    
    case (false, true):
      print("The evil \(self.name) is fighting the good \(creature.name). Do you think we can convince \(self.name) to turn to the right side?")
      
    case (true, false):
      print("I guess there is no better time to fight the evil \(creature.name), right?!")
    
    default:
      print("Both creatures are good and there is no point in them fighting each other. What can we do?")
    }
  }
  
}


var astralHorn = Creature(name: "Astral Horn", description: "unicorn", isGood: true, magicPower: 9)
var infernoDrake = Creature(name: "Inferno Drake", description: "dragon", isGood: false, magicPower: 8)
var emberSoul = Creature(name: "Ember Soul", description: "phoenix", isGood: true, magicPower: 6)

astralHorn.ability
infernoDrake.ability
emberSoul.ability

// Part 3: The Mythical Creature
var creatureCatalog: [Creature] = []
creatureCatalog.append(astralHorn)
creatureCatalog.append(infernoDrake)
creatureCatalog.append(emberSoul)

// Part 3: The Mythical Creature
func describeCreature(creatureArray: [Creature]) {
  for creature in creatureArray {
    print("\(creature.name) is a \(creature.description) and has \(creature.ability)")
    
    // Part 4: Mythical Creature Interactions
    print("\(creature.interactWith(creature: creatureArray.randomElement()!))")
  }
}
// Examples related to part 4: Mythical Creature Interactions
describeCreature(creatureArray: creatureCatalog)
astralHorn.interactWith(creature: infernoDrake)



print("\n--- this is the end of the homework ---\n")

/* The homework is done before this line. However, the func describeCreature has 2 print functions to deliver what I was asked of. If I want to combine the content of the two print functions into one, what is printed inside the console down is done in reverse (i.e. it calls the interactWith function first then the content of the first print function). I don't know why is this and I hope you can help understand this behavior (this is why I separated the content into 2 separate print functions).
 */

func describeCreature2(creatureArray: [Creature]) {
  for creature in creatureArray {
    print("\(creature.name) is a \(creature.description) and has \(creature.ability) \(creature.interactWith(creature: creatureArray.randomElement()!))")
  }
}

describeCreature2(creatureArray: creatureCatalog)
