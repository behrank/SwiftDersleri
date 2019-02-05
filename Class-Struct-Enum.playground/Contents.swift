/*
 Can Behran Kankul
 2019
 */

import UIKit

let anArrayWithObjects = ["Apple","Swift","Objective-c"]
let anotherArrayWithObjects:Array<String> = ["Apple","Swift","Objective-c"]
print(anArrayWithObjects[0]) //Apple
print(anotherArrayWithObjects[1]) //Swift

let aDictionaryWithObjects = ["Tim Cook":1,"Steve Jobs":2]
let anotherDictionaryWithObjects:Dictionary<String,Int> = ["Tim Cook":1,"Steve Jobs":2]

print(aDictionaryWithObjects["Tim Cook"]) //1
print(anotherDictionaryWithObjects["Steve Jobs"]) //2

//Başka değişken alarak string metin oluşturma.
let aInteger = 4
let aStringWithInteger = "2019 başında Swift'in \(aInteger) numaralı versiyonu gelecek!"

//Kontrol yapıları
let ages = [8,11,25,36,42,65]

var myAge = 36

for age in ages {
    if myAge > age {
        print("Benim yaşımdan ufak")
    }
    else if myAge == age {
        print("Benimle aynı yaşta")
    }
    else{
        print("Benim yaşımdan büyük")
    }
}

switch myAge {
case 8:
    print("8")
case 11:
    print("11")
case 36:
    print("36")
default:
    print("Yaşımı bilmiyorum!")
}

//Fonksiyon
func myFunc() {
    print("fonksiyon çalıştı")
}
//Geriye değer dönen fonksiyon.
func myFuncWithReturnValue() -> String {
    return "Can Behran Kankul"
}
//Parametre alan fonksiyon
func myFuncWithParameter(name:String,surname:String,age:Int) {
    
    //Başka bir fonksiyon çağırılması
    myFunc()
    print("Ben \(name) \(surname). \(age) yaşındayım.")
}

myFunc()
myFuncWithReturnValue()
myFuncWithParameter(name: "Can Behran",surname: "Kankul",age: 36)

//Closure
var arNumbers = [20, 19, 7, 12]

arNumbers.map({ (number: Int) -> Int in
    let result = 3 * number
    
    print(result)
    return result
})

//Class
class Human {
    
    var age:Int
    var name = "Can Behran"
    var surname = "Kankul"
    
    init(age:Int) {
        self.age = age
    }
    
    func whoAmI() {
        print("\(name) \(surname)")
    }
    
    deinit {
        print("Class hafızadan silinmek üzere")
    }
}

let person = Human(age:36)
person.whoAmI()

class Person : Human {
    
    var height : Double
    var weight : Double = 73
    var ratioHeightWeight : Double {
        get {
            return height/weight
        }
        set {
            weight = height/newValue
        }
    }
    
    init(height:Double,personAge: Int) {
        self.height = height
        super.init(age: personAge)
    }
    
    //Fonksiyon override
    override func whoAmI() {
        print("Adım \(name) \(surname), yaşım \(36), boyum \(height)cm")
    }
}
let me = Person(height: 180, personAge: 36)

print(me.ratioHeightWeight) // 2.4657
me.ratioHeightWeight = 2.5
print(me.weight) // 72

//Enum

enum CarBrands {
    case mercedes,bwm,ford,opel,renault
}

enum FootballTeams : Int{
    
    case fenerbahce = 1
    case galatasaray
    case besiktas
    case barcelona
    case manchesterUnited
    case dortmund
    case acmilan
    case spartaPrag
    case ajax
    
    func teamDescription() -> String{
        switch self {
        case .fenerbahce:
            return "Fenerbahçe"
        case .galatasaray:
            return "Galatasaray"
        case .besiktas:
            return "Beşiktaş"
        case .barcelona:
            return "Barcelona"
        case .manchesterUnited:
            return "Manchester United"
        case .dortmund:
            return "Borussia Dortmund"
        case .acmilan:
            return "AC Milan"
        case .spartaPrag:
            return "Sparta Prag"
        case .ajax:
            return "Ajax"
        }
    }
    
    func countryOfTeam() -> String {
        switch self {
        case .fenerbahce, .galatasaray, .besiktas:
            return "Türkiye"
        case .barcelona:
            return "İspanya"
        case .manchesterUnited:
            return "İngiltere"
        case .dortmund:
            return "Almanya"
        case .acmilan:
            return "İtalya"
        default:
            return "Bunların dışında"
        }
    }
}

let team = FootballTeams.fenerbahce
let teamRawValue = team.rawValue
let teamCountry = team.countryOfTeam()
let teamFromRaw = FootballTeams.init(rawValue: 1) // Fenerbahçe
print(teamFromRaw?.rawValue) // 1

struct Player {
    var name:String
    var team:FootballTeams
    
    func aboutPlayer() ->String{
        return "\(name), \(team.teamDescription())"
    }
}

let player = Player(name: "Behran Kankul", team: FootballTeams.fenerbahce)
print(player.aboutPlayer()) // Behran Kankul, Fenerbahçe


//Protocol & Extension

protocol BasicProtocol {
    var description: String { get }
    mutating func perform()
}

class BasicClass : BasicProtocol {
    var description: String = "Class için description"
    
    func perform() {
        
    }
}
struct BasicStruct : BasicProtocol {
    var description: String = "Struct için description"
    
    func perform() {
        
    }
}

var a = BasicClass()
a.perform()
a.description

var b = BasicStruct()
b.perform()
b.description

struct Rectangle {
    var width = 1
    var height = 1
    
    func area() -> Int {
        return width * height
    }
    
    mutating func scaleBy(value: Int) {
        width *= value
        height *= value
    }
}

var rec = Rectangle()
rec.area() // 1

rec.scaleBy(value: 3)
rec.area() // 9
