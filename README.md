
# Appetizers

The Appetizers App is an iOS application built using Swift and SwiftUI that fetches data from an API and presents a list of appetizers to the user. The user can browse through various appetizers, view detailed information including the price, and add selected items to an order.

## Installation

To install and run Appetizers on your device, follow these steps:

1. Clone the repository:
```bash
git clone https://github.com/Mohamed-Mostafa7/Appetizers.git
```
2. Open the project:
```bash
cd Appetizers
```
3. Open the project in Xcode.
4. Build and run the project.

## Features

- Appetizer List: Users can view a list of available appetizers with images and short descriptions.
- Details View: Allows users to tap on an appetizer to view more details such as a full description and price.
- Order Management: Users can add items to their order and view the total cost.
- Responsive Design: Built using SwiftUI, the app provides a seamless and responsive UI for all screen sizes.
- Errors & Alerts: Implemented error handling and user-friendly alerts to notify users of any issues, such as network failures or unavailable data.
  
## Screenshots
<p align="Center">
  <img src="https://github.com/user-attachments/assets/6c1a769f-e664-4ac4-b869-d72f2cd53eea" width="25%">
  <img src="https://github.com/user-attachments/assets/a3194843-af7b-4c7a-8405-5b32bac243ae" width="25%"> 
  <img src="https://github.com/user-attachments/assets/b3631dfa-b871-40cc-8e3d-14afcc027b8e" width="25%"> 
</p>

<p align="Center">
  <img src="https://github.com/user-attachments/assets/7fd81f19-7ed7-49ea-b2bd-c20d3334208d" width="25%">
  <img src="https://github.com/user-attachments/assets/81272ec8-1166-4844-9ec2-72a5de72ade1" width="25%"> 
</p>

## Technologies Used

The following technologies were used in the development of Appetizers:
- Swift & SwiftUI: For building the UI and managing app logic.
- API Integration: Utilized Async/Await network calls to fetch appetizer data, ensuring a responsive and smooth user experience.
- Combine Framework: To handle asynchronous data streams and manage API responses.
- Combine Framework: To handle asynchronous data streams and manage API responses.
- @AppStorage: Used @AppStorage to persist simple data like user preferences across app sessions.
- EnvironmentObject: Leveraged EnvironmentObject to share data seamlessly across multiple views and manage the app state effectively.
- Regex: Implemented regular expressions (Regex) for advanced text validation and formatting.
- Dark Mode: Supporting others for seameless experience in both light and dark mode.

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

