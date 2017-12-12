# small

Demo of Java module system. Appears to fail to generate a working deployable
package for OS-X or Linux.

For Linux, in the makefile, please change the line,
```
-native dmg
```
to
```
-native rpm
```
Execute each task in the makefile:
```
make compile
make jar
make package
```

Then install the DMG (or RPM). Note that the RPM might have dependencies, so
I suggest installing it as a local install:
```
sudo yum -y --nogpgcheck localinstall smallish-1.0-1.x86_64.rpm
```

Once the application has been installed, attempt to run the executable. For Mac:
```
/Applications/smallish/smallish
```
For Linux,
```
/opt/smallish/smallish
```
Currently, an error is produced:
```
module small does not have a MainClass attribute, use -m <module>/<main-class>
```
