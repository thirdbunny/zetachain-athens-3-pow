log_file="$HOME/node_height_log.txt"
template_file="./TEMPLATE.md"

# Read the log file
log_content=$(cat "$log_file")


# Replace the placeholder "_____" with the content of node_height_log.txt
sed -e "/Latest logs:/r $log_file" -e "/Latest logs:/,/$/d" "$template_file" > "README.md"

# Add changes to Git
git add README.md

# Commit the changes
git commit -m "Updated node height logs"

# Push the changes to GitHub
git push origin main


