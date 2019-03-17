/*
 Can Behran Kankul
 2019
 
 Optionals
 */

import UIKit

var name: String?
// name otomatik olarak nil tanımlanır.

var number = "1234"

if name != nil {
    print("name değişkeni bir değer içermiyor.")
}

name = "Değişken"

if name != nil {
    print(name!)
    // "Değişken"
    // name yanındaki ünlem ile değişkenin nil olmadığını belirtiyorum.
}

//Optional Binding
if let convertedNumber = Int(number) {
    print(convertedNumber)
} else {
    print(number)
}
// Burada eğer number değişkeni Int'e döndürülebilirse 1234, döndürülemez ise String olarak "1234" çıktısı elde ederiz.

//Birden çok değişken için
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
print("\(firstNumber) < \(secondNumber) < 100")
}
// "4 < 42 < 100”
