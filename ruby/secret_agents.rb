
#This method encrypts the submitted string by moving each letter one letter forward.
def addone(x)
  counter=0
  while counter < x.length
    if x[counter]=="z"
      x[counter]= "a"
      counter += 1
    elsif
      x[counter] = x[counter].next
      counter += 1
    end
  end
  puts x
end

#This method decrypts the submitted string by moving each letter one letter back.
def subone(x)
  counter=0
  alphabet="abcdefghijklmnopqrstuvwxyz"
  while counter < x.length
    letter=x[counter]
    indexnumber=alphabet.index(letter)
    indexnumber-=1
    alphabet[indexnumber]
    x[counter] = alphabet[indexnumber]
    counter+=1
  end
  puts x
end

#Why does this nested method work?
#It works because both methods are fully functioning. Methods can be called within methods. By running both methods, the second method reverses the function of the first method that was run.

#Our Driver Code

#Ask secret agent if they want an encryption or a decryption.
puts "Hello Secret Agent. Do you want to decrypt or encrypt your password?"
request=gets.chomp!
until request == "decrypt" || request =="encrypt"
  puts "Invalid response. Please try again."
  request=gets.chomp!
end

#Ask secret agent for password.
puts "Please enter password."
password=gets.chomp!

#Take request and call the right method.
if request == "decrypt"
   subone(password)
else request == "encrypt"
    addone(password)
end