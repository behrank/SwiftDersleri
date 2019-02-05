/*
    Can Behran Kankul
    2019
*/

import UIKit

//Basit değişkenler
var aInteger = 5
let aString = "kitap"

//Değişkenlerde tip tanımlaması
let aFloat:Float = 42.0
let aDouble:Double = 75
let anArray:Array<String> = []
let aDictionary:Dictionary<String,Int> = [:]
let 🤖 = "Emoji karakter"

/*
 Geleneksel şekilde “Merhaba” yazdırdık :)
 */
print("Merhaba Swift")
print("Emojiyi yazdıralım -> \(🤖)")
print("Double -> \(aDouble)")
print(100+50)

//Integer

let min = UInt16.min
let max = UInt16.max

//Type Alias

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound değeri artık 0

//Bool
let portalTuruncudur = true
let limonTatlidir = false

if portalTuruncudur {
    print("Evet portakal turuncudur.")
} else {
    print("Hayır turuncu değil.")
}
//"Evet portakal turuncudur."

let i = 1
if i == 1 {
    // Bu değişiklik ile kodumuz problemsiz compile olacak.
}

//Tuple

let http404Error = (404, "Not Found")
// http404Error değişkenin tipi (Int, String)

let (statusCode, statusMessage) = http404Error
print("Status code değeri \(statusCode)")
// "404"
print("Status message değeri \(statusMessage)")
// "Not Found"

let (justTheStatusCode, _) = http404Error
print("Status code değeri \(justTheStatusCode)")
// Prints "The status code is 404"

print("Status code: \(http404Error.0)")
// "404"
print("Status message: \(http404Error.1)")
// "Not Found"

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
// "200"
print("The status message is \(http200Status.description)")
// "OK”

let numberStr = "1234"
let numberInt = Int(numberStr)
print(numberInt ?? 0)
