for file in *.sh; do
    if [ "$file" != "run_all.sh" ] && [ -f "$file" ]; then
            chmod +x "$file"  # Ensure the script is executable
            echo "Running $file"
            ./"$file"         # Run the script
            echo "Finished $file"
            echo "---------------------"
        elif [ "$file" = "run_all.sh" ]; then
            echo "Skipping $file"
            echo "---------------------"
        fi
done


