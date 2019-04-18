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
        if let path = Bundle.main.path(forResource: "webp_1", ofType: "webp") {
            let url = URL.init(fileURLWithPath: path)
            imageView.sd_setImage(with: url, completed: nil)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss:SSS"
            print("start \(dateFormatter.string(from: Date()))")
            imageView.sd_setImage(with: url) { (image, _, _, _) in
                print("end \(dateFormatter.string(from: Date()))")
            }
        }
        
        
        otherImageView.image = UIImage.init(imageLiteralResourceName: "New Project (1)")
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
