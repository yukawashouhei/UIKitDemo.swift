
import UIKit
import SwiftUI

class ViewController: UIViewController {

    var count = 0
    let countLabel = UILabel()
    let countButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
    }
    
    func setupUI() {

        countLabel.text = "0"
        countLabel.font = .systemFont(ofSize: 40)
        countLabel.textAlignment = .center
        
        //位置とサイズをピクセル単位で命令。 座標(0,200)に、幅は画面いっぱい、高さは50で配置。
        //この実装では0~ の数字
        countLabel.frame = CGRect(x: 0, y: 200, width: view.frame.width, height: 50)
        
        //countLabelを親画面に追加するように命令
        view.addSubview(countLabel)
        
        //この実装では増やす ボタン
        countButton.setTitle("増やす", for: .normal)
        countButton.titleLabel?.font = .systemFont(ofSize: 24)

        countButton.frame = CGRect(x: 0, y: 300, width: view.frame.width, height: 50)

        countButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        view.addSubview(countButton)
    }
    
    @objc func buttonTapped() {
        
        count += 1
        
        //データの変更は、画面に自動反映されないので下記で新しい数字に置き換えるよう命令。
        countLabel.text = "\(count)"
        
        // 色変えも手動。もし10を超えていたら、色を赤に塗り替えろ！と命令。
        if count > 10 {
            countLabel.textColor = .red
        }
    }
}

#Preview {
    ViewController()
}
