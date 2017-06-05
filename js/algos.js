//Release 0
//Takes in word to add to array of words
//Iterates through the array to find the longest word by finding length of each word
//Returns the longest word
function wordReturn(array) {
  var longestWord= "";
  for (i=0;i<array.length;i++){
    if (array[i].length>longestWord.length){
      longestWord=array[i];
    }
  }
  return longestWord;
}

//Driver code
array1=["hello", "hi", "hey","hola"];
array2=["bye","see ya","farewell","adieu"];
array3=["good day","aloha","best wishes","ni hao","*wave*"];

console.log(wordReturn(array1));
console.log(wordReturn(array2));
console.log(wordReturn(array3));

//Release 1
//Pseudocode for Release 1
//Creates a function that takes in two hashes
//Iterates through both hashes/objects
//While iterating, checks to see if any of the key-pair values match
//If key-pair values match then return true
//If no key values match then return false
function checkValue(hash1,hash2){
  for(i=0;i<hash1.length;i++){
    if(hash1[i]==hash2[i]){
      true
    }
    else {
     false
    }
  }
}

//Creates an array with all the keys for both hashes
var hash1Keys=[];
  for (var key in hash1){
    hash1keys.push(key);
  }
var hash2Keys=[];
  for (var key in hash2){
    hash2keys.push(key);
  }

//Creates an array with all the values of the keys
var hash1Values=[];
for (i=0;i<Object.keys(hash1).length;i++){
  hash1Values.push()
}
hash1Values.push(hash1[])
var hash2Values=[];


//Driver Code
hash1={name: "Steven", age: 54};
hash2={name: "Tamir", age: 54};

console.log(checkValue(hash1,hash2));

