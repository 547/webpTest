//
//  TableViewController.swift
//  webpTest
//
//  Created by seven on 2019/4/18.
//  Copyright © 2019 seven. All rights reserved.
//

import UIKit
import SDWebImage
class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 100
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
extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 200
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell.init(style: .default, reuseIdentifier: "cell")
//        if let path = Bundle.main.path(forResource: "webp_1", ofType: "webp") {
//            let url = URL.init(fileURLWithPath: path)
//            cell.imageView?.sd_setImage(with: url, completed: nil)
//        }
//        print("start \(Date().timeIntervalSince1970)")
        cell.imageView?.sd_setImage(with: URL.init(string: "https://raw.githubusercontent.com/547/webpTest/master/webpTest/webps/webp_1.webp"), completed: { (image, _, _, _) in
//            print("end \(Date().timeIntervalSince1970) \n \(image)")
        })
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
