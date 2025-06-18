//
//  ContentView.swift
//  YT Clone
//
//  Created by Piyush Thummar on 18/06/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            Color.background
                .ignoresSafeArea()
            
            VStack {
                
                HStack (spacing: 25) {
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                    
                    Spacer()
                    
                    Image(systemName: "tv.badge.wifi")
                    
                    Image(systemName: "bell")
                    
                    Image(systemName: "magnifyingglass")

                }
                .font(.title2)
                .padding(.horizontal)
                
                
                ScrollView {
                    
                    VStack {
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack {
                                
                                ZStack {
                                    
                                    Rectangle()
                                        .fill(Color.tabBackground)
                                        .frame(height: 40)
                                        .clipShape(RoundedRectangle(cornerRadius: 4))
                                    
                                    Image(systemName: "safari")
                                        .foregroundColor(Color.foreground)
                                        .font(.title2)
                                        .fontWeight(.medium)
                                        .padding(.horizontal, 10)
                                }
                                .padding(.trailing, 12)
                                
                                
                                TopSuggestion(suggestion: "All", isActive: true)
                                TopSuggestion(
                                    suggestion: "iOS",
                                    isActive: false
                                )
                                TopSuggestion(suggestion: "Swift", isActive: false)
                                TopSuggestion(suggestion: "Kotlin", isActive: false)
                                TopSuggestion(suggestion: "Samsung", isActive: false)
                            }
                        }
                        .padding(.horizontal)
                        
                        
                        VideoThumb(title: "iOS Calculator clone for Android - Kotlin", duration: "2:07", thumbnail: "thumb1", channelName: "Piyush Thummar", viewCount: "1.9M", channelIcon: "icon1", uploadTime: "10 months ago")
                        
                        VideoThumb(title: "VIJAY MALLYA EXPOSED", duration: "24:11", thumbnail: "thumb2", channelName: "Tanmay Bhatt", viewCount: "2.7M", channelIcon: "icon2", uploadTime: "6 days ago")
                        
                        VideoThumb(title: "Three Trucks in Gokuldham! | FULL MOVIE | Part 1 | Taarak Mehta Ka Ooltah Chashmah", duration: "1:02:31", thumbnail: "thumb3", channelName: "Tarak Mehta", viewCount: "20M", channelIcon: "icon3", uploadTime: "5 months ago")
                        
                        VideoThumb(title: "iOS Calculator clone for Android - Kotlin", duration: "2:07", thumbnail: "thumb1", channelName: "Piyush Thummar", viewCount: "1.9M", channelIcon: "icon1", uploadTime: "10 months ago")
                        
                        VideoThumb(title: "VIJAY MALLYA EXPOSED", duration: "24:11", thumbnail: "thumb2", channelName: "Tanmay Bhatt", viewCount: "2.7M", channelIcon: "icon2", uploadTime: "6 days ago")
                        
                        VideoThumb(title: "Three Trucks in Gokuldham! | FULL MOVIE | Part 1 | Taarak Mehta Ka Ooltah Chashmah", duration: "1:02:31", thumbnail: "thumb3", channelName: "Tarak Mehta ka ooltah chashmah", viewCount: "20M", channelIcon: "icon3", uploadTime: "5 months ago")
                        
                    }
                    
                }
                
                HStack {
                    
                    Spacer()
                    
                    NavBarItem(label: "house")
                    
                    Spacer()
                    
                    NavBarItem(label: "link")
                    
                    Spacer()
                    
                    NavBarItem(label: "plus.circle.fill")
                    
                    Spacer()
                    
                    NavBarItem(label: "rectangle.stack.fill")
                    
                    Spacer()
                    
                    NavBarItem(label: "person.crop.circle")
                    
                    Spacer()
                    
                    
                }
                .font(.title2)
                .frame(height: 50)
                
            }
            
        }
    }
}


struct TopSuggestion: View {
    
    let suggestion: String
    let isActive: Bool
    
    var body: some View {
        
        let bg =
        if (isActive) { Color.foreground }
        else { Color.tabBackground }
        
        let fg =
        if (isActive) { Color.background }
        else { Color.foreground }
        
        ZStack {
            
            Rectangle()
                .fill(bg)
                .frame(height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(suggestion)
                .foregroundColor(fg)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.horizontal, 16)

        }
    }
    
}



struct VideoThumb: View {
    
    let title: String
    let duration: String
    let thumbnail: String
    let channelName: String
    let viewCount: String
    let channelIcon: String
    let uploadTime: String
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
                Image(thumbnail)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        Text(duration)
                            .font(.system(size: 14))
                            .padding(4)
                            .padding(.horizontal, 4)
                            .background(Color.black.opacity(0.6))
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                            .padding(8)
                        
                    }
                }
            }
            .padding(.bottom, 8)
            
            HStack (alignment: .top) {
                
                Image(channelIcon)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                    .padding(.trailing, 8)

                
                HStack {
                    
                    VStack (alignment: .leading) {
                        
                        Text(title)
                            .font(.headline)
                        
                        Text("\(channelName) • \(viewCount) • \(uploadTime)")
                            .font(.caption)
                            .foregroundColor(Color.lightText)
                        
                    }
                    
                    Spacer()
                        
                    Image(systemName: "ellipsis")
                        .rotationEffect(Angle(degrees: 90))
                        .font(.title2)
                        
                }
            }
            .padding(.horizontal)
            
            
        }
        .padding(.vertical, 4)
        
    }
    
}


struct NavBarItem: View {
    
    let label: String
    
    var body: some View {
        
        Image(systemName: label)
            .foregroundColor(Color.white)
    }
}


#Preview {
    ContentView()
}
