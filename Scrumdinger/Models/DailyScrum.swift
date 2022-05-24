import Foundation

struct DailyScrum {
    var title: String
    var attendess: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendess: ["Lucas", "Felipe"], lengthInMinutes: 20, theme: .yellow),
        DailyScrum(title: "Dev", attendess: ["Lucas", "Sada", "Vini"], lengthInMinutes: 12, theme: .orange),
        DailyScrum(title: "Design", attendess: ["Lucas", "Jojo"], lengthInMinutes: 40, theme: .poppy)
    ]
}
