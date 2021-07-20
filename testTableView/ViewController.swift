//
//  ViewController.swift
//  testTableView
//
//  Created by 최성훈 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "[ 커피 메뉴 ]"
        case 1:
            return "[ Menu of Coffee]"
        default:
            return ""
        }
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.korean.count
        case 1:
            return self.english.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let text: String = indexPath.section == 0 ? self.korean[indexPath.row] : self.english[indexPath.row]
        
        cell.textLabel?.text = text
        return cell
    }
    
    @IBOutlet weak var myTableView: UITableView!
    let cellidentifier: String = "cell"
    
    
    let korean: [String] = ["에스프레소", "아메리카노", "카페라떼", "카라멜마키아또", "콜드브루", "바닐라라떼", "민트티"]
    let english: [String] = ["espresso", "americano", "cafe latte", "caramel macchiato", "cold brew", "vanila latte", "mint tee"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

