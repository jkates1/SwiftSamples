
import UIKit
import XCPlayground

class TableViewController: UITableViewController {
    
    let tableData = [["3"], ["13"], ["Red","White","Blue"]]
    
    override func viewDidLoad() {
        self.tableView.delegate = self
        self.tableView.sectionIndexBackgroundColor = UIColor.blackColor()
    }
}
//Delegate Protocol Methods
extension TableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData[section].count
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
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
thisTable.view!
XCPlaygroundPage.currentPage.liveView = thisTable.view