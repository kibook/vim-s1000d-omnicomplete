<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="1.0">

  <!-- Resolve xs:import elements -->

  <!-- Maximum depth at which to resolve recursive imports -->
  <xsl:param name="maxdepth" select="2"/>
  
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="xs:import">
    <xsl:apply-templates select="document(@schemaLocation)" mode="import">
      <xsl:with-param name="depth" select="1"/>
      <xsl:with-param name="namespace" select="@namespace"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="xs:import" mode="import">
    <xsl:param name="depth"/>
    <xsl:param name="namespace"/>
    <xsl:choose>
      <xsl:when test="$depth &lt;= $maxdepth">
        <xsl:apply-templates select="document(@schemaLocation)" mode="import">
          <xsl:with-param name="depth" select="$depth + 1"/>
          <xsl:with-param name="namespace" select="@namespace"/>
        </xsl:apply-templates>
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="@*|node()" mode="import">
    <xsl:param name="depth"/>
    <xsl:param name="namespace"/>
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" mode="import">
        <xsl:with-param name="depth" select="$depth"/>
        <xsl:with-param name="namespace" select="$namespace"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="xs:schema" mode="import">
    <xsl:param name="depth"/>
    <xsl:param name="namespace"/>
    <xsl:apply-templates select="*" mode="import">
      <xsl:with-param name="depth" select="$depth"/>
      <xsl:with-param name="namespace" select="$namespace"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="@name|@ref" mode="import">
    <xsl:param name="namespace"/>
    <xsl:attribute name="{name()}">
      <xsl:if test="not(contains(., ':'))">
        <xsl:choose>
          <xsl:when test="$namespace = 'http://www.w3.org/1999/xlink'">xlink:</xsl:when>
          <xsl:when test="$namespace = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#'">rdf:</xsl:when>
          <xsl:when test="$namespace = 'http://www.purl.org/dc/elements/1.1/'">dc:</xsl:when>
        </xsl:choose>
      </xsl:if>
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

</xsl:stylesheet>
