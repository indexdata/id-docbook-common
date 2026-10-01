<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	        version="1.0">

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/htmlhelp/htmlhelp.xsl" />

<!-- Closing-tag indentation must not create an extra line in a screen. -->
<xsl:template match="screen/text()[not(following-sibling::node())]">
  <xsl:call-template name="trim.screen.end">
    <xsl:with-param name="text" select="."/>
  </xsl:call-template>
</xsl:template>

<xsl:template name="trim.screen.end">
  <xsl:param name="text"/>
  <xsl:variable name="length" select="string-length($text)"/>
  <xsl:choose>
    <xsl:when test="$length &gt; 0 and
                    normalize-space(substring($text, $length)) = ''">
      <xsl:call-template name="trim.screen.end">
        <xsl:with-param name="text" select="substring($text, 1, $length - 1)"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$text"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="user.head.content">
   <meta name="viewport" content="width=device-width, initial-scale=1"/>
</xsl:template>
<xsl:template name="body.attributes">
   <link rel="stylesheet" type="text/css" href="common/style1.css"/>
</xsl:template>
<xsl:variable name="suppress.navigation">0</xsl:variable>
<xsl:variable name="use.id.as.filename">1</xsl:variable>
<xsl:variable name="generate.book.toc">1</xsl:variable>
<xsl:variable name="toc.section.depth">3</xsl:variable>
<xsl:variable name="generate.toc.section.depth">3</xsl:variable>
<xsl:variable name="section.autolabel">1</xsl:variable>

</xsl:stylesheet>

