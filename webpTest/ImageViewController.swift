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
        ///PS：上面参与对比的图片size: png => 1.1M , webp => 46KB, jpeg => 104KB
        ///png 与 webp 的对比 👆
        //综上，同一张图片， 相同网速，webp下载到显示大概 较 png下载到显示 少用了1s多，所以在图片要求比较大的情况下，可以考虑使用webp格式的图片，当然webp格式的图片需要服务端进行编码保存，所以考虑webp方案的时候也要考虑服务端是否愿意进行webp编码。PS：据了解webp格式的图片显示之前要进行解码，这就是与其他png、jpg格式图片多出来的步骤，解码也需要消耗时间，所有如果图片比较小的情况下可以不考虑webp方案。
        
        
        ///jpeg 与 webp的对比 👆
        // 同一张图片， 相同网速，webp下载到显示大概 较 jpeg下载到显示 所用时间差不多，甚至有时还比jpeg多用了0点几秒，所以如果原图原图不是超级大的话，webp格式因为多出编码解码过程，以及因为iOS目前官方并不支持webp格式而导致webview显示带有webp格式图片的网页中图片不显示的问题（需要开发手动遍历处理转换成png、jpg格式）就根本不占什么优势了，当然如果对图片质量要求比较高的话，或者需求比较倾向节省用户流量的情况下，webp还是有一点点优势的。 (像是漫画类或者大型购物类的app采用webp的可能比较有优势，其他普通的app使用jpeg格式的比较省事)
        
        
    }


}
