import Swift

//조건문

let someInteger = 100

//MARK: - if-else

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

//스위프트의 조건에는 항상 Bool 타입이 들어와야합니다
//someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
//컴파일 오류가 발생합니다
//if someInteger {}

//MARK: - switch

//범위 연산자를 사용하면 더욱 쉽고 유용합니다
switch someInteger {
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

//정수 외의 대부분의 기본 타입을 사용할 수 있습니다
//break는 모두 걸립니다
//default가 없으면 에러가 발생합니다
//fallthrough를 사용하면 break가 없는 것처럼 동작합니다
