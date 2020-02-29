<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:f="http://hl7.org/fhir" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8"/>
	<xsl:template match="f:ImplementationGuide">
    <xsl:variable name="releaselabel" select="f:definition/f:parameter[f:code/@value='releaselabel']/f:value/@value"/>
    <xsl:if test="not($releaselabel)">
      <xsl:message terminate="yes">IG must include a definition parameter with a code of 'releaselabel'.  Value can be 'CI build' or some other status.</xsl:message>
    </xsl:if>
    <xsl:variable name="copyrightyear" select="f:definition/f:parameter[f:code/@value='copyrightyear']/f:value/@value"/>
    <xsl:if test="not($copyrightyear)">
      <xsl:message terminate="yes">IG must include a definition parameter with a code of 'copyrightyear'.  Value can be '2020+' or some similar value.</xsl:message>
    </xsl:if>
    <xsl:variable name="excludexml">
      <xsl:call-template name="getBoolean">
        <xsl:with-param name="boolean" select="f:definition/f:parameter[f:code/@value='excludexml']/f:value/@value"/>
        <xsl:with-param name="property" select="'excludexml'"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="excludejson">
      <xsl:call-template name="getBoolean">
        <xsl:with-param name="boolean" select="f:definition/f:parameter[f:code/@value='excludejson']/f:value/@value"/>
        <xsl:with-param name="property" select="'excludejson'"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="excludettl">
      <xsl:call-template name="getBoolean">
        <xsl:with-param name="boolean" select="f:definition/f:parameter[f:code/@value='excludettl']/f:value/@value"/>
        <xsl:with-param name="property" select="'excludettl'"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="excludemap">
      <xsl:call-template name="getBoolean">
        <xsl:with-param name="boolean" select="f:definition/f:parameter[f:code/@value='excludemap']/f:value/@value"/>
        <xsl:with-param name="property" select="'excludemap'"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:value-of select="concat('{&#xa;',
    '  &quot;releaselabel&quot;:&quot;', $releaselabel, '&quot;,&#xa;',
    '  &quot;copyrightyear&quot;:&quot;', $copyrightyear, '&quot;,&#xa;',
    '  &quot;excludexml&quot;:&quot;', $excludexml, '&quot;,&#xa;',
    '  &quot;excludejson&quot;:&quot;', $excludejson, '&quot;,&#xa;',
    '  &quot;excludettl&quot;:&quot;', $excludettl, '&quot;,&#xa;',
    '  &quot;excludemap&quot;:&quot;', $excludemap, '&quot;&#xa;}')"/>
  </xsl:template>
  <xsl:template name="getBoolean">
    <xsl:param name="boolean"/>
    <xsl:param name="property"/>
    <xsl:choose>
      <xsl:when test="starts-with(translate($boolean, 'y', 'Y'), 'Y') or starts-with(translate($boolean, 't', 'T'), 'T')">y</xsl:when>
      <xsl:when test="not($boolean) or starts-with(translate($boolean, 'n', 'N'), 'N') or starts-with(translate($boolean, 'f', 'F'), 'F')">N</xsl:when>
      <xsl:otherwise>
        <xsl:message terminate="yes">
          <xsl:value-of select="concat('Unrecognized value ' + $boolean, ' for parameter ' + $property + ' - should have been Y if present')"/>
        </xsl:message>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
