find . -iname '*.pdf' | while read -r f
  do
    if pdftotext "$f" &> /dev/null; then 
        echo "$f" was ok;   
    else
        mv "$f" "$f.broken";
        echo "$f" is broken;   
    fi; 
done
