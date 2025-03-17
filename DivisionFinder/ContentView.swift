import SwiftUI

struct ContentView: View {
    // State variables to hold user input
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var beltColor: String = "White"
    @State private var genderSelection: String = "Male"
    // State variables for multiple event selections (checkboxes)
    @State private var selectedEvents: [String] = []
    
    // Array of events to choose from
    let events = ["Poomsae", "Open Poomsae", "Weapons", "Synchronized", "Sparring", "Power Hand Breaking", "3 Direction Breaking", "Mixed Pair Forms", "Mixed Team Forms"]
    
    // Array of belt colors for the picker
    let beltColors = ["White", "Yellow", "Orange", "Green", "Blue", "Purple", "Red", "Brown", "Black", "1st Dan", "2nd Dan", "3nd Dan", "4th Dan", "5th Dan", "6th Dan", "7th Dan" ]
    
    let genders = ["Male", "Female"]
    
    var body: some View {
        VStack {
            // Name input field
            TextField("Enter your name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Picker("Gender: ", selection: $genderSelection) {
                ForEach(genders, id: \.self) { gender in
                    Text(gender)
                }
            }
            .pickerStyle(.wheel)
            .padding()
            // Birthdate picker
//            DatePicker("Select your birthdate", selection: $birthdate, displayedComponents: .date)
//                .datePickerStyle(WheelDatePickerStyle())
//                .padding()
            TextField("Age: ", text: $age)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            // Belt color picker
            Picker("Select your belt color", selection: $beltColor) {
                ForEach(beltColors, id: \.self) { color in
                    Text(color)
                }
            }
            .pickerStyle(WheelPickerStyle())
            .padding()
            
            // Event selection checkboxes (Toggle views)
            VStack(alignment: .leading) {
                Text("Select Events")
                    .font(.headline)
                    .padding(.top)
                
                ForEach(events, id: \.self) { event in
                    HStack {
                        Toggle(isOn: Binding(
                            get: { selectedEvents.contains(event) },
                            set: { isSelected in
                                if isSelected {
                                    selectedEvents.append(event)
                                } else {
                                    selectedEvents.removeAll { $0 == event }
                                }
                            }
                        )) {
                            Text(event)
                        }
                        .toggleStyle(.switch)
                        .padding(.vertical, 5)
                    }
                }
            }
            .padding()
            
            // Button to process the form data
            Button(action: {
                // Here, you can perform any logic with the collected data
                print("Name: \(name)")
                print("Age: \(age)")
                print("Belt Color: \(beltColor)")
                print("Gender: \(genderSelection)")
                print("Selected Events: \(selectedEvents.joined(separator: ", "))")
                
                var division = DivisionManager(belt: beltColor, gender: genderSelection, age: Int(age) ?? 0)
                
                print(division.findPoomsae())
                print(division.findSparring())
                print(division.findWeapon())
                print(division.findOpenPoomsae())
                print(division.findPowerBreaking())
                print(division.findThreeBreaking())
//                print(division.findPowerBreaking())
                // You can also navigate to another view, perform calculations, etc.
            }) {
                Text("Submit")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
