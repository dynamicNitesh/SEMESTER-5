def load_rules(file_path):
    rules = {}
    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()
            if ':' in line:
                trigger, response = line.split(':', 1)
                rules[trigger.strip()] = response.strip()
    return rules

def respond_to_input(rules, user_input):
    for trigger in rules:
        if trigger in user_input.lower():
            return rules[trigger]
    return "I'm sorry, I don't understand that."

def main():
    # Load rules from the file
    rules_file = 'rules.txt'
    rules = load_rules(rules_file)
    
    print("Chatbot is running. Type 'exit' to quit.")
    
    while True:
        # Get user input
        user_input = input("Nitesh: ")
        
        # Exit the loop if the user types 'exit'
        if user_input.lower() == 'out':
            print("Parth: Goodbye!")
            break
        
        # Get the response based on the rules
        response = respond_to_input(rules, user_input)
        print(f"Parth: {response}")

if __name__ == "__main__":
    main()
