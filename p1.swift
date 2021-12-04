//1st
enum CustError: Error {
  case invalidPhoneNum
}
func Data(phone: String) throws {
  if !(phone.count == 11){
    throw CustError.invalidPhoneNum
  }
}
do{
  try Data(phone: "998877668")
} catch CustError.invalidPhoneNum {
  debugPrint("Invalid phone number")
}


//2nd
func checkOddEven() {
  let num = 24
  guard num % 2 == 0 else {
    print("Odd Number")
    return
  }
  print("Even Number")
}
checkOddEven()


//3rd
func MyVa(_ numbers:Int...)->Int {
  var total: Int = 0
  for n in numbers {
    total += n
  }
  return total
}
let res = MyVa(1,2,3,4,5)
print(res)

func MyIO(_ a:inout Int, _ b:inout Int) {
  let temp = a
  a = b
  b = temp
}
var a=5
var b=10
print("Before Swapping : a = \(a), and b = \(b)")
MyIO(&a,&b)
print("After Swapping : a = \(a), and b = \(b)")