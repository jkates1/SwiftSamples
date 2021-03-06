
import UIKit
import XCPlayground

class TableViewController: UITableViewController {
    
    let tableData = [["3"], ["13"], ["Red","White","Blue"]]
    
    override func viewDidLoad() {
        self.tableView.delegate = self
    }
}
//Delegate Protocol Methods
extension TableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData[section].count
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = tableData[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Colors"
        case 1:
            return "Stripes"
        case 2:
            return "Which Colors"
        default :
            return "Default"
        }
    }
}

let thisTable = TableViewController()
thisTable.tableData
XCPlaygroundPage.currentPage.liveView = thisTable.view

