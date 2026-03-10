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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            ?? UITableViewCell(style: .default, reuseIdentifier: "cell")

        var content = UIListContentConfiguration.subtitleCell()
        content.text = "Home → Office"
        content.secondaryText = "Ride #1020 on 2025-07-14 00:34"
        content.image = UIImage(systemName: "car.fill")
        content.imageProperties.tintColor = .gray

        cell.contentConfiguration = content

        let valueLabel = UILabel()
        valueLabel.text = "$32.22"
        valueLabel.font = .systemFont(ofSize: 14, weight: .medium)
        valueLabel.sizeToFit()

        cell.accessoryView = valueLabel

        return cell
    }
}
