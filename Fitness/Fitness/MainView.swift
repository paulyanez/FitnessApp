//
//  MainView.swift
//  Fitness
//
//  Created by Paul Yanez on 6/1/23.
//

import SwiftUI

struct MainView: View {
    @State var selectedIndex = 1
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                Fitness2()
                    .tabItem {
                        Label("Summary", systemImage: "target")
                    }.tag(0)
                
                Fitness2()
                    .tabItem {
                        Label("Fitness+", systemImage: "figure.run.circle.fill")
                    }.tag(1)
                
                Fitness2()
                    .tabItem {
                        Label("Sharing", systemImage: "infinity.circle.fill")
                    }.tag(2)
            }
            .tint(.green)
        }
    }
}

struct Fitness2: View {
    var twoColumnGrid = [GridItem(.flexible(), spacing: 6), GridItem(.flexible(), spacing: 6)]
    
    var body: some View {
        VStack {
            // Top Navigation
            topNav
                .padding(.horizontal, 20)
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 25) {
                    VStack(spacing: 20.0) {
                        // Horizontal Scroll
                        scrollHorizontal
                        
                        // Hero section
                        welcomeFitness
                        
                        // New This Week section
                        workouts
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 20)
                .padding(.bottom, 25)
            }
            .zIndex(-1)
        }
    }
    
    
    var topNav: some View {
        HStack(alignment: .bottom) {
            HStack(spacing: 4) {
                Image(systemName: "apple.logo")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                Text("Fitness")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                +
                Text("+")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            
            Spacer()
            
            Button(action: {
                // code when button is tapped
            }) {
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 1)
                    )
            }
        }
        .padding(.top, 28)
    }
    
    
    var scrollHorizontal: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 6) {
                HStack {
                    Image(systemName: "figure.highintensity.intervaltraining")
                    
                    Text("HIIT")
                        .font(.caption)
                }
                .padding(.horizontal, 16)
                .frame(height: 38)
                .background {
                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                
                HStack {
                    Image(systemName: "figure.yoga")
                    
                    Text("YOGA")
                        .font(.caption)
                }
                .padding(.horizontal, 16)
                .frame(height: 38)
                .background {
                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                
                HStack {
                    Image(systemName: "figure.core.training")
                    
                    Text("CORE")
                        .font(.caption)
                }
                .padding(.horizontal, 16)
                .frame(height: 38)
                .background {
                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                
                HStack {
                    Image(systemName: "figure.strengthtraining.functional")
                    
                    Text("STRENGTH")
                        .font(.caption)
                }
                .padding(.horizontal, 16)
                .frame(height: 38)
                .background {
                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                
                HStack {
                    Image(systemName: "figure.boxing")
                    
                    Text("BOXING")
                        .font(.caption)
                }
                .padding(.horizontal, 16)
                .frame(height: 38)
                .background {
                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                
                HStack {
                    Image(systemName: "figure.climbing")
                    
                    Text("CLIMBING")
                        .font(.caption)
                }
                .padding(.horizontal, 16)
                .frame(height: 38)
                .background {
                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                
                HStack {
                    Image(systemName: "figure.rower")
                    
                    Text("ROWING")
                        .font(.caption)
                }
                .padding(.horizontal, 16)
                .frame(height: 38)
                .background {
                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                
            }
        }
    }
    
    var welcomeFitness: some View {
        ZStack {
            Image("fitness-bike")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
            HStack {
                Image(systemName: "play.circle")
                    .font(.system(size: 50))
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
            }
            .padding(.trailing, 10)
            .offset(y: 50)
            .frame(maxWidth: .infinity, alignment: .bottomTrailing)
        }
    }
    
    
    // New This Week
    var workouts: some View {
        VStack(spacing: 10) {
            HStack(alignment: .bottom) {
                Text("New This Week")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 4)
                
                Spacer()
                
                Text("Show All")
                    .font(.callout)
                    .fontWeight(.regular)
                    .foregroundColor(Color.green)
            }
            
            LazyVGrid(columns: twoColumnGrid, spacing: 16) {
                ZStack {
                    HStack(alignment: .bottom, spacing: 8) {
                        Image("fitness-rowing")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    
                    Circle()
                        .fill(.black.opacity(0.6))
                        .frame(width: 32, height: 32)
                    
                    HStack {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Rowing with Jake")
                        .font(.body)
                    
                    Text("46")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                    +
                    Text("MIN/DAY")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                }
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ZStack {
                    HStack {
                        Image("fitness-hiit")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    
                    Circle()
                        .fill(.black.opacity(0.6))
                        .frame(width: 32, height: 32)
                    
                    
                    HStack {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("HIIT Training")
                        .font(.body)
                    
                    Text("60")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                    +
                    Text("MIN/DAY")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                }
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ZStack {
                    HStack(alignment: .bottom, spacing: 8) {
                        Image("fitness-boxing")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    
                    Circle()
                        .fill(.black.opacity(0.6))
                        .frame(width: 32, height: 32)
                    
                    HStack {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                    }
                }
                
                
                VStack(alignment: .leading) {
                    Text("Boxing Hour with Sam")
                        .font(.body)
                    
                    Text("60")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                    +
                    Text("MIN/DAY")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                }
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ZStack {
                    HStack(alignment: .bottom, spacing: 8) {
                        Image("fitness-weights")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    
                    Circle()
                        .fill(.black.opacity(0.6))
                        .frame(width: 32, height: 32)
                    
                    
                    HStack {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                    }
                }
                
                
                VStack(alignment: .leading) {
                    Text("Training with Weights")
                        .font(.body)
                    
                    Text("46")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                    +
                    Text("MIN/DAY")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                }
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ZStack {
                    HStack(alignment: .bottom, spacing: 8) {
                        Image("fitness-yoga")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    
                    Circle()
                        .fill(.black.opacity(0.6))
                        .frame(width: 32, height: 32)
                    
                    
                    HStack {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                    }
                }
                
                
                VStack(alignment: .leading) {
                    Text("Yoga with Rhonda")
                        .font(.body)
                    
                    Text("55")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                    +
                    Text("MIN/DAY")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                }
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
        }
    }
}

struct FitnessView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}

