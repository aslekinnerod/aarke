import SwiftUI
import UserNotifications

enum Destination: String, CaseIterable, Hashable {
    case userManual
    case specs
    case productInformation
    case subProducts
    case customerFeedback
}

struct ContentView: View {
    let brand: Brand
    @Binding var path: [Destination]

    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack {
                    HeaderView(brand: brand)

                    HStack {
                        Spacer()
                        Text(brand.info.subheading)
                            .font(.custom("Avenir Heavy", size: 18))
                            .fontWeight(.semibold)
                            .foregroundColor(brand.info.textColor)
                        Spacer()
                    }
                    .padding()

                    NavigationLink(value: Destination.userManual) {
                        CellView(brand: brand, title: brand.info.userManualText)
                    }

                    NavigationLink(value: Destination.specs) {
                        CellView(brand: brand, title: brand.info.specificationsText)
                    }

                    NavigationLink(value: Destination.productInformation) {
                        CellView(brand: brand, title: brand.info.productInformationText)
                    }

                    NavigationLink(value: Destination.subProducts) {
                        CellView(brand: brand, title: brand.info.sparePartsText)
                    }

                    NavigationLink(value: Destination.customerFeedback) {
                        CellView(brand: brand, title: brand.info.customerFeedbackText)
                    }
                    .padding(.bottom, 48)

                    Spacer()
                }
                .navigationDestination(for: Destination.self, destination: { destination in
                    switch destination {
                    case .userManual:
                        UserManualView(brand: brand)
                    case .specs:
                        SpecsView(brand: brand)
                    case .productInformation:
                        ProductInformationView(brand: brand)
                    case .subProducts:
                        SubProductsView(brand: brand)
                    case .customerFeedback:
                        CustomerFeedBackView(brand: brand)
                    }
                })
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification), perform: { output in
                    let content = UNMutableNotificationContent()
                    content.title = brand.info.name
                    content.subtitle = brand.info.notificationText
                    content.sound = UNNotificationSound.default
                    // show this notification five seconds from now
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                    // choose a random identifier
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                    // add our notification request
                    UNUserNotificationCenter.current().add(request)
                })
            }
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea(.all)
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(brand: .shortcut, path: .constant([]))
    }
}



