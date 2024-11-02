
  main () {
      number=$1
      numerate=${#number}
      total=0

      for (( i = 0; i < numerate; i++ )); do
          total=$(($total + ${number:i:1}**$numerate))
      done

      if [ "$number" -eq "$total" ]; then 
          echo "true"
      else 
          echo "false"
      fi
  }
  main "$@"


