def calc():
    rotate = int(input("How many times do you want to run the calculator: "))
    i=0
    while i < rotate:
        try:
            n1=int(input("Please enter first number: "))
            n2=int(input("Please enter second number: "))
            try:
                add= n1+n2
                sub= n1-n2
                mul= n1*n2
                div= n1/n2
                i=i+1
            except ZeroDivisionError:
                print ("Division not possible due to zero division error")
                add= n1+n2
                sub= n1-n2
                mul= n1*n2
                div = "Infinity"
                i=i+1
            except:
                print ("I don't know what you have done but it not right")
            else:
                print("Congrats you managed to use this code properly")

            answers = [add, sub, mul, div]
            with open('Results%s.txt' %i, 'w') as f:
                for answer in answers:
                    f.write(str(answer))
                    f.write('\n')
        except:
            print ("Uh oh, did you do an oopsie and enter a letter instead of a number")

calc()
