Simple XSLT tranformation implemented in core java

java -jar jar.jar input.xml rules.xslt output.xml

Source code was taken from [here](http://javahash.com/transform-xml-with-xstl-using-java/) and adopted to have intendation for output file.


Recommended reading - [How XSLT works](http://lenzconsulting.com/how-xslt-works/)

"Pure-man" xslt
```
awk -n '/## start-multiline-block/,/## end-multiline-block/' file.conf | grep -v '##' > part.txt
perl -i -plnE 'BEGIN { open my $fh, "<part.txt"; $fc= do { local $/; <$fh> } } say $fc if /\/after>/ ' output-will-be-edited-in-place.xml
```
