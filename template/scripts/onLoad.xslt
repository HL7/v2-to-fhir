<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://hl7.org/fhir" exclude-result-prefixes="html f">
  <xsl:param name="spreadsheetList"/>
  <xsl:variable name="addResources">
    <xsl:if test="not(/f:ImplementationGuide/f:definition/f:resource or f:ImplementationGuide/f:extension[@url=$spreadsheetExt]) or f:ImplementationGuide/f:definition/f:parameter[f:code/@value]/f:value/@value='true'">true</xsl:if>
  </xsl:variable>
  <xsl:variable name="spreadsheetExt" select="'http://hl7.org/fhir/StructureDefinition/igpublisher-spreadsheet'"/>
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="f:ImplementationGuide">
    <xsl:if test="not(f:version/@value)">
      <xsl:message terminate="yes">ImplementationGuide.version must be specified</xsl:message>
    </xsl:if>
    <xsl:copy>
      <xsl:apply-templates select="@*|f:id|f:meta|f:implicitRules|f:language|f:text|f:contained|f:extension"/>
      <xsl:if test="$addResources='true'">
        <xsl:call-template name="addSpreadsheets">
          <xsl:with-param name="spreadsheets" select="$spreadsheetList"/>
        </xsl:call-template>
      </xsl:if>
      <xsl:apply-templates select="f:modifierExtension"/>
      <xsl:apply-templates select="f:url|f:version|f:name|f:title|f:status|f:experimental|f:date|f:publisher|f:contact|f:description|f:useContext|f:jurisdiction|f:copyright|f:packageId|f:license"/>
      <xsl:if test="not(f:license)">
        <license xmlns="http://hl7.org/fhir" value="CC0-1.0"/>
      </xsl:if>
      <xsl:apply-templates select="f:fhirVersion|f:dependsOn|f:global|f:definition|f:manifest"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template name="addSpreadsheets">
    <xsl:param name="spreadsheets"/>
    <xsl:if test="$spreadsheets!=''">
      <xsl:variable name="spreadsheet">
        <xsl:choose>
          <xsl:when test="contains($spreadsheets, ';')">
            <xsl:value-of select="substring-before($spreadsheets, ';')"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$spreadsheets"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <xsl:variable name="trimmedSpreadsheet">
        <xsl:call-template name="trimSpreadsheet">
          <xsl:with-param name="spreadsheet" select="$spreadsheet"/>
        </xsl:call-template>
      </xsl:variable>
      <extension xmlns="http://hl7.org/fhir" url="{$spreadsheetExt}">
        <valueString value="{$trimmedSpreadsheet}"/>
      </extension>
      <xsl:if test="concat($spreadsheets, ';')">
        <xsl:call-template name="addSpreadsheets">
          <xsl:with-param name="spreadsheets" select="substring-after($spreadsheets, ';')"/>
        </xsl:call-template>
      </xsl:if>
    </xsl:if>
  </xsl:template>
  <xsl:template name="trimSpreadsheet">
    <xsl:param name="spreadsheet"/>
    <xsl:choose>
      <xsl:when test="contains($spreadsheet, '/')">
        <xsl:call-template name="trimSpreadsheet">
          <xsl:with-param name="spreadsheet" select="substring-after($spreadsheet, '/')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="contains($spreadsheet, '\')">
        <xsl:call-template name="trimSpreadsheet">
          <xsl:with-param name="spreadsheet" select="substring-after($spreadsheet, '\')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$spreadsheet"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="f:definition">
    <xsl:copy>
      <xsl:apply-templates select="@*|f:id|f:extension|f:modifierExtension|f:grouping|f:resource|f:page|f:parameter"/>
      <xsl:call-template name="addParameters"/>
      <xsl:apply-templates select="f:template"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="f:parameter[f:code/@value='find-other-resources']"/>
  <xsl:template name="addParameters">
    <xsl:if test="$addResources='true'">
      <xsl:call-template name="setParameter">
        <xsl:with-param name="code" select="'autoload-resources'"/>
        <xsl:with-param name="value" select="'true'"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-resource'"/>
      <xsl:with-param name="value" select="'input/capabilities'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-resource'"/>
      <xsl:with-param name="value" select="'input/examples'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-resource'"/>
      <xsl:with-param name="value" select="'input/extensions'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-resource'"/>
      <xsl:with-param name="value" select="'input/models'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-resource'"/>
      <xsl:with-param name="value" select="'input/operations'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-resource'"/>
      <xsl:with-param name="value" select="'input/profiles'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-resource'"/>
      <xsl:with-param name="value" select="'input/resources'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-resource'"/>
      <xsl:with-param name="value" select="'input/vocabulary'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-pages'"/>
      <xsl:with-param name="value" select="'template/config'"/>
    </xsl:call-template>
<!--    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-pages'"/>
      <xsl:with-param name="value" select="'input/pagecontent'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-pages'"/>
      <xsl:with-param name="value" select="'input/pages'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-pages'"/>
      <xsl:with-param name="value" select="'input/resourcedocs'"/>
    </xsl:call-template>-->
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-pages'"/>
      <xsl:with-param name="value" select="'input/images'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-qa'"/>
      <xsl:with-param name="value" select="'temp/qa'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-temp'"/>
      <xsl:with-param name="value" select="'temp/pages'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-output'"/>
      <xsl:with-param name="value" select="'output'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-tx-cache'"/>
      <xsl:with-param name="value" select="'input-cache/txcache'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'path-suppressed-warnings'"/>
      <xsl:with-param name="value" select="'input/ignoreWarnings.txt'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'template-html'"/>
      <xsl:with-param name="value" select="'template-page.html'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'template-md'"/>
      <xsl:with-param name="value" select="'template-page-md.html'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'apply-contact'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'apply-context'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'apply-copyright'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'apply-jurisdiction'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'apply-license'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'apply-publisher'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'apply-version'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'active-tables'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="setParameter">
    <xsl:param name="code"/>
    <xsl:param name="value"/>
    <xsl:if test="not(f:parameter[f:code/@value=$code and f:value[@value=$value or $value='true' or $value='false']])">
      <parameter xmlns="http://hl7.org/fhir">
        <code value="{$code}"/>
        <value value="{$value}"/>
      </parameter>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>