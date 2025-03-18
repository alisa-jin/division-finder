import SwiftUI

struct ContentView: View {

    @State private var name: String = ""
    @State private var age: String = ""
    @State private var beltColor: String = "White"
    @State private var genderSelection: String = "Male"

    @State private var selectedEvents: [String] = []
    @State private var isActive: Bool = false
    
    // EVENTS
    let events = ["Regular Poomsae", "Open Poomsae", "Weapons Forms", "Sparring", "Power Hand Breaking", "3 Directional Breaking"]
    
    // BELT COLORS
    let beltColors = ["White", "Yellow", "Orange", "Green", "Blue", "Purple", "Red", "Brown", "Black"]
    
    let genders = ["Male", "Female"]
    
    var body: some View {
        ZStack {
            VStack {
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
                    isActive = true
                    let division = DivisionManager(belt: beltColor, gender: genderSelection, age: Int(age) ?? 0, selectedEvents: selectedEvents)
                    
                    print(division.getAllDivisions())
                    
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
            
            if isActive {
                AthleteBadge(isActive: $isActive, name: "Alisa Jin", gender: "Female", beltColor: "Red", studioName: "Korean Martial Arts Academy", divisions: ["O-10 Open Poomsae", "K-10 Sparring"])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
