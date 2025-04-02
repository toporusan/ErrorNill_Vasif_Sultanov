      
import Foundation

struct ProfileStructure {
    let avatar: String
    let userName: String?
    let mainImage: String
    let dateOf: String
    let header: String
    let text: String

    static func getPruductDataSource() -> [ProfileStructure] {
        return [
            ProfileStructure(
                avatar: "icon1",  
                userName: "User Name",
                mainImage: "Rectangle1",
                dateOf: "23 aпреля 2025",
                header: "Ut enim ad minim veniam",
                text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
            ),
            ProfileStructure(
                avatar: "icon2",
                userName: "User Name2",
                mainImage: "Rectangle2",
                dateOf: "24 aпреля 2025",
                header: "Ut enim ad minim veniam  eiusmod tempor",
                text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation  "
            ),
            ProfileStructure(
                avatar: "icon3",
                userName: "User Name3",
                mainImage: "Rectangle3",
                dateOf: "25 aпреля 2025",
                header: "Ut enim ad minim veniam  eiusmod tempor",
                text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
            )
        ]
    }
}
