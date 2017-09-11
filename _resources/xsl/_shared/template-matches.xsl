<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
<!ENTITY nbsp   "&#160;">
<!ENTITY lsaquo   "&#8249;">
<!ENTITY rsaquo   "&#8250;">
<!ENTITY laquo  "&#171;">
<!ENTITY raquo  "&#187;">
<!ENTITY copy   "&#169;">
]>

<!-- 
Implementations Skeletor v3 - 5/10/2014

IDENTITY TEMPLATE MATCH
This template ensures that all content is copied, or applied to any existing template matches. Edit sparingly.

-->
<xsl:stylesheet version="3.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:xs="http://www.w3.org/2001/XMLSchema"
				xmlns:ou="http://omniupdate.com/XSL/Variables"
				xmlns:fn="http://omniupdate.com/XSL/Functions"
				xmlns:ouc="http://omniupdate.com/XSL/Variables"
				exclude-result-prefixes="xs ou fn ouc">

		<!--	Animated Progress bar -->
	<xsl:template match="table[contains(@class,'ou-progress-bar')]" mode="copy">
		<div class="progressbar">
			<xsl:apply-templates select="tbody/tr" /> 
		</div>
	</xsl:template>

	<xsl:template match="table[contains(@class,'ou-progress-bar')]/tbody/tr">
		<xsl:variable name="row-number" as="xs:integer"><xsl:number /></xsl:variable>
		<xsl:if test="$row-number gt 0">
			<div class="goal-container"><span class="goal1">Our Goal</span><span class="goal2"><xsl:apply-templates select="td[@class = '_goal']//text()" /></span></div>

			<div class="loader-container">
				<div class="meter leftmeter">
					<div class="status"><span class="donation"><xsl:apply-templates select="td[@class = '_current']//text()" /></span><span class="meterload"><xsl:apply-templates select="td[@class = '_percent']//text()" /><span class="sr-only">% completed</span></span></div>
				</div>
				<div class="lines">
					<ul>
						<li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>
					</ul>
				</div>
			</div>
		</xsl:if>
	</xsl:template> 
	

</xsl:stylesheet>
