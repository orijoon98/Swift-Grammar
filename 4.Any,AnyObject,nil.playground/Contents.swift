import Swift

//Any - Swift의 모든 타입을 지칭하는 키워드
//AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
//nil - 없음을 의미하는 키워드

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

//let someDouble: Double = someAny
//Any 데이터타입을 Double 타입에 할당 할 수 없다

//MARK: - AnyObject

class someClass {}

var someAnyObject: AnyObject = someClass()

//someAnyObject = 123.12

//MARK: - nil

//someAny = nil
//someAnyObject = nil
//nil은 할당 할 수 없다

