//Release 4: Pseudocode
//a function that takes a string as a parameter and reverses the string
//The function takes in a word(string) as input.
//Function loops through the string for the length of the word and returns the number of characters
//Subtract the index starting from the beginning from the length to get the index of the last letter
//Used a subtract one to make up for the index of zero
//Print reversed word

function reverse(word){
  reverseWord="";
  for(var i=word.length-1; i>=0; i-=1){
    reverseWord+=word[i]
  }
  return reverseWord;
}

//Driver Code
var newFarewell=reverse('goodbye');
if (1==1){
  console.log(newFarewell);
};

