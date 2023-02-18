re checking if the directory name
# is provided in the argument or not.
# -z will check for the null string 
# and $1 will check if the positional argument
# is passed or not
if [ -z "$1" ]; then
	  
	  # If the name of the folder was not specified 
	    # in the argument 
	      # Then the following message will be displayed 
	        # to the screen 
		  echo "Warning : Please provide the folder name as an argument"
		    exit 0
fi

# We need to verify whether the directory name 
# entered by user really exists or not 
# -d flag will be true if the directory name 
# exists
if [ -d "$1" ]; then

	    # if directory control will enter
	        # creating a variable  filename to hold the 
		    # new file name i.e. new_archieve current date 
		        # it will end with the extension ".tar.bz2".
			    filename="new_archive $(date '+%d-%m-%y').tar"
			        
			        # Using tar --create option to create the
				    # archive and --file to set the new filename
				        tar --create --file="$filename" "$1"
					    echo "Archive successfully created."
					        
					        # if the folder name does not exists 
						    # we will simply display the following message 
						        # to the screen
							    else
								            echo "WARNING: Directory name doesn't exists: $1"
									      
fi
