
//
//  ContentView.swift
//  fanZ
//
//  Created by Shatha Almukhaild on 17/12/1445 AH.
import SwiftUI

//Fixed Custom Navigation bar

struct CustomNavigationBar: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "chevron.backward")
                    .foregroundColor(Color(hex: "#BFB6EB"))
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 4) {
                        Text("• LIVE")
                            .foregroundColor(Color(hex: "#31BD60"))
                        Text("15 hours left - GW 3")
                            .font(.subheadline)
                            .foregroundColor(Color(hex: "#BFB6EB"))
                    }
                    HStack {
                        Text("Roshin League")
                            .font(.headline)
                            .bold()
                            .foregroundColor(Color(hex: "#BFB6EB"))
                        Image("info-button")
                    }
                }
                Spacer()
                Image("Roshn_Saudi_League_Logo.svg (image)3000")
                    .resizable()
                    .frame(width: 69.78, height: 64.43)
            }
            .padding()
            .background(Color(hex: "#2C1349"))
        }
        .frame(width: 400,height: 160)// Set the desired height here
        
    }
}

struct ContentView: View {
    @State private var showDetailPage = false

    var body: some View {
        ZStack {
            if showDetailPage {
                DetailView(showDetailPage: $showDetailPage)
            } else {
                MainPage(showDetailPage: $showDetailPage)
            }
        }
        .ignoresSafeArea()
    }
}
//Main Page
struct MainPage: View {
    @Binding var showDetailPage: Bool
    @State private var buttonClicked = false // Track button click state
   // @State var gestureValue = CGSize.zero
    var body: some View {
        // Define the gradient with two colors
        let gradient = LinearGradient(
            gradient: Gradient(colors: [Color(hex: "#18092A"), Color(hex: "#270F43")]),
            startPoint: .top,
            endPoint: .bottom
        )
        
        return ZStack {
            // Fixed background
            Rectangle()
                .fill(gradient)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Fixed navigation bar
                CustomNavigationBar(title: "Roshin League", subtitle: "15 hours left - GW 3")
    
                // Scrollable content
                ScrollView {
                    VStack(alignment: .leading) {
                        Spacer()
                        
                        VStack {
                            HStack {
                                Spacer()
                                
                                Capsule()
                                    .frame(width: 293, height: 56)
                                    .foregroundColor(Color(hex: "2C1349"))
                                    .overlay(
                                        HStack(spacing: 16) {
                                            HStack {
                                                Image("LINEUP9000")
                                                    .resizable()
                                                    .frame(width: 18, height: 18)
                                                Text("Lineup")
                                                    .foregroundColor(Color(hex: "#FFB700"))
                                                    .font(.headline)
                                            }
                                            Image("Leaderboard9000")
                                                .resizable()
                                                .frame(width: 15.74, height: 18)
                                            Image("matches icon9000")
                                                .resizable()
                                                .frame(width: 19.09, height: 14)
                                            Image("Transfare Icon9000")
                                                .resizable()
                                                .frame(width: 18, height: 18)
                                            Image("fantaZ Points9000")
                                                .resizable()
                                                .frame(width: 17.82, height: 18)
                                        }
                                        .padding(.leading, 20)
                                    )
                                
                                Capsule()
                                    .frame(width: 80, height: 56)
                                    .foregroundColor(Color(hex: "973EFF").opacity(0.24))
                                    .overlay(
                                        Image("Icon ionic-ios-share-alt9000")
                                            .resizable()
                                            .frame(width: 18, height: 15)
                                            .padding(.trailing, 20)
                                    )
                                    .padding(.leading, 70)
                                
                                Spacer()
                            }
                            .padding(.top,0)
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    // ZStack with the court image and overlaid elements
                    ZStack(alignment: .top) {
                        Image("court2")
                            .resizable()
                            .frame(width: 512, height: 700)
                            .cornerRadius(40.0)
                            .overlay(
                                VStack(alignment: .leading) {
                                    HStack {
                                        Spacer()
                                        
                                        Capsule()
                                            .frame(width: 80, height: 36)
                                            .foregroundColor(Color(hex: "973EFF"))
                                            .overlay(
                                                HStack {
                                                    Image("Group 952799000")
                                                        .resizable()
                                                        .frame(width: 20, height: 20)
                                                    Text("1M")
                                                        .foregroundColor(.white)
                                                        .font(.headline)
                                                }
                                            )
                                        
                                        Capsule()
                                            .frame(width: 80, height: 36)
                                            .foregroundColor(Color(hex: "973EFF").opacity(0.24))
                                            .overlay(
                                                HStack {
                                                    Image("Group 952959000")
                                                        .resizable()
                                                        .frame(width: 20, height: 20)
                                                    Text("124")
                                                        .foregroundColor(.white)
                                                        .font(.headline)
                                                }
                                            )
                                            .padding(.leading, 140)
                                        
                                        Image(systemName: "questionmark.app.fill")
                                            .font(.system(size: 23, weight: .semibold))
                                            .symbolRenderingMode(.multicolor)
                                            .foregroundColor(Color(hex: "973EFF"))
                                        
                                        Spacer()
                                    }
                                    .padding(.bottom, 670)
                                }
                            )
                            .overlay(
                                VStack(spacing: 0) {
                                    // Goal guarder
                                    HStack {
                                        Image("Group 9526412000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                    }
                                    .padding(.top, 120)
                                    HStack {
                                        Image("Group 9526712000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                            .padding(.bottom, 30)
                                        Image("Group 9520212000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                        Image("Group 9526612000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                        Image("Group 9526512000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                            .padding(.bottom, 30)
                                    }
                                    .padding(.bottom, 0)
                                    .padding(.top, 0)
                                    HStack {
                                        Image("Group 9526812000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                            .padding(.bottom, 30)
                                        Image("Group 9527012000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                        Image("Group 9526912000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                            .padding(.bottom, 30)
                                    }
                                    .padding(.bottom, 0)
                                    HStack {
                                        //Mohammed
                                        Image("Group 9527112000")
                                            .resizable()
                                            .frame(width: 72, height: 98)
                                            .padding(.bottom, 30)
                                        //Ronaldo
                                        
                                            Image("Group 9527312000")
                                                .resizable()
                                            .frame(width: 76, height: 98)  .opacity(buttonClicked ? 0.6 : 1.0) // Dim image when clicked
                                            .scaleEffect(buttonClicked ? 0.95 : 1.0) // Scale effect when clicked
                                            .onTapGesture {
                                                withAnimation(.easeInOut) {
                                                    buttonClicked.toggle() // Toggle button click state
                                                    showDetailPage = true
                                                   
                                                }
                                                buttonClicked.toggle()
                                            }
                                            
                                       
                                        // Neymar
                                        Image("Frame 9527212000")
                                            .resizable()
                                            .frame(width: 68, height: 98)
                                            .padding(.bottom, 30)
                                    }
                                    .padding(.bottom, 0)
                                    .padding(.top, 0)
                                    HStack {
                                        Image("Group 9527412000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                        Image("Group 9527512000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                        Image("Group 9527612000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                        // Sadio
                                        Image("Frame 9519612000")
                                            .resizable()
                                            .frame(width: 68, height: 94)
                                    }
                                    .padding(.bottom, 100)
                                }
                                .padding(.bottom, 0)
                            )
                        HStack{
                        Spacer()
                         Text("O. Fanz    ")
                            .bold().padding(.top,50)
                            .foregroundColor(Color(hex:"#BFB6EB"))
                        Text("4-3-3")
                            .foregroundColor(Color(hex: "#BFB6EB"))
                            .padding(.top,50).bold()
                        Spacer()
                               }
                    }.padding(.top,30)
                }
            }
            .foregroundColor(.white)
        }       .overlay(
            
                            VStack {
                                HStack {
                                    Spacer()
                                    Capsule()
                                        .frame(width: 94, height: 36)
                                        .foregroundColor(Color(hex:"FFB700").opacity(0.24)).overlay(
                                            HStack {
                                                Image("Group 169000").resizable().frame(width: 20,height:20)
                                                Text("290")
                                                    .foregroundColor(.white)
                                                    .font(.headline)
                                            }
                                        )
                                    Capsule()
                                        .frame(width: 94, height: 36)
                                        .foregroundColor(Color(hex:"973EFF").opacity(0.24)).overlay(
                                            HStack {
                                                Image("points icon9000").resizable().frame(width: 20,height:20)
                                                Text("600")
                                                    .foregroundColor(.white)
                                                    .font(.headline)
                                            }
                                        )
                                    Spacer()
                                }
                                .padding(.top, 110)
                                Spacer()
                            }
                      )
                            //    .overlay(
//                            BottomSheetView(showSheet: $showBottomSheet) {
//                                DestinationView()
//
//                            }
//                        )
    }
}
struct DetailView: View {
    @Binding var showDetailPage: Bool
    @State var gestureValue = CGSize.zero
    var body: some View {
        let gradient = LinearGradient(
            gradient: Gradient(colors: [Color(hex: "#18092A"), Color(hex: "#270F43")]),
            startPoint: .top,
            endPoint: .bottom
        )
        return ZStack {
            // Fixed background
            Rectangle()
                .fill(gradient)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                ZStack {
                   // Color.white.edgesIgnoringSafeArea(.all)
                    VStack {
                        
                        Spacer()
                        
                        
                        // ZStack with the court image and overlaid elements
                        ZStack(alignment: .top) {
                            
                                Image("Frame 951269000")
                                    .resizable()
                                    .frame(width: 390, height: 700)
                                    .padding(.top,100)
                                .cornerRadius(40.0)
                            .overlay(
                                    Image("Group 94926").resizable()
                                        .frame(width: 250, height: 300)
                                        .padding(.bottom,370)
                                    //.cornerRadius()
                                        .rotationEffect(Angle(degrees: Double(-gestureValue.width)))
                                        .gesture(DragGesture().onChanged({ (value) in
                                            self.gestureValue = value.translation}).onEnded({ (value) in
                                                self.gestureValue = .zero}))
                                        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0),value: 1)).overlay(
                                            HStack(spacing:1){
                                                Spacer()
                                                Button(action: {
                                                    withAnimation(.easeInOut) {
                                                        //     showDetailPage = false
                                                    }
                                                }) {
                                                    Image( "Group 9341612000")
                                                        .resizable()
                                                        .frame(width: 50,height: 50).shadow(radius: 3)
                                                        .foregroundColor(.black).padding(.leading,25
                                                        )
                                                    Spacer()
                                                    
                                                }
                                                .padding(.bottom,500)
                                                Button(action: {
                                                    withAnimation(.easeInOut) {
                                                        showDetailPage = false
                                                    }
                                                }) {
                                                    Image("Group 9341512000").resizable()
                                                        .frame(width: 50,height: 50).shadow(radius: 3)
                                                    // .font(.system(size: 10))
                                                        .foregroundColor(.black).padding(.leading,120
                                                        )
                                                    Spacer()
                                                    
                                                }
                                                .padding(.bottom,500)
                                                
                                                Spacer()
                                                
                                            }).overlay(
                                                
                                                VStack(alignment: .center,spacing: 0){
                                                   
                                                        HStack {
                                                            Spacer()
                                                            
                                                            Capsule()
                                                                .frame(width: 80, height: 36)
                                                                .foregroundColor(Color(hex: "31BD60"))
                                                                .overlay(
                                                                    HStack {
                                                                        Image("Group 952799000")
                                                                            .resizable()
                                                                            .frame(width: 20, height: 20)
                                                                        Text("20M")
                                                                            .foregroundColor(.white)
                                                                            .font(.headline)
                                                                    }
                                                                )
                                                            
                                                            Capsule()
                                                                .frame(width: 58, height: 35)
                                                                .foregroundColor(Color(hex: "FFB700").opacity(0.14))
                                                                .overlay(
                                                                    HStack {
//                                                                        Image("Group 952959000")
//                                                                            .resizable()
//                                                                            .frame(width: 20, height: 20)
                                                                        Text("5.6")
                                                                            .foregroundColor(Color(hex:"FFB700"))
                                                                            .font(.headline)
                                                                    }
                                                                )
                                                                .padding(.leading, 0)
                                                            Capsule()
                                                                .frame(width: 120, height: 35)
                                                                .foregroundColor(Color(hex: "973EFF").opacity(0.24))
                                                                .overlay(
                                                                    HStack{
                                                                        Image("Group 93877120020")
                                                                            .resizable()
                                                                            .frame(width:50, height:70).padding(.trailing,0)
                                                                            .padding(.leading,0)
                                                                        Text("1X")
                                                                            .foregroundColor(.white)
                                                                            .font(.subheadline)
                                                                        Image("info-button 2")
                                                                            .resizable()
                                                                            .frame(width: 20, height: 20).padding(.leading,0)
                                                                    }.padding(.trailing,17)
                                                                )
                                                                .padding(.leading, 0)
                                                            
                                                       
                                                            
                                                            Spacer()
                                                        }
                                                        .padding(.top,1060)
                                                        .padding(.bottom, 20)
                                                    
                                                    Text("CRISTIANO RONALDO")
                                                        .font(.title)
                                                        .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                        .padding(.bottom,0)
                                                    Text("Forward")
                                                        .font(.subheadline)
                                                        .foregroundColor(Color(hex: "#917EA7"))
                                                        .padding(.bottom,10)
                                                    
                                                    HStack{
                                                        
                                                        Capsule()
                                                            .frame(width: 390, height: 88)
                                                            .foregroundColor(Color(hex: "2D134A"))
                                                            .shadow(color: Color.black.opacity(0.35), radius: 5, x: 0, y: 4)
                                                            .overlay(
                                                                HStack(spacing:20){
                                                                    Image("Small Profile12000")
                                                                        .resizable()
                                                                        .frame(width: 110, height: 110).cornerRadius(40).padding(.trailing,0)
                                                                        .padding(.trailing,0)
                                                                    Text("Player Info")     .foregroundColor(Color(hex: "#BFB6EB")) .font(.subheadline).padding(.trailing,0)
                                                                    Spacer()
                                                                    Image("info-button 2")
                                                                        .resizable()
                                                                        .frame(width: 20, height: 20).padding(.leading,0)
                                                                    Image(systemName: "chevron.forward")
                                                                        .resizable()
                                                                        .frame(width: 20, height: 30)
                                                                        .foregroundColor(Color(hex: "#BFB6EB"))
                                                                        .padding(.trailing,30)
                                                                }.padding(.trailing,0)
                                                            )
                                                        
                                                     
                                                    }.padding(.top,0)
                                                        .padding(.bottom,30)
                                                    HStack {
                                                        Rectangle()
                                                            .frame(width: 390, height: 349)
                                                            .foregroundColor(Color(hex: "2D134A"))
                                                            .cornerRadius(40)
                                                            .shadow(color: Color.black.opacity(0.35), radius: 5, x: 0, y: 4)
                                                            .overlay(
                                                                VStack(alignment: .center, spacing: 20) {
                                                                
                                                                    HStack {
                                                                        Spacer()
                                                                        Text("Card Info")
                                                                            .foregroundColor(Color(hex: "#BFB6EB"))
                                                                            .font(.headline)
                                                                            .bold()
                                                                        Spacer()
                                                                    }
                                                                    .padding(.top, 20)
                                                                    .padding(.horizontal)
                                                                    
                                                                    VStack(alignment: .leading, spacing: 10) {
                                                                        HStack {
                                                                            Text("Transfer Price")
                                                                                .foregroundColor(Color(hex: "#917EA7"))
                                                                                .font(.subheadline)
                                                                            Spacer()
                                                                            Text("Rating")
                                                                                .foregroundColor(Color(hex: "#917EA7"))
                                                                                .font(.subheadline)
                                                                        }
                                                                        .padding(.horizontal)
                                                                        
                                                                        HStack {
                                                                            Text("20m")
                                                                                .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                                            Spacer()
                                                                            Text("5.6") //
                                                                                .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                                        }
                                                                        .padding(.horizontal)
                                                                        .padding(.bottom,10)
                                                                        HStack {
                                                                            Text("Card Type")
                                                                                .foregroundColor(Color(hex: "#917EA7"))
                                                                                .font(.subheadline)
                                                                            Spacer()
                                                                            Text("Rewards") //
                                                                                .foregroundColor(Color(hex: "#917EA7"))
                                                                                .font(.subheadline)
                                                                        }
                                                                        .padding(.horizontal)
                                                                        
                                                                        HStack {
                                                                            Text("FREE")
                                                                                .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                                            Spacer()
                                                                            Text("1X") //
                                                                                .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                                        }
                                                                        .padding(.horizontal)
                                                                        .padding(.bottom,10)
                                                                        HStack {
                                                                            Text("Season")
                                                                                .foregroundColor(Color(hex: "#917EA7"))
                                                                                .font(.subheadline)
                                                                            Spacer()
                                                                            Text("Team") //
                                                                                .foregroundColor(Color(hex: "#917EA7"))
                                                                                .font(.subheadline)
                                                                        }
                                                                        .padding(.horizontal)
                                                                       
                                                                        
                                                                        HStack {
                                                                            Text("2023-24")
                                                                                .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                                            Spacer()
                                                                            Text("AL HILAL") //
                                                                                .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                                        }
                                                                        .padding(.horizontal)
                                                                        .padding(.bottom,10)
                                                                        HStack {
                                                                            Text("Country")
                                                                                .foregroundColor(Color(hex: "#917EA7"))
                                                                                .font(.subheadline)
                                                                            Spacer()
                                                                            Text("Position") //
                                                                                .foregroundColor(Color(hex: "#917EA7"))
                                                                                .font(.subheadline)
                                                                        }
                                                                        .padding(.horizontal)
                                                                 
                                                                        
                                                                        HStack {
                                                                            Text("SAUDI ARABIA")
                                                                                .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                                            Spacer()
                                                                            Text("CENTRE FORWARD") //
                                                                                 .foregroundColor(Color(hex: "#BFB6EB")).bold()
                                                                        }
                                                                        .padding(.horizontal)
                                                                        .padding(.bottom,10)
                                                                        // Add more rows of information as needed
                                                                    }
                                                                    .padding(.horizontal)
                                                                    
                                                                    Spacer()
                                                                }
                                                                .padding(.vertical)
                                                            )
                                                    }
                                                    .padding(.top, 10)
                                                    HStack{
                                                        Rectangle()
                                                            .frame(width: 390, height: 390)
                                                            .foregroundColor(Color(hex: "2D134A"))
                                                            .cornerRadius(40)
                                                            //.fill(Image("Scroll Group 7712000"))
                                                            .shadow(color: Color.black.opacity(0.35), radius: 5, x: 0, y: 4).overlay(
                                                                VStack(alignment: .center, spacing: 20) {
                                                                
                                                                    HStack {
                                                                        Spacer()
                                                                        Text("LAST MATCHES")
                                                                            .foregroundColor(Color(hex: "#BFB6EB"))
                                                                            .font(.headline)
                                                                            .bold()
                                                                        Spacer()
                                                                    }
                                                                    .padding(.top, 20)
                                                                    .padding(.horizontal)
                                                                    Image("Scroll Group 7712000").resizable().frame(width:300,height:300)
                                                                }
                                                                
                                                            )}.padding(.top, 20)
                                                    
                                                    HStack{
                                                        Rectangle()
                                                            .frame(width: 390, height: 147.82)
                                                            .foregroundColor(Color(hex: "2D134A"))
                                                            .cornerRadius(40)
                                                            //.fill(Image("Scroll Group 7712000"))
                                                            .shadow(color: Color.black.opacity(0.35), radius: 5, x: 0, y: 4).overlay(
                                                                VStack(alignment: .center, spacing: 20) {
                                                                
                                                                    HStack {
                                                                        Spacer()
                                                                        Text("NEXT MATCH")
                                                                            .foregroundColor(Color(hex: "#BFB6EB"))
                                                                            .font(.headline)
                                                                            .bold()
                                                                        Spacer()
                                                                    }
                                                                    .padding(.top, 20)
                                                                    .padding(.horizontal)
                                                                    Image("Group 9186612000").resizable().frame(width:316,height:39.4)
                                                                }
                                                                
                                                            )}.padding(.top, 20)

                                                    
                                                }
                                                
                                            )
                            
                          
                            Spacer()
                            
                       
                        }}
                }
          }.frame(maxHeight: .infinity)
           .scrollBounceBehavior(.always,axes: .vertical)
                
        }
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(showDetailPage: .constant(true))
    }
}

//Extention to use Hex values for colors
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

