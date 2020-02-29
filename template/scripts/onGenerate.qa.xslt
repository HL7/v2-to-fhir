<?xml version="1.0" encoding="UTF-8"?>
<!--
  - This process runs a QA check on the final IG, ensuring that elements required for publication are properly populated
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:f="http://hl7.org/fhir" xmlns="http://hl7.org/fhir" exclude-result-prefixes="f">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:template match="/f:ImplementationGuide">
    <xsl:apply-templates select="f:definition/f:resource"/>
  </xsl:template>
  <xsl:template match="@*|node()"/>
  <xsl:template match="f:definition/f:resource">
    <xsl:if test="not(f:name)">
      <xsl:call-template name="raiseIssue">
        <xsl:with-param name="severity">error</xsl:with-param>
        <xsl:with-param name="code">required</xsl:with-param>
        <xsl:with-param name="details" select="concat('Unable to find name for the resource ', f:reference/f:reference/@value, '.  Names are mandatory to allow proper population of the artifact list.')"/>
        <xsl:with-param name="location" select="concat('ImplementationGuide.definition.resource[', count(preceding::f:resource), ']')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="not(f:description)">
      <xsl:call-template name="raiseIssue">
        <xsl:with-param name="severity">warning</xsl:with-param>
        <xsl:with-param name="code">invariant</xsl:with-param>
        <xsl:with-param name="details" select="concat('Unable to find description for the resource ', f:reference/f:reference/@value, '.  Descriptions are strongly encouraged to allow proper population of the artifact list.')"/>
        <xsl:with-param name="location" select="concat('ImplementationGuide.definition.resource[', count(preceding::f:resource), ']')"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>  