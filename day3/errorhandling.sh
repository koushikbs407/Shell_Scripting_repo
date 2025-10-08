
# In shell scrippting error handling is done using if and else 
there is no try and catch block in shell scripting

#!/bin/bash
#
#this is a error handling learning
#


function creating_durectory(){

        mkdir demo

}


  if ! creating_durectory ; then
          echo " file was not able to create this is handled by error handling "
          exit 1
  fi


  echo "hello world "
    