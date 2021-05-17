import Swift

//상수 let
//변수 var

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당 할 수 있지만"
//constant = "상수는 차후에 값을 변경할 수 없습니다"

//나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 합니다
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

sum = inputA + inputB

var nickName: String
nickName = "yagom"
nickName = "orijoon"
