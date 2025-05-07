import SwiftUI

struct AuthView: View {
    @EnvironmentObject var session: AppViewModel
    @Binding var path: [Page]

    @State private var showError = false

    var body: some View {
        VStack {
            Text("Авторизация")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 140)

            VStack(alignment: .center, spacing: 30) {
                TextFieldCustom(placeholder: "Email = errorNil@mail.ru", text: $session.email)
                    .overlay(
                        RoundedRectangle(cornerRadius: 26.5)
                            .stroke(showError ? Color.red : Color.clear, lineWidth: 3)
                    )

                TextFieldCustom(placeholder: "Password = 2", text: $session.password)
                    .overlay(
                        RoundedRectangle(cornerRadius: 26.5)
                            .stroke(showError ? Color.red : Color.clear, lineWidth: 3)
                    )
            }.padding(.bottom, 40)

            EnterButton(text: "Войти") {
                // Логика проверки
                if session.email.lowercased() == "errornil@mail.ru" && session.password == "2" {
                    // Очистить ошибку и перейти на главный экран
                    showError = false
                    path.append(.main)
                } else {
                    // Показать ошибку
                    showError = true
                    // Ожидание 2 секунды и затем скрытие ошибки
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                        showError = false
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.top, 100)
        .background(Color.black)
    }
}

#Preview {
    AuthView(path: .constant([])).environmentObject(AppViewModel())
}
