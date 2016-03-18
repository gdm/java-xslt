<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns="http://maven.apache.org/POM/4.0.0" xmlns:m="http://maven.apache.org/POM/4.0.0" exclude-result-prefixes="m">
<xsl:output method="xml" indent="yes"/>


<xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*" />
    </xsl:copy>
</xsl:template>

<xsl:template match="m:project/m:name/text()">
  <xsl:text>Custom text</xsl:text>
</xsl:template>


<xsl:template match="/m:project/m:dependencies/m:dependency[m:artifactId = 'generic_set']">
      <xsl:copy>
        <xsl:copy-of select="*[self::m:groupId]"/>
        <artifactId>my_artifact</artifactId>
        <version>2016.02.25-1</version>
      </xsl:copy>
</xsl:template>

</xsl:stylesheet>
