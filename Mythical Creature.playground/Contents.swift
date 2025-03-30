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

func describeCreature(creatureArray: [Creature]) {
  for creature in creatureArray {
    print("\(creature.name) is a \(creature.description) and has \(creature.ability)")
  }
}

describeCreature(creatureArray: creatureCatalog)
