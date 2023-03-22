import SwiftUI
import Charts
struct ChartView: View {
    var body: some View {
        Chart {
            ForEach(data) { item in
                LineMark(x: .value("Day", item.day),
                         y: .value("Value", item.value),
                         series: .value("Year", "2022"))
                    .cornerRadius(10)
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(by: .value("Year", "2022"))
                    .symbol(by: .value("Year", "2022"))
            }
            ForEach(data2) { item in
                LineMark(x: .value("Day", item.day),
                         y: .value("Value", item.value),
                         series: .value("Year", "2021"))
                    .cornerRadius(10)
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(by: .value("Year", "2021"))
                    .symbol(by: .value("Year", "2021"))
            }
        }
        .frame(height: 300)
        .padding()
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}

struct Value: Identifiable {
    var id = UUID()
    var day: String
    var value: Double
}

let data = [
    Value(day: "Jun 1", value: 200),
    Value(day: "Jun 2", value: 96),
    Value(day: "Jun 3", value: 312),
    Value(day: "Jun 4", value: 256),
    Value(day: "Jun 5", value: 505)
]

let data2 = [
    Value(day: "Jun 1", value: 300),
    Value(day: "Jun 2", value: 60),
    Value(day: "Jun 3", value: 250),
    Value(day: "Jun 4", value: 410),
    Value(day: "Jun 5", value: 256)
]
