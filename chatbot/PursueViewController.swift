//
//  PursueViewController.swift
//  chatbot
//
//  Created by Jiang Yung Tse on 2021/11/18.
//

import UIKit

class PursueViewController: UIViewController {
    
    @IBOutlet weak var girlImageView: UIImageView!
    
    @IBOutlet weak var askTextField: UITextField!
    
    @IBOutlet weak var showLabel: UILabel!
    
    @IBOutlet weak var giftImageView: UIImageView!
    
    var NumberArray = [Int]()
    let PhotoArray = ["gift","gift1","gift2"]
    let alertTitle = ["如花同意","如花深思不解","如花略有意見"]
    let alertMessage = ["謝謝禮物","可能如花不喜歡","可能要重選禮物"]

    override func viewDidLoad() {
        super.viewDidLoad()
        //顯示gif
        guard let data = NSDataAsset(name: "girl")?.data else { return }
        let cfData = data as CFData
        CGAnimateImageDataWithBlock(cfData, nil) { (_, cgImage, _) in
                 self.girlImageView.image = UIImage(cgImage: cgImage)
        }
    }
    
    //輸入完後按return離開
    @IBAction func DidEndOnExitKeyboard(_ sender: UITextField) {
        
    }
    //選擇禮物
    @IBAction func giftButton(_ sender: UIButton) {
        for i in 1...100 {
            NumberArray.append(i)
        }
        if askTextField.text == "" {
            showLabel.text = "請選擇禮物"
            showLabel.textColor = .white
        }else{
            let stickRuselt = NumberArray.randomElement()
            showLabel.text = "追求者選到\(stickRuselt!)禮物，請按收不收"
            if stickRuselt! < 10 {
                
            }else if stickRuselt! > 9 && stickRuselt! < 100{
            }
        }
    }
    func yesOrNot (index:Int) {
        giftImageView.image = UIImage(named: "\(PhotoArray[index])")
        let alertController = UIAlertController(title: "\(alertTitle[index])", message: "\(alertMessage[index])", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "了解", style: .default)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
    }
    @IBAction func yesOrNoButton(_ sender: UIButton) {
        let godReuslt = Int.random(in: 0...3)
        if  godReuslt == 0 {
            yesOrNot(index: 0)
        }else if godReuslt == 1 {
            yesOrNot(index: 1)
        }else if godReuslt == 2 {
            yesOrNot(index: 2)
        }
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

