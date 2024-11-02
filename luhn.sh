  main () {
          string=$1
          total=0
            
    
          if [[ ${#string} -le 1 ]]; then
              echo "false"
              return
          fi
          
          string=$(echo "$string" | tr -d ' ')
          if [[ ! $string =~ ^[0-9]+$ ]]; then 
              echo "false"
              return
          fi
    
    
          for (( i=${#string}-2; i > -1; i-=2 )); do
              digit=${string:i:1}
              ((double=digit*2))
              next=${string:i-1:1}
              if (( double > 9 )); then
                  ((double-=9))
              fi
              # string="${string:0:i}$double${string:i}"
              (( total+=double ))
              (( total+=next ))
          done
    
          echo $total 

          if (( total % 10 == 0 )); then
              echo "true"
              
          else
              echo "false"
              
          fi 
          
          return
      }
    
      main "$@"
