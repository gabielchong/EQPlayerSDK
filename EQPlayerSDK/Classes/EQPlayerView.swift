//
//  EQPlayerView.swift
//  EQPlayerSDK
//
//  Created by GabrielChong on 2023/8/11.
//

import AVFoundation
import UIKit
import AVKit

public class EQPlayerView: UIView {
    private lazy var avpController: AVPlayerViewController = {
        let controller = AVPlayerViewController()
        controller.player = player
        return controller
    }()
    private var player: AVPlayer?
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        // Update the frame to match the parent view's width and height
        if let parentView = superview {
            frame = parentView.bounds
            createPlayerItem(view: parentView)
        }
    }
    
    func createPlayerItem(view _view: UIView){
        player = AVPlayer(url: URL(string: "https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/1080/Big_Buck_Bunny_1080_10s_1MB.mp4")!)
        _view.addSubview(avpController.view)
    }
}
