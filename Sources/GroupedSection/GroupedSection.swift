struct GroupedSection<Identifier: Hashable, Row> {
    
    var identifier : Identifier
    var rows : [Row]
    
    static func group(_ rows: [Row], by identifierForRow: (Row) -> Identifier) -> [GroupedSection<Identifier, Row>] {
        let groups = Dictionary(grouping: rows, by: identifierForRow)
        
        return groups.map { (month, headlines) in
            GroupedSection(identifier: month, rows: headlines)
        }
    }
    
}
