import SwiftUI
import UserNotifications

struct ContentView: View {
    let brand: Brand 

    var body: some View {
        NavigationView {
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

                    NavigationLink(destination: UsermanualView(brand: brand)){
                        CellView(brand: brand, title: brand.info.userManualText)
                    }

                    NavigationLink(destination: SpecsView(brand: brand)){
                        CellView(brand: brand, title: brand.info.specificationsText)
                    }

                    NavigationLink(destination: ProductInformationView(brand: brand)){
                        CellView(brand: brand, title: brand.info.productInformationText)
                    }

                    NavigationLink(destination: SubProductsView(brand: brand)){
                        CellView(brand: brand, title: brand.info.sparePartsText)
                    }

                    NavigationLink(destination: CustomerFeedBackView(brand: brand)){
                        CellView(brand: brand, title: brand.info.customerFeedbackText)
                    }
                    .padding(.bottom, 48)
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
                    Spacer()
                }
            }
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea(.all)
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(brand: .shortcut)
    }
}



