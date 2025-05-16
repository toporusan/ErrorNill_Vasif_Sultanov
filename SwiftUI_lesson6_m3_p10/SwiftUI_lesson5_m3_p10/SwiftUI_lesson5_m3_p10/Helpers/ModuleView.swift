import SwiftUI

struct ModuleView: View {
    
    var data = DataStruct(
        image: "Rectangle61",
        date: "16 декабря",
        year: "2023 год",
        dateYear: "16.12.2023",
        photoComments: ["4 фотографии","2 комментария"],
        button: [Category(name: "Природа") , Category(name: "Природа"), Category(name: "Природа")],
        mainText: """
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostru exercitation ullamco laboris nisi
        ut aliquip ex ea commodo consequat.
        Duis aute irure dolor in reprehenderit 
        """,
        secondText: """
        Ut enim ad minim veniam, quis nostrud exercit
        ation ullamco laboris nisi 
        """,
        thirdText: """
        Ut enim ad minim veniam, quis nostrud exercit
        ation ullamco laboris nisi 
        """
    )

    var body: some View {
        ZStack {
            Image(data.image)
                .resizable()
                .scaledToFill()
                .frame(width: 370, height: 370)
                .clipped()

            VStack(alignment: .leading, spacing: 10) {
                Spacer()

                HStack(spacing: 20) {
                    
                    ForEach(data.photoComments, id: \.count) { index in
                        Text(index)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                HStack(spacing: 8) {
                    ForEach(data.button, id: \.self) { index in
                        Text(index.name)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 6)
                            .background(Color.white.opacity(0.2))
                            .clipShape(Capsule())
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut ....")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .font(.footnote)
                    .lineLimit(3)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 30)
            .padding(.horizontal, 20)
        }
        .frame(width: 370, height: 370)
        .cornerRadius(30)
    }
}

#Preview {
    ModuleView()
}
