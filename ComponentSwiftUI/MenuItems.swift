//
//  MenuItems.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//

import SwiftUI

struct Component {
    let title: String
    let codeSnippet: String
    let view: AnyView
}

let menuItems: [String: [String]] = [
    "Basic Views": ["Text", "Image", "Color", "Shape", "Spacer", "Divider"],
    "Layout Containers": [
        "VStack",
        "HStack", "ZStack", "Group", "ForEach","GeometryReader",
        "LazyVStack",
        "LazyHStack",
        "LazyVGrid",
        "LazyHGrid",
        "Grid",
        "AlignmentGuide",
        "Frame",
        "ViewThatFits"
    ],
    "Containers and Navigation": [
        "NavigationStack", "NavigationSplitView", "TabView", "ScrollView",
                                 "List",
        "Form",
        "Section"
                                 ],
    "Controls": ["Button", "Toggle", "Slider", "Stepper", "TextField"],
    "Modals and Alerts": ["Alert", "Sheet", "Popover", "ConfirmationDialog"],
    "Advanced Views and Utilities": ["TimelineView", "AnyView", "EmptyView", "EquatableView"],
    "Graphics and Drawing": ["Canvas", "Shape", "Gradient"],
    "Charts Framework": ["Chart", "BarMark", "LineMark"],
    "Gestures": ["TapGesture", "LongPressGesture", "DragGesture"],
    "State and Data Flow": ["@State", "@Binding", "@ObservedObject"],
    "New in iOS 18": ["Observation API", "Custom Layouts", "Macro System"],
    "Modifiers and Environment": [".foregroundColor()", ".font()", ".padding()"],
    "Accessibility": [".accessibilityLabel()", ".accessibilityValue()"],
    "Deprecated Components": ["NavigationView", "ActionSheet"],
    "Third-Party Integrations": ["Map", "VideoPlayer"]
]

let components: [String: Component] = [
    "Text": TextComponent,
    "Image": ImageComponent,
    "Color": ColorComponent,
    "Shape": ShapeComponent,
    "Spacer": SpacerComponent,
    "Divider": DividerComponent,
    "VStack": VStackComponent,
    "HStack": HStackComponent,
    "ZStack": ZStackComponent,
    "Group": GroupComponent,
    "ForEach": ForEachComponent,
    "GeometryReader": GeometryReaderComponent,
    "LazyVStack":LazyVStackComponent,
    "LazyHStack": LazyHStackComponent,
    "LazyVGrid": LazyVGridComponent,
    "LazyHGrid": LazyHGridComponent,
    "Grid": GridComponent,
    "AlignmentGuide": AlignmentGuideComponent,
    "Frame": FrameComponent,
    "ViewThatFits": ViewThatFitsComponent,
    "NavigationStack": NavigationStackComponent,
    "NavigationSplitView": NavigationSplitViewComponent,
    "TabView": TabViewComponent,
    "ScrollView": ScrollViewComponent,
    "List": ListComponent,
    "Form": FormComponent,
    "Section": SectionComponent,
    "Button" : ButtonComponent,
    "Toggle" : ToggleComponent,
    "Slider" : SliderComponent,
    "Stepper": StepperComponent,
    "TextField": TextFieldComponent,
    // Add more components here
]
