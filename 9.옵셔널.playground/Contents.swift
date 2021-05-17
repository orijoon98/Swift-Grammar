import Swift

//Optional 값이 있을 수도, 없을 수도 있음

let optionalConstant: Int? = nil
//옵셔널이 아닌 변수에 nil을 할당하면 에러 발생
//let someConstant: Int = nil

//someOptionalParam can be nil
func someFunction(someOptionalParam: Int?) {
    //...
}

//someParam must not be nil
func someFunction(someParam: Int) {
    //...
}

someFunction(someOptionalParam: nil)
//someFunction(someParam: nil)

//Implicitly Unwrapped Optional
//암시적 추출 옵셔널
//기존 변수처럼 사용 가능
var optionalValue: Int! = 100

switch optionalValue {
case .none:
    print("This optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

var optionalValue2: Int? = 200

switch optionalValue2 {
case .none:
    print("This optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

//Optional Unwrapping
//Optional Binding - 옵셔널 바인딩
//옵셔널의 값을 꺼내오는 방법 중 하나 - nil 체크 + 안전한 값 추출
func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//전달되는 값의 타입이 다르기 때문에 오류 발생
//printName(myName)

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}
//name 상수는 if-let 구문 내에서만 사용가능합니다
//상수 사용범위를 벗어났기 때문에 컴파일 오류 발생
//printName(name)

//Force Unwrapping - 강제 추출
myName = "yagom"
printName(myName!)

myName = nil
//강제 추출시 값이 없으므로 런타임 오류 발생
//printName(myName!)

var yourName: String! = nil
//느낌표를 붙여준 것과 같은 효과
//하지만 nil 값이 전달되기 때문에 런타임 오류 발생
//printName(yourName)
