
  main () {
    string=$1
    len=${#string}-1
    new_word=""
    
    for (( i=${len}; i>-1; i-- )); do
        new_word+=${string:i:1}
    done

    echo $new_word
  }

  main "$@"
