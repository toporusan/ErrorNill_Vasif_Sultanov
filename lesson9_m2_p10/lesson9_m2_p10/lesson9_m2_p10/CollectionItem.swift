
import Foundation

struct CollectionItem: Identifiable {
    var id: String = UUID().uuidString
    let image: String
    var header: String? = nil
    var name: String? = nil
    var text: String? = nil
    
    init(id: String = UUID().uuidString, image: String, header: String? = nil, name: String? = nil, text: String? = nil) {
        self.id = id
        self.image = image
        self.header = header
        self.name = name
        self.text = text
    }
    

}
