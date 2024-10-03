//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 03/10/2024.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(BorderedButtonStyle())
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

