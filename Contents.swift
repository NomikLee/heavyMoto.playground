import UIKit

// 基本的 Honda 重型機車類別，用於保存重型機車的屬性。
class HondaBasicHeavyMoto {
    // 宣告 Honda 重型機車的屬性，包含尺寸、座高、燃料箱容量等等。初始值均為空字串或預設值。
    var lengthWidthHeight = "0000 mm x 000 mm x 0000 mm"
    var seatHeight = "000 mm"
    var fuelTankCapacity = ""
    var wheelbase = "0000 mm"
    var motoWeight = "000 kg"
    var engineType = "水冷並列4汽缸"
    var gearType: Int = 0
    var maxHorsepower = "00.0 HP"
    var maxAccelerator = 0000
    var maxTorque = "0.0 kg-m / 0000 rpm"
    var displacement = "0000 c.c."
    var frontWheelSize = "120/70 ZR17"
    var rearWheelSize = "180/55 ZR17"
    var motoPrice = ""
    var topSpeed: Int = 000
}

// Honda 重型機車功能類別，繼承於 HondaBasicHeavyMoto，用於定義特定功能。
class HondaHeavyMotoFunction: HondaBasicHeavyMoto {
    // 加速功能，接收速度和轉速作為參數，並根據轉速顯示相關訊息。
    func accelerator(speed: Int, rotating: Int) {
        print("最高時速為 \(topSpeed) 目前時速 \(speed) km/h")
        
        switch rotating {
            case 9000..<maxAccelerator:
                print("目前轉速為 \(rotating) 超轉燈恆亮")
            case 2000..<9000:
                print("目前轉速為 \(rotating)")
            default:
                print("目前轉速為 \(rotating) 轉速過低了")
        }
    }
}

// 定義一個名為 hondaCb1000r 的函式，接收機車顏色、速度和轉速作為參數，並回傳字串。
func hondaCb1000r(color: String, speed: Int, rotating: Int) -> String {
    // 建立 HondaHeavyMotoFunction 的實例，cb1000rGenerate用於保存 CB1000R 的相關屬性和功能。
    var cb1000rGenerate = HondaHeavyMotoFunction()
    
    // 將 CB1000R 的屬性進行初始化設定。
    cb1000rGenerate.lengthWidthHeight = "2,115 mm x 789 mm x 1,090 mm"
    cb1000rGenerate.seatHeight = "830 mm"
    cb1000rGenerate.fuelTankCapacity = "16.2L"
    cb1000rGenerate.wheelbase = "1460 mm"
    cb1000rGenerate.motoWeight = "213 kg"
    cb1000rGenerate.engineType = "水冷四行程並列四缸"
    cb1000rGenerate.gearType = 6
    cb1000rGenerate.maxHorsepower = "88.6 hp / 7000 rpm"
    cb1000rGenerate.maxAccelerator = 11000
    cb1000rGenerate.maxTorque = "9.2 kg-m / 7000 rpm"
    cb1000rGenerate.displacement = "998 c.c."
    cb1000rGenerate.frontWheelSize = "120/70 ZR17"
    cb1000rGenerate.rearWheelSize = "190/55 ZR17"
    cb1000rGenerate.motoPrice = "598,000"
    cb1000rGenerate.topSpeed = 250
    
    // 印出機車顏色和型號，並呼叫加速功能印出相關訊息。
    print("\(color)的 CB1000R 正在路上奔馳")
    cb1000rGenerate.accelerator(speed: speed, rotating: rotating)
    
    // 回傳已換檔至幾檔的訊息。
    return "已換檔至 \(cb1000rGenerate.gearType) 檔\n"
}

// 定義一個名為 hondaCb650r 的函式，與 hondaCb1000r 類似，只是初始化 CB650R 的屬性和型號。
func hondaCb650r(color: String, speed: Int, rotating: Int) -> String {
    var cb650rGenerate = HondaHeavyMotoFunction()
    
    cb650rGenerate.lengthWidthHeight = "2,130 mm x 780 mm x 1,075 mm"
    cb650rGenerate.seatHeight = "810 mm"
    cb650rGenerate.fuelTankCapacity = "15.4L"
    cb650rGenerate.wheelbase = "1450 mm"
    cb650rGenerate.motoWeight = "203 kg"
    cb650rGenerate.engineType = "水冷並列4汽缸"
    cb650rGenerate.gearType = 3
    cb650rGenerate.maxHorsepower = "76.4 HP / 9,000 rpm"
    cb650rGenerate.maxAccelerator = 11000
    cb650rGenerate.maxTorque = "6.1kg-m / 8,500rpm"
    cb650rGenerate.displacement = "649c.c."
    cb650rGenerate.frontWheelSize = "120/70 ZR17"
    cb650rGenerate.rearWheelSize = "180/55 ZR17"
    cb650rGenerate.motoPrice = "389,000"
    cb650rGenerate.topSpeed = 220
    
    print("\(color)的 CB650R 正在路上奔馳")
    cb650rGenerate.accelerator(speed: speed, rotating: rotating)
    
    return "已換檔至 \(cb650rGenerate.gearType) 檔"
}

// 呼叫 hondaCb1000r 函式，傳入參數並印出結果。
print(hondaCb1000r(color: "黑色", speed: 100, rotating: 10000))
// 呼叫 hondaCb650r 函式，傳入參數並印出結果。
print(hondaCb650r(color: "綠色", speed: 150, rotating: 1500))
