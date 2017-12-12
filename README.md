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
