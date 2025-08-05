def commands(binary_str):
    actions = ['wink', 'double blink', 'close your eyes', 'jump']
    
    handshake = [action for action, digit in zip(actions, [*binary_str][:0:-1]) if digit == '1']
    
    return handshake[::-1] if binary_str[0] == '1' else handshake
        
