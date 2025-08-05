def commands(binary_str):
    actions = ['wink', 'double blink', 'close your eyes', 'jump']
    
    handshake = [action for index, action in enumerate(actions) if int(binary_str, 2) & 2 ** index]
    
    return handshake[::-1] if int(binary_str, 2) & 2 ** 4 else handshake
        
