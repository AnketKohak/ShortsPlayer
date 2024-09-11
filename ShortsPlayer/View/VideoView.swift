//
//  VideoView.swift
//  ShortsPlayer
//
//  Created by Anket Kohak on 11/09/24.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var video:Video
    
    @State private var player = AVPlayer()
    var body: some View {
        VideoPlayer(player: player)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                if let link = video.videoFiles.first?.link{
                    player = AVPlayer(url: URL(string:link)!)
                    print(link)
                    player.play()
                }
            }
    }
}

#Preview {
    VideoView(video: previewVideo)
}
