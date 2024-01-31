import SwiftUI

struct DetailsView: View {
    // State variables to track rating, selected tab, and like status
    @State private var currentRating = 4
    @State private var selectedTab: Tab = .overview
    @State private var isLiked = false

    // Enumeration for different tabs
    enum Tab {
        case overview
        case comments
        case none
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .trailing) {
                // ZStack for overlaying the cafe image and like button
                ZStack {
                    // Cafe image
                    Image("cafe1")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, alignment: .top)
                        .edgesIgnoringSafeArea(.all)
                        .cornerRadius(18)
                        .padding(.top, -80)

                    // Like button with heart icon
                    Button(action: {
                        // Toggle the like status
                        isLiked.toggle()
                    }) {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .foregroundColor(Color(red: 0.69, green: 0.0, blue: 0.0, opacity: 1.0))
                            .font(.system(size: 28))
                            .font(.title)
                            .padding(20)
                            .background(Circle().fill(Color.white).opacity(0.9))
                    }
                    .padding(.top, 230)
                    .padding(.trailing, 300)
                }

                // Star ratings and cafe information
                HStack(alignment: .top) {
                    HStack {
                        // Display star ratings using a loop
                        ForEach(0..<5) { index in
                            Image(systemName: "star.fill")
                                .foregroundColor(index < currentRating ? .yellow : .gray)
                                .font(.caption)
                                .frame(width: 20, height: 20)
                                .padding(.leading, -10)
                        }
                    }
                    .padding(.trailing, 130)

                    // Cafe name and pricing information
                    VStack(alignment: .trailing) {
                        Text("نمق كافيه |Namg")
                            .font(.headline)

                        HStack(alignment: .top) {
                            Text("٢٠-٤٠ رس")
                                .font(
                                    Font.custom("SF Arabic", size: 12)
                                        .weight(.bold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.64, green: 0.63, blue: 0.63))
                                .frame(width: 63, height: 19, alignment: .top)

                            // Display "rang money" image
                            Image("rang money")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 23)
                                .clipped()
                                .padding(.leading, -10)
                        }
                    }
                }
                .padding()

                // Divider line
                Divider()
                    .background(Color.gray)

                // Tabs for Comments and Overview
                HStack {
                    Text("التعليقات")
                        .font(Font.custom("SF Arabic", size: 20))
                        .multilineTextAlignment(.center)
                        .foregroundColor(selectedTab == .comments ? .black.opacity(0.36) : .gray)
                        .frame(width: 82, height: 27, alignment: .top)
                        .onTapGesture {
                            // Switch to the Comments tab
                            selectedTab = .comments
                        }

                    Text("نظرة عامة")
                        .font(
                            Font.custom("SF Arabic", size: 20)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(selectedTab == .overview ? Color(red: 0.41, green: 0.16, blue: 0.38) : .gray)
                        .frame(width: 82, height: 27, alignment: .top)
                        .onTapGesture {
                            // Switch to the Overview tab
                            selectedTab = .overview
                        }
                }
                .padding()

                // Content based on the selected tab
                if selectedTab == .overview {
                    // Display icons and information for the Overview tab
                    HStack(alignment: .top) {
                        HStack {
                            Image("Music")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 10, height: 10)
                                .padding(.trailing, 0)
                            Image("disabilities")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 15, height: 15)
                                .padding(.trailing, 150)
                        }
                        Text("وقت الذروة:  ٧-٩ م")
                            .font(
                                Font.custom("SF Arabic", size: 16)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.41, green: 0.16, blue: 0.38))
                            .padding(.leading, 20)

                        // Display "Peak time" image
                        Image("Peak time")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 23)
                            .clipped()
                            .padding(.trailing, 20)
                    }

                    // Detailed overview of the cafe
                    Text("وجهة واسعة وبسيطة تقدَّم فيها القهوة الساخنة والكعك والآيس كريم.\nيتوفر:\nمواقف مجانية.\nشبكة انترنت مجانية.")
                        .font(Font.custom("Inter", size: 18))
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(.black)
                        .frame(width: 349, height: 136, alignment: .topTrailing)
                        .padding(.trailing, 20)
                } else if selectedTab == .comments {
                    // Placeholder for comments view
                    // Add your comments view here
                }

                // Spacer for layout
                Spacer()
                Spacer()

                // Button to get directions
                Button("احصل على الاتجاهات") {
                    // Placeholder action to get directions
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

