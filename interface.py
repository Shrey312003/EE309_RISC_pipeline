# Open the file in read mode

def convert_to_binary(val):
    ret_val = int(val) #string converted to integer
    return '{0:03b}'.format(ret_val)

def convert_to_binary_6bit(val):
    ret_val = int(val) #string converted to integer
    return '{0:06b}'.format(ret_val)

def convert_to_binary_9bit(val):
    ret_val = int(val) #string converted to integer
    return '{0:09b}'.format(ret_val)

with open("read.txt", "r") as file:
    # Read each line in the file
    for line in file:
        # Split the line into words
        words = line.split()
        # Process each word
        f = open("write.txt", "a")
 
        if words[0]== "ADA" or  words[0]== "ADC" or words[0]== "ADZ" or words[0]== "AWC" or words[0]== "ACA" or words[0]== "ACC" or words[0]== "ACZ" or words[0]== "ACW" :
            str = "0001"
            str += convert_to_binary(words[1])
            str += convert_to_binary(words[2])
            str += convert_to_binary(words[3])
            str += words[4] + words[5];

            f.write(str+'\n')
        
        elif words[0] =="ADI":
            str = "0000"
            str += convert_to_binary(words[1])
            str += convert_to_binary(words[2])
            str += convert_to_binary_6bit(words[3])

            f.write(str+'\n')
        
        elif words[0] =="NDU" or words[0] =="NDC" or words[0] =="NDZ" or words[0] =="NCU" or words[0] =="NCC" or words[0] =="NCZ" :
            str = "0010"
            str += convert_to_binary(words[1])
            str += convert_to_binary(words[2])
            str += convert_to_binary(words[3])
            str += words[4] + words[5];

            f.write(str+'\n')
        
        elif words[0] =="LLI" :
            str = "0011"
            str += convert_to_binary(words[1])
            str += convert_to_binary_9bit(words[2])

            f.write(str+'\n')
        
        elif words[0] =="LW" :
            str = "0100"
            str += convert_to_binary(words[1])
            str += convert_to_binary(words[2])
            str += convert_to_binary_6bit(words[2])

            f.write(str+'\n')
        
        elif words[0] =="SW" :
            str = "0101"
            str += convert_to_binary(words[1])
            str += convert_to_binary(words[2])
            str += convert_to_binary_6bit(words[2])

            f.write(str+'\n')
        
        elif words[0] =="LM" :
            str = "0110"
            str += convert_to_binary(words[1])
            str += convert_to_binary_9bit(words[2])

            f.write(str+'\n')
        
        elif words[0] =="SM" :
            str = "0111"
            str += convert_to_binary(words[1])
            str += convert_to_binary_9bit(words[2])

            f.write(str+'\n')

        elif words[0] =="BEQ" :
            str = "1000"
            str += convert_to_binary(words[1])
            str += convert_to_binary(words[2])
            str += convert_to_binary_6bit(words[2])

            f.write(str+'\n')
        
        elif words[0] =="BLT" or words[0] =="BLE" :
            str = "0101"
            str += convert_to_binary(words[1])
            str += convert_to_binary(words[2])
            str += convert_to_binary_6bit(words[2])

            f.write(str+'\n')

        elif words[0] =="JAL" :
            str = "1100"
            str += convert_to_binary(words[1])
            str += convert_to_binary_9bit(words[2])

            f.write(str+'\n')
        
        elif words[0] =="JRI" :
            str = "1111"
            str += convert_to_binary(words[1])
            str += convert_to_binary_9bit(words[2])

            f.write(str+'\n')

        
        elif words[0] =="JLR" :
            str = "1101"
            str += convert_to_binary(words[1])
            str += convert_to_binary(words[2])
            str += convert_to_binary_6bit(words[2])

            f.write(str+'\n')

file.close()
         
