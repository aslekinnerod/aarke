//
//  ContentView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 21/11/2022.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    @State var regtister = false
    @State var language = false
    let brand: Brand

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ZStack {
                        brand.info.headerImage
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.accentColor)
                            .frame(height: 200)
                        HStack(alignment: .center){
                            VStack{
                                brand.info.logoImage
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding(.leading)
                                    .offset(y: -100)

                                Button(brand.info.selectedLanguage) {
                                    language = true
                                }
                                .popover(isPresented: $language) {
                                    LanguageView(brand: brand)
                                }
                                .padding(10)
                                .background(Color(red: 174/255, green: 162/255, blue: 154/255, opacity: 0.72))
                                .clipShape(Rectangle())
                                .cornerRadius(10)
                                .padding(.leading)
                                .padding(.bottom, 10)
                                .foregroundColor(.white)
                                .font(.custom("Avenir Regular", size: 18))
                                .fontWeight(.bold)
                            }
                            Spacer()
                            NavigationLink(destination: RegisterView(), isActive: $regtister) {EmptyView()
                            }
                            //                            .navigationTitle("")
                            Button(brand.info.registerProductText) {
                                regtister = true
                            }
                            .padding(10)
                            .background(Color(red: 174/255, green: 162/255, blue: 154/255, opacity: 0.72))
                            .clipShape(Rectangle())
                            .cornerRadius(10)
                            .padding(.trailing, 13)
                            .foregroundColor(.white)
                            .font(.custom("Avenir Regular", size: 18))
                            .fontWeight(.bold)
                            .offset(y: 49)
                        }
                    }
                    .padding()
                    .onAppear(){
                        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                            if success {
                                print("All set!")
                            } else if let error = error {
                                print(error.localizedDescription)
                            }
                        }
                    }

                    HStack {
                        Text(brand.info.subheading)
                            .font(.custom("Avenir Heavy", size: 18))
                            .fontWeight(.semibold)
                            .foregroundColor(.textGray)
                        Spacer()
                    }
                    .padding()

                    NavigationLink(destination: UsermanualView()){
                        CellView(title: brand.info.userManualText)
                    }

                    NavigationLink(destination: SpecsView(brand: brand)){
                        CellView(title: brand.info.specificationsText)
                    }

                    NavigationLink(destination: ProductInformationView(brand: brand)){
                        CellView(title: brand.info.productInformationText)
                    }

                    NavigationLink(destination: SpareParts(brand: brand)){
                        CellView(title: brand.info.sparePartsText)
                    }

                    NavigationLink(destination: CustomerFeedBackView()){
                        CellView(title: brand.info.customerFeedbackText)

                    }
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
                .ignoresSafeArea(.all)
            }
            .navigationTitle(brand.info.name)
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(brand: .shortcut)
    }
}



