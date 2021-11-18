//
//  ViewController.swift
//  chatbot
//
//  Created by Jiang Yung Tse on 2021/11/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var girlImageView: UIImageView!
    //顯示Gif
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let data = NSDataAsset(name: "girl")?.data else { return }
        let cfData = data as CFData
        CGAnimateImageDataWithBlock(cfData, nil) { (_, cgImage, _) in
                 self.girlImageView.image = UIImage(cgImage: cgImage)
        }
    }
}

