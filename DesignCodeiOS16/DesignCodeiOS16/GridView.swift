import SwiftUI

struct GridView: View {
    var body: some View {
        Grid(alignment: .leading,
             horizontalSpacing: 12,
             verticalSpacing: 12) {
            GridRow {
                Text("Votes")
                    .gridColumnAlignment(.trailing)
                    .gridCellColumns(2)
                Text("Rating")
                    .gridColumnAlignment(.trailing)
            }
            .font(.footnote)
            .foregroundColor(.secondary)
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow {
                Text("4")
                    .frame(width: 30, alignment: .trailing)
                ProgressView(value: 0.4)
                    .frame(maxWidth: 250)
                RatingView(rating: 4)
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.8)
                    .frame(maxWidth: 250)
                RatingView(rating: 1)
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.1)
                    .frame(maxWidth: 250)
                RatingView(rating: 5)
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.5)
                    .frame(maxWidth: 250)
                RatingView(rating: 2)
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.7)
                    .frame(maxWidth: 250)
                RatingView(rating: 3)
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

struct RatingView: View {
    var rating = 3
    var body: some View {
        HStack(spacing: 0.0) {
            ForEach(0 ..< 5) { item in
                Image(systemName: item < rating ? "star.fill" : "star")
            }
        }
    }
}
