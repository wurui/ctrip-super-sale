<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-super-sale">
    	<xsl:param name="more_link"/>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-super-sale" ox-mod="ctrip-super-sale">
            <h3>
                <a href="{$more_link}" class="bt-more">更多 &gt;</a>
                超级特惠 <small>SUPER</small>
            </h3>
            <div class="products">
            	<xsl:for-each select="data/product-list/i">
            	<a href="{href}" class="product">
            		<span class="category">
            			<xsl:value-of select="category"/>
            		</span>
            		<img src="https://a.oxm1.cc/img/blank.png"
            			class="product-pic"
            			style="background-image:url({img})"
            			/>
            			<br/>
            		<nobr class="product-title">
            			<xsl:value-of select="title"/>
            		</nobr>
            		<br/>
            		<span class="product-tag">
            			<xsl:value-of select="tags/i[1]"/>
            		</span>
            		<br/>
            		<span class="product-price">
            			<xsl:value-of select="price"/>
            		</span>
            	</a>
            	</xsl:for-each>
            </div>
            <div class="icons">
            	<xsl:for-each select="data/grid-menu/i">
            		<a href="{href}" class="item" style="background-image:url({icon})">
            			<b><xsl:value-of select="title"/></b>
            			<br/>
            			<em><xsl:value-of select="subtitle"/></em>
            		</a>
            	</xsl:for-each>
            	
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
