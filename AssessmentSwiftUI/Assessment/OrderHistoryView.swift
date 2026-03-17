import SwiftUI

struct OrderHistoryView: View {
    var body: some View {
        NavigationView {
            List(0..<10, id: \.self) { _ in
                HStack {
                    Label {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Home → Office")
                            Text("Ride #1020 on 2025-07-14 00:34")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    } icon: {
                        Image(systemName: "car.fill")
                            .foregroundColor(.gray)
                    }

                    Spacer()

                    Text("$32.22")
                        .font(.system(size: 14, weight: .medium))
                }
            }
            .navigationTitle("Order history")
        }
        .navigationViewStyle(.stack)
    }
}
