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
    @IBOutlet weak var pngImageView: UIImageView!
    @IBOutlet weak var jpgImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SDImageCodersManager.shared.addCoder(SDImageWebPCoder.shared)
        
        let webpStarTimeInterval = Date().timeIntervalSince1970
        imageView.sd_setImage(with: URL.init(string: "https://raw.githubusercontent.com/547/webpTest/master/webpTest/webps/webp_1.webp")) { (image, error, _, _) in
            print("webp use time \(Date().timeIntervalSince1970 - webpStarTimeInterval) seconds \n \(image)")
            if let err = error {
                print("load webp error: \(err)")
            }
        }

        let pngStarTimeInterval = Date().timeIntervalSince1970
        pngImageView.sd_setImage(with: URL.init(string: "https://raw.githubusercontent.com/547/webpTest/master/webpTest/pngs/png_1.png")) { (image, error, _, _) in
            print("png use time \(Date().timeIntervalSince1970 - pngStarTimeInterval) seconds \n \(image)")
            if let err = error {
                print("load png error: \(err)")
            }
        }
        let jpgStarTimeInterval = Date().timeIntervalSince1970
        jpgImageView.sd_setImage(with: URL.init(string: "https://raw.githubusercontent.com/547/webpTest/master/webpTest/jpgs/jpg_1.jpeg")) { (image, error, _, _) in
            print("jpg use time \(Date().timeIntervalSince1970 - jpgStarTimeInterval) seconds \n \(image)")
            if let err = error {
                print("load jpg error: \(err)")
            }
        }
        ///png 与 webp 的对比 👆
        //综上，同一张图片， 相同网速，webp下载到显示大概 较 png下载到显示 少用了1s多，所以在图片要求比较大的情况下，可以考虑使用webp格式的图片，当然webp格式的图片需要服务端进行编码保存，所以考虑webp方案的时候也要考虑服务端是否愿意进行webp编码。PS：据了解webp格式的图片显示之前要进行解码，这就是与其他png、jpg格式图片多出来的步骤，解码也需要消耗时间，所有如果图片比较小的情况下可以不考虑webp方案。
        
        
        
        
    }


}
