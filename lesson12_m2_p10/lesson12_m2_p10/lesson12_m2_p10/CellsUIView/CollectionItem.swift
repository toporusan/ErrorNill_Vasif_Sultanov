
import Foundation

struct CollectionItem: Identifiable {
    var id: String = UUID().uuidString
    let image: String
    var header: String? = nil
    var subtext: String? = nil
    var text: String? = nil
    
    
    init(image: String, header: String? = nil, subtext: String? = nil, text: String? = nil) {
        self.image = image
        self.header = header
        self.subtext = subtext
        self.text = text
    }
    

}
