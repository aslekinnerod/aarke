//
//  ListCardView.swift
//  HHDemoClip
//
//  Created by Asle Kinnerød on 26/10/2022.
//

import SwiftUI



struct ListCardView: View {

    @Binding var page: Int

    var body: some View {

        HStack(spacing: 0){
            ForEach(destinations){dest in
                Card(width: UIScreen.main.bounds.width, destination: dest)
            }
        }
    }
}

struct ListCardView_Previews: PreviewProvider {

    static var previews: some View {
        ListCardView(page: .constant(3))
    }
}

struct Card : View {

//    @Binding var page: Int
    var width: CGFloat
    var destination : Destination

    var body: some View{

        VStack {
            VStack{
                ListItemRow(alpha: 1, place: destination.name)
                    .padding(.top, 20)
                HStack{
                    HStack{
                        Text(String("\(destination.distance) km"))
                        Image("piler")
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 25))
                    HStack{
                        Text(destination.time)
                        Image("klokke")
                    }
                    .padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25))
                    HStack{
                        Text(destination.rating)
                        Image("grade")
                    }
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                }
                Text(destination.description)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
            }
            .padding(.vertical, 15)
            .background(Color.clear)
        }
        .padding(.horizontal, 20)
        .frame(width: self.width)
    }
}

struct Carousel: UIViewRepresentable {


    func makeCoordinator() -> Coordinator {
        return Carousel.Coordinator(parent1: self)
    }


    var height: CGFloat
    var width: CGFloat
    @Binding var page: Int

    @State var test: String = ""

    func makeUIView(context: Context) -> UIScrollView {
        let total = width * CGFloat(destinations.count)
        let view = UIScrollView()
        view.isPagingEnabled = true
        view.contentSize = CGSize(width: total, height: 1.0)
        view.bounces = true
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.delegate = context.coordinator
        let view1 = UIHostingController(rootView: ListCardView(page: self.$page))
        view1.view.frame = CGRect(x: 0, y: 0, width: total, height: self.height)
        view1.view.backgroundColor = .clear

        view.addSubview(view1.view)

        return view
    }

    func updateUIView(_ uiView: UIScrollView, context: Context) {

    }

    class Coordinator: NSObject, UIScrollViewDelegate {

        var parent: Carousel
        init(parent1: Carousel){
            parent = parent1
        }
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let page = Int(scrollView.contentOffset.x / UIScreen.main.bounds.width)
            self.parent.page = page
            print(self.parent.page)
        }
    }
}

struct PageControl: UIViewRepresentable {

    @Binding var page: Int

    func makeUIView(context: Context) -> UIPageControl {

        let view = UIPageControl()
        view.currentPageIndicatorTintColor = .black
        view.pageIndicatorTintColor = .black.withAlphaComponent(0.2)
        view.numberOfPages = destinations.count
        return view
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {

        DispatchQueue.main.async {
            uiView.currentPage = self.page
        }
    }
}

