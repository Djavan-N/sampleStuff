import random

p = ""
pick = ""

def compare(u_pick):
    
    a = random.randint(1,10)
    u_pick = int(input("Pick a number between 1-10: "))
    
    print("Number is %s" % a)
    print("Your pick is %s" % u_pick)

    if u_pick > 10 or u_pick < 0:
        return("pick between 1-10")
    elif u_pick == a:
        print("The number is %s, you guessed it!" % a)
    elif u_pick > a:
        print("The number is %s, too high" % a)
    elif u_pick < a:
        print("The number is %s, too low" % a)
    

def play_again(play):
    while 1==1:
        play = str(input("Play again y/n?: "))
        if play == "y":
            compare(pick)
        else:
            return("Goodbye")

print(compare(pick))
print(play_again(p))
