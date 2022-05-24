import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendess: [String], lengthInMinutes: Int, theme: Theme){
        self.id = id
        self.title = title
        self.attendees = attendess.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String){
            self.id = id
            self.name = name
        }
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendess: ["Lucas", "Felipe"], lengthInMinutes: 20, theme: .yellow),
        DailyScrum(title: "Dev", attendess: ["Lucas", "Sada", "Vini"], lengthInMinutes: 12, theme: .orange),
        DailyScrum(title: "Design", attendess: ["Lucas", "Jojo"], lengthInMinutes: 40, theme: .poppy)
    ]
}
