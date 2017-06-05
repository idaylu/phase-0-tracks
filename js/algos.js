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
function checkSimilar(hash1,hash2){
  var same=false;
  for (key in hash1){
    if (hash1[key]==hash2[key]){
      same=true
    }
  }
    console.log(same)
  }

//Driver Code
  var lunch1={fruit:"apple",sandwich:"ham",drink:"caprisun"}
  var lunch2={fruit:"orange",sandwich:"ham",drink:"water"}
  var lunch3={fruit:"banana",sandwich:"turkey",drink:"water"}

  checkSimilar(lunch1,lunch2);
  checkSimilar(lunch1,lunch3);
  checkSimilar(lunch2,lunch3);

  //Release 2
//Creates a function that takes a number for length
//Creates words and returns number of words equal to that length
//Generation of random "words"--does not have to be sensical
//Must have Minimum of 1 letter and max of 10 letters
//Stores words in array
//Driver code for 10 generations of arrays of words
function randomArray(number){
  var letter = 'abcdefghijklmnopqrstuvwxyz';
  var wordArray=[];
  for (var i=0;i<number;i++){
    var word="";
    for (var j=0;j< Math.floor((Math.random()*10) + 1);j++){
      word += letter[Math.floor(Math.random()*26)]
      }
      wordArray.push(word);
    }
    console.log(wordArray);
    return wordArray;
  }

  //Driver code
randomArray(10);




