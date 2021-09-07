def calc():
    rotate = int(input("How many times do you want to run the calculator: "))
    i=0
    while i < rotate:
        n1=int(input("Please enter first number: "))
        n2=int(input("Please enter second number: "))
        add= n1+n2
        sub= n1-n2
        mul= n1*n2
        if (n2 == 0):
            print ("Division not possible due to zero division error")
            div = "Infinity"
        else:
            div= n1/n2

        answers = [add, sub, mul, div]
        with open('Results%s.txt' %i+1, 'w') as f:
            for answer in answers:
                f.write(str(answer))
                f.write('\n')
        i=i+1
calc()
