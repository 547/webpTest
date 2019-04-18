//
//  ImageViewController.swift
//  webpTest
//
//  Created by seven on 2019/4/18.
//  Copyright © 2019 seven. All rights reserved.
//

import UIKit
import SDWebImage
import SDWebImageWebPCoder
class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var otherImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SDImageCodersManager.shared.addCoder(SDImageWebPCoder.shared)
        
//        print("start webp \(Date().timeIntervalSince1970)")
//        imageView.sd_setImage(with: URL.init(string: "https://raw.githubusercontent.com/547/webpTest/master/webpTest/webps/webp_1.webp")) { (image, _, _, _) in
//            print("end webp \(Date().timeIntervalSince1970) \n \(image)")
//        }
//        
//        
//        print("start png \(Date().timeIntervalSince1970)")
//        otherImageView.sd_setImage(with: URL.init(string: "https://raw.githubusercontent.com/547/webpTest/master/webpTest/pngs/png_1.png")) { (image, _, _, _) in
//            print("end png \(Date().timeIntervalSince1970) \n \(image)")
//        }
    }


}
