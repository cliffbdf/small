compile:
	# Compile the Java files.
	javac -d mods/small \
		src/small/module-info.java \
		src/small/smallpackage/Main.java
	
jar:
	# Create executable jar file.
	# https://stackoverflow.com/questions/41861613/java-9-can-i-add-the-mainclass-attribute-to-module-info-class-in-the-archive
	# https://books.google.com/books?id=xjy4DgAAQBAJ&pg=PA37&lpg=PA37&dq=module+does+not+have+a+MainClass+attribute&source=bl&ots=SqgHs0RgQq&sig=x8uibKfUjM0yEsmZKxUm69FbfU4&hl=en&sa=X&ved=0ahUKEwikjOfGxILYAhXFIcAKHboeDI4Q6AEIPDAD#v=onepage&q=module%20does%20not%20have%20a%20MainClass%20attribute&f=false
	jar --create --file=Main.jar --main-class smallpackage.Main -C mods/small .

package:
	# Package the jar file, Java runtime, and required modules, 
	javapackager -deploy \
		-name smallish \
		-appclass smallpackage.Main \
		--strip-native-commands true \
		--module small \
		--module-path mods \
		-outdir outdir \
		-native dmg
