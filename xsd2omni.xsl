<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsd="http://www.w3.org/2001/XMLSchema"
  version="1.0">

  <xsl:param name="namespace">s1000d</xsl:param>

  <xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:text>let g:xmldata_</xsl:text>
    <xsl:value-of select="$namespace"/>
    <xsl:text> = {</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>\ </xsl:text>
    <xsl:for-each select="//xsd:element[@name and not(contains(@name, ':'))]">
      <xsl:apply-templates select="."/>
      <xsl:if test="position() != last()">
        <xsl:text>,</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>\ </xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>\ }</xsl:text>
  </xsl:template>

  <xsl:template match="xsd:element">
    <xsl:variable name="type" select="@type"/>
    <xsl:variable name="complexType" select="//xsd:complexType[@name = $type]"/>
    <xsl:text>'</xsl:text>
    <xsl:value-of select="@name"/>
    <xsl:text>': </xsl:text>
    <xsl:choose>
      <xsl:when test="$complexType">
        <xsl:apply-templates select="$complexType"/>
      </xsl:when>
      <xsl:when test="xsd:complexType">
        <xsl:apply-templates select="xsd:complexType"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>[[], {}]</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="xsd:complexType">
    <xsl:text>[[</xsl:text>
    <xsl:for-each select=".//xsd:element|.//xsd:group">
      <xsl:choose>
        <xsl:when test="self::xsd:group">
          <xsl:apply-templates select="."/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>'</xsl:text>
          <xsl:value-of select="@ref|@name"/>
          <xsl:text>'</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:text>], {</xsl:text>
    <xsl:for-each select="xsd:attribute|xsd:attributeGroup|xsd:simpleContent//xsd:attribute">
      <xsl:choose>
        <xsl:when test="self::xsd:attributeGroup">
          <xsl:apply-templates select="."/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>'</xsl:text>
          <xsl:value-of select="@ref|@name"/>
          <xsl:text>': </xsl:text>
          <xsl:apply-templates select="."/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:text>}]</xsl:text>
  </xsl:template>

  <xsl:template match="xsd:attribute">
    <xsl:choose>
      <xsl:when test="@ref">
        <xsl:variable name="ref" select="@ref"/>
        <xsl:apply-templates select="/xsd:schema/xsd:attribute[@name = $ref]"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="type" select="@type"/>
        <xsl:variable name="simpleType" select="//xsd:simpleType[@name = $type]"/>
        <xsl:text>[</xsl:text>
        <xsl:if test="$simpleType">
          <xsl:apply-templates select="$simpleType"/>
        </xsl:if>
        <xsl:text>]</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="xsd:simpleType">
    <xsl:for-each select=".//xsd:enumeration|.//xsd:pattern">
      <xsl:apply-templates select="@value"/>
      <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="xsd:enumeration/@value">
    <xsl:text>'</xsl:text>
    <xsl:value-of select="."/>
    <xsl:text>'</xsl:text>
  </xsl:template>

  <xsl:template match="xsd:pattern/@value">
    <xsl:choose>
      <xsl:when test=". = '[01]'">'0','1'</xsl:when>
      <xsl:otherwise>
        <xsl:text>'</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>'</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="xsd:group">
    <xsl:choose>
      <xsl:when test="@ref">
        <xsl:variable name="ref" select="@ref"/>
        <xsl:apply-templates select="//xsd:group[@name = $ref]"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select=".//xsd:element|.//xsd:group">
          <xsl:choose>
            <xsl:when test="self::xsd:group">
              <xsl:apply-templates select="."/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:text>'</xsl:text>
              <xsl:value-of select="@ref|@name"/>
              <xsl:text>'</xsl:text>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:if test="position() != last()">
            <xsl:text>, </xsl:text>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="xsd:attributeGroup">
    <xsl:choose>
      <xsl:when test="@ref">
        <xsl:variable name="ref" select="@ref"/>
        <xsl:apply-templates select="//xsd:attributeGroup[@name = $ref]"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select=".//xsd:attribute|.//xsd:attributeGroup">
          <xsl:choose>
            <xsl:when test="self::xsd:attributeGroup">
              <xsl:apply-templates select="."/>
            </xsl:when>
            <xsl:when test="@ref">
              <xsl:variable name="ref" select="@ref"/>
              <xsl:text>'</xsl:text>
              <xsl:value-of select="@ref"/>
              <xsl:text>': </xsl:text>
              <xsl:apply-templates select="/xsd:schema/xsd:attribute[@name = $ref]"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:variable name="type" select="@type"/>
              <xsl:variable name="simpleType" select="//xsd:simpleType[@name = $type]"/>
              <xsl:text>'</xsl:text>
              <xsl:value-of select="@name"/>
              <xsl:text>': </xsl:text>
              <xsl:text>[</xsl:text>
              <xsl:if test="$simpleType">
                <xsl:apply-templates select="$simpleType"/>
              </xsl:if>
              <xsl:text>]</xsl:text>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:if test="position() != last()">
            <xsl:text>, </xsl:text>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
