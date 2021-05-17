import Swift

//함수

//MARK: - 함수의 선언

//MARK: 함수선언의 기본형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//      함수 구현부
//      return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

//MARK: 반환값이 없는 함수
func printMyName(name: String) -> Void {
    print(name)
}

//MARK: 매개변수가 없는 함수
func maximumIntegerValue() -> Int {
    return Int.max
}

//MARK: 매개변수와 반환값이 없는 함수
func hello() -> Void { print("Hello") }

func bye() { print("Bye") }

//MARK: -함수의 호출

sum(a: 3, b: 5) // 매개변수 이름과 값을 함께 써준다

hello()

bye()

//MARK: - 매개변수 기본값

func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "hana")
greeting(friend: "john", me: "eric")

//MARK: - 전달인자 레이블

//전달인자 레이블은 함수를 호출할 때
//매개변수의 역할을 좀 더 명확하게 하거나
//함수 사용자의 입장에서 표현하고자 할 때 사용합니다

//함수 내부에서 전달인자를 사용할 때는 매개변수 이름을 사용합니다
func greeting(to friend: String, from me: String){
    print("Hello \(friend)! I'm \(me)")
}

//함수를 호출할 때는 전달인자 레이블을 사용해야 합니다
greeting(to: "hana", from: "yagom")

//MARK: - 가변 매개변수

//전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다
//가변 매개변수는 함수당 하나만 가질 수 있습니다

func sayHelloFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloFriends(me: "yagom", friends: "hana", "eric", "wing"))

print(sayHelloFriends(me: "yagom"))

//MARK: - 데이터 타입으로서의 함수

//스위프트는 함수형 프로그래밍 패러다임을 표현하는 다중 패러다임 언어입니다
//스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
//매개변수를 통해 전달할 수도 있습니다

//MARK: 함수의 타입표현
//반환타입을 생략할 수 없습니다

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom")

someFunction = greeting(friend:me:)
someFunction("eric", "yagom")

//타입이 다른 함수는 할당할 수 없습니다
//someFunction = sayHelloToFriends(me: friends:)

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))
runAnother(function: someFunction)
