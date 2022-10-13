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

    var body: some View {

        NavigationView(){
            VStack {
                ZStack(alignment: .bottomTrailing){
                    Image("bilde")
                        .imageScale(.small)
                        .foregroundColor(.accentColor)
                    HStack(alignment: .center){
                        VStack{
                            Image("logo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .padding(.leading)
                                
                            Button("Norsk") {
                                language = true
                            }
                            .popover(isPresented: $language) {
                                      LanguageView()
                                   }
                            .padding(10)
                            .background(Color(red: 243/255, green: 242/255, blue: 239/255, opacity: 0.72))
                            .clipShape(Rectangle())
                            .cornerRadius(10)
                            .padding(.leading)
                            .padding(.bottom, 10)
                            .foregroundColor(.darkGray)
                            .font(.custom("Helvetica neue", size: 18))
                            .fontWeight(.bold)
                            
                        }
                        Spacer()
                        NavigationLink(destination: RegisterView(), isActive: $regtister) {EmptyView()
                            
                        }
                        .navigationTitle("")
                        Button("Registrer kaffetrakter") {
                            regtister = true
                        }
                        .padding(10)
                        .background(Color(red: 243/255, green: 242/255, blue: 239/255, opacity: 0.72))
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .padding(.trailing, 13)
                        .foregroundColor(.darkGray)
                        .font(.custom("Helvetica neue", size: 18))
                        .fontWeight(.bold)
                        .offset(y: 45)
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
                
                Text("Hva kan vi hjelpe med?")
                    .font(.custom("Helvetica Neue", size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
                    .padding(.bottom, 20)
                
                    NavigationLink(destination: UsermanualView()){
                        CellView(title: "Brukermanual")
                    }
                    NavigationLink(destination: SpecsView()){
                        CellView(title: "Spesifikasjoner")
                    }
                

              
                    NavigationLink(destination: ProductInformationView()){
                        CellView(title: "Produkt informasjon")}
                    
                    NavigationLink(destination: SpareParts()){
                        CellView(title: "Reservedeler")
                    }
             
                
              
                    NavigationLink(destination: CustomerFeedBackView()){
                        CellView(title: "Kundeomtaler")
                            
                    }
               
                    

                .navigationBarBackButtonHidden(true)
                
                
              
                Spacer()
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification), perform: { output in
                        let content = UNMutableNotificationContent()
                        content.title = "WILFA"
                        content.subtitle = "Registrer din kaffetrakter hos oss ☕"
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
        ContentView()
    }
}
