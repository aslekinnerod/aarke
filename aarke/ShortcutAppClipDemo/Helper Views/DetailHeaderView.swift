import SwiftUI

struct DetailHeaderView: View {
    var title: String
    
    var body: some View {
        VStack(){
           
            Text(title)
                .font(.custom("Avenir Heavy", size: 25))
                .fontWeight(.bold)
        }
    }
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView(title: "Titel")
    }
}
