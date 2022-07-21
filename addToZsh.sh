#this will add the required function to zshrc file

if [ $SHELL== "/bin/zsh"]
then
    echo "ZSH detected ✅";
    echo "Adding command_not_found_handler function to zshrc file 📝";
    cat function.txt>>~/.zshrc;
    echo "Done ✅";
else
    echo "Shell is not ZSH 🚫. Please change shell to ZSH";
fi