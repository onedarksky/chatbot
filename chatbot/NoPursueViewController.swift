//
//  NoPursueViewController.swift
//  chatbot
//
//  Created by Jiang Yung Tse on 2021/11/18.
//

import UIKit

class NoPursueViewController: UIViewController {
    //顯示Gif
    
    @IBOutlet weak var girlImageView: UIImageView!
 
    @IBOutlet weak var askTextField: UITextField!
    
    @IBOutlet weak var showLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //顯示Gif
        guard let data = NSDataAsset(name: "girl")?.data else { return }
        let cfData = data as CFData
        CGAnimateImageDataWithBlock(cfData, nil) { (_, cgImage, _) in
                 self.girlImageView.image = UIImage(cgImage: cgImage)
        }
    }
    //return收鍵盤
    @IBAction func DidEndOnExitKeyboard(_ sender: UITextField) {
    }
    
    @IBAction func LetMeGoButton(_ sender: UIButton) {
        let askText = askTextField.text
        if askText?.contains("我先走了") == true {
            showLabel.text = "往哪跑"
        }else if askText?.contains("我有老婆") == true {
            showLabel.text = "沒關係"
        }else if askText?.contains("放過我吧") == true {
            showLabel.text = "你已經是我的人了"
        }else if askText?.contains("要多少錢我都給你") == true {
            showLabel.text = "要人不要錢"
        }else if askText?.contains(" ") == true {
            showLabel.text = "此樹是我齋，此處是我開，若要過此路，留下你人來"
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
        }else if askText?.contains("") == true {
            showLabel.text = ""
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

}
