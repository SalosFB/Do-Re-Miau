//
//  ExpandableButton.swift
//  Do-Re-Miau
//
//  Created by User on 19/12/25.
//

import SwiftUI

struct ExpandableButton: View {

    @State private var showAlert = false

    var body: some View {
        ExpandableButtonPanel(
            primaryButton: ExpandableButtonItem(label: Image(systemName: "list.bullet")),
            secondaryButtons: [
                ExpandableButtonItem(label: Image(systemName: "speaker.minus")) {
                    self.showAlert.toggle()
                },
                ExpandableButtonItem(label: Image(systemName: "speaker.plus")) {
                    self.showAlert.toggle()
                },
                ExpandableButtonItem(label: Image(systemName: "square.and.arrow.up")) {
                    self.showAlert.toggle()
                },
                ExpandableButtonItem(label: Image(systemName: "play.house")) {
                    self.showAlert.toggle()
                },
            ]
        ).padding()
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Clicou!"))
            })
    }
}


struct ExpandableButtonItem: Identifiable {
    let id = UUID()
    let label: Image
    var action: (() -> Void)? = nil
    var color: Color = .white
    var imageSize: CGFloat? = nil
}

struct ExpandableButtonPanel: View {

    let primaryButton: ExpandableButtonItem
    let secondaryButtons: [ExpandableButtonItem]

    private let size: CGFloat = 70
    private var cornerRadius: CGFloat {
        get { size / 2 }
    }

    private let defaultImageSize: CGFloat = 30

    @State private var isExpanded = false

    var body: some View {
        VStack {
            Button(action: {
                withAnimation{
                    self.isExpanded.toggle()
                }
                self.primaryButton.action?()
            }, label: {
                primaryButton.label
                    .font(.system(size: primaryButton.imageSize ?? defaultImageSize))
                    .foregroundStyle(primaryButton.color)
            })
            .frame(width: self.size, height: self.size)

            if isExpanded {
                            ForEach(secondaryButtons) { button in
                                Button(action: {
                                    button.action?()
                                }, label: {
                                    button.label
                                        .font(.system(size: button.imageSize ?? defaultImageSize))
                                        .foregroundStyle(button.color)
                                })
                                .frame(width: self.size, height: self.size)
                            }
                        }
        }
        .background(Color.corLightBlue)
        .cornerRadius(cornerRadius)
        .shadow(radius: 5)
    }
}

#Preview {
    ExpandableButton()
}
