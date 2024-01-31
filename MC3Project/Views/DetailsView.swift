import SwiftUI

struct DetailsView: View {
    @State private var currentRating = 4
    @State private var selectedTab: Tab = .overview
    @State private var isLiked = false
    enum Tab {
        case overview
        case comments
        case none
    }
    var body: some View {
        // ScrollView allows scrolling through the content
        ScrollView {
            VStack(alignment: .trailing) {
                // ZStack overlays multiple views
                ZStack {
                    // Image representing the cafe
                    Image("cafe1")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, alignment: .top)
                        .edgesIgnoringSafeArea(.all)
                        .cornerRadius(18)
                        .padding(.top, -80)
                    
                    // Like button
                    Button(action: {
                        isLiked.toggle()
                    }) {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .foregroundColor(Color(red: 0.69, green: 0.0, blue: 0.0, opacity: 1.0))
                            .font(.system(size: 28))
                            .font(.title)
                            .padding(20)
                            .background(Circle().fill(Color.white).opacity(0.9))
                    }
                    .padding(.top, 230).padding(.trailing, 300)
                }
                
                // HStack for star ratings
                HStack(alignment: .top) {
                    HStack {
                        // Display star icons based on the current rating
                        ForEach(0..<5) { index in
                            Image(systemName: "star.fill")
                                .foregroundColor(index < currentRating ? .yellow : .gray)
                                .font(.caption)
                                .frame(width: 20, height: 20)
                                .padding(.leading, -10)
                        }
                    }.padding(.trailing, 130)
                    
                    // Information about the cafe
                    VStack(alignment: .trailing) {
                        Text("نمق كافيه |Namg")
                            .font(.headline)
                        
                        HStack(alignment: .top) {
                            Text("٢٠-٤٠ رس")
                                .font(Font.custom("SF Arabic", size: 12).weight(.bold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.64, green: 0.63, blue: 0.63))
                                .frame(width: 63, height: 19, alignment: .top)
                            
                            Image("rang money")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 23)
                                .clipped()
                        }
                    }
                }
                .padding()
                
                // Divider line
                Divider().background(Color.gray)
                
                // Tabs for Comments and Overview
                HStack {
                    Text("التعليقات")
                        .font(Font.custom("SF Arabic", size: 18))
                        .multilineTextAlignment(.center)
                        .foregroundColor(selectedTab == .comments ? .black.opacity(0.36) : .gray)
                        .frame(width: 82, height: 27, alignment: .top)
                        .onTapGesture {
                            selectedTab = .comments
                        }
                    
                    Text("نظرة عامة")
                        .font(
                            Font.custom("SF Arabic", size: 18)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(selectedTab == .overview ? Color(red: 0.41, green: 0.16, blue: 0.38) : .gray)
                        .frame(width: 82, height: 27, alignment: .top)
                        .onTapGesture {
                            selectedTab = .overview
                        }
                }
                .padding()
                
                // Display content based on the selected tab
                if selectedTab == .overview {
                    Text("وجهة واسعة وبسيطة تقدَّم فيها القهوة الساخنة والكعك والآيس كريم.\nيتوفر:\nمواقف مجانية.\nشبكة انترنت مجانية.")
                        .font(Font.custom("Inter", size: 12))
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(.black)
                        .frame(width: 349, height: 136, alignment: .topTrailing)
                        .padding(.trailing, 20)
                } else if selectedTab == .comments {
                    // Placeholder for comments view
                }
                
                Spacer()
                Spacer()
                
                // Button to get directions
                Button("احصل على الاتجاهات") {
                    // Add action to get directions
                }
                .padding()
                .background(Color(red: 0.41, green: 0.16, blue: 0.38))
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.trailing, 100)
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationTitle("Namq Cafe")
        .navigationBarTitleDisplayMode(.inline)
    }
}
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}

