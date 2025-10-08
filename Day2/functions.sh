                else
                        echo "hello $n "

                fi
        done

}


function arrguments() {


        echo "first argument $1"
        echo "second argument $2"
        echo "third argumment $3"
        echo "forth argument $4 "

}


# dymanicaly assiging arguments  using "$@"
#!/bin/bash

function arrguments() {
    echo "Total number of arguments: $#"
    
    # Loop through all arguments
    for arg in "$@"
    do
        echo "Argument: $arg"
    done
}

# Call the function with any number of arguments
arrguments Nothing cmf micromax lava samsung apple




#calling arrguments function with 4 arguments
arrguments Nothing cmf micromax lava
#calling hello function
hello











                       