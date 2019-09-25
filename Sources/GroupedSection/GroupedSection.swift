public struct GroupedSection<Identifier: Hashable, Row> {
    
    public let identifier : Identifier
    public let rows : [Row]
    
    public static func group(_ rows: [Row], by identifierForRow: (Row) -> Identifier) -> [GroupedSection<Identifier, Row>] {
        let groups = Dictionary(grouping: rows, by: identifierForRow)
        
        return groups.map { (month, headlines) in
            GroupedSection(identifier: month, rows: headlines)
        }
    }
    
}
