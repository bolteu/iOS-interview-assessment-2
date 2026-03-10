import UIKit

class OrderHistoryViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Order history"
    }

}

// MARK: - UITableViewDataSource
extension OrderHistoryViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = "Row \(indexPath.row + 1)"
        return cell
    }
}
