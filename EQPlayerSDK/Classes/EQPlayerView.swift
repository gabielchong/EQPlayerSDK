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
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .green
        translatesAutoresizingMaskIntoConstraints = false // Important for Auto Layout
        
        player = AVPlayer(url: URL(string: "https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/1080/Big_Buck_Bunny_1080_10s_1MB.mp4")!)
        addSubview(avpController.view)
    }
    
    public override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        guard let superview = superview else { return }
        
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            topAnchor.constraint(equalTo: superview.topAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
        
        
        avpController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            avpController.view.leadingAnchor.constraint(equalTo: leadingAnchor),
            avpController.view.trailingAnchor.constraint(equalTo: trailingAnchor),
            avpController.view.topAnchor.constraint(equalTo: topAnchor),
            avpController.view.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
