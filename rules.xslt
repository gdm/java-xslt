<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>

<xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*" />
    </xsl:copy>
</xsl:template>


<!-- change attribute value -->
<xsl:template match="country/@attr">
	<xsl:attribute name="attr">
	    <xsl:text>fooValue</xsl:text>
	</xsl:attribute>
</xsl:template>

<!-- add new elements -->
<xsl:template match="country[text() = 'India']">
  <xsl:copy-of select="."/>
  <test>
        <t name="a"/>
        <t name="b"/>
  </test>
</xsl:template>

</xsl:stylesheet>
