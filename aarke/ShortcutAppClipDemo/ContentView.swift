//
//  ContentView.swift
//  WilfaClip
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

        NavigationView(){
            VStack {
                ZStack(alignment: .bottomTrailing){
                    brand.info.headerImage
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                    HStack(alignment: .center){
                        VStack{
                            Image("Logo - black")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding(.leading)
                                .offset(y: -100)
                           /* ZStack{
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.white)
                                    .offset(x: 5)
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .padding(.leading)
                            }*/
                            Button("Svenska") {
                                language = true
                            }
                            .popover(isPresented: $language) {
                                      LanguageView()
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
                        .navigationTitle("")
                        Button("Registrera produkt") {
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
                .padding(.bottom, 12.0)
                .onAppear(){
                    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                        if success {
                            print("All set!")
                        } else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
                }

                Text("Vällkommen til \(brand.info.name)")
                    .font(.custom("Avenir Heavy", size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
                    .padding(.bottom, 20)
                
                    NavigationLink(destination: UsermanualView()){
                        CellView(title: "Bruksanvisning")
                    }
                    NavigationLink(destination: SpecsView()){
                        CellView(title: "Specifikationer")
                    }
                
                    NavigationLink(destination: ProductInformationView()){
                        CellView(title: "Produktinformation")}
                    
                    NavigationLink(destination: SpareParts()){
                        CellView(title: "Reservdelar")
                    }
             
                    NavigationLink(destination: CustomerFeedBackView()){
                        CellView(title: "Recensioner")
                            
                    }
                .navigationBarBackButtonHidden(true)
                
                
              
                Spacer()
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification), perform: { output in
                        let content = UNMutableNotificationContent()
                        content.title = "aarke"
                        content.subtitle = "Registrer din Carbonator 3 nå 🥳"
                        content.sound = UNNotificationSound.default

                        // show this notification five seconds from now
                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                        // choose a random identifier
                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                        // add our notification request
                        UNUserNotificationCenter.current().add(request)
                           })
            }
            .ignoresSafeArea(.all)
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(brand: .porsche)
    }
}



