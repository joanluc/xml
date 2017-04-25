<?xml version="1.0" encoding="UTF-8" ?>
<?xsl-stylesheet version="1.0" 
    xmlns:xsd="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <HTML>
        <BODY>
            <H2>Ligne SNCF</H2>
	    <TABLE BORDER="1">
	        <TR BGCOLOR="#9acd32">
		    <TH>Train</TH>
		    <TH>Num ligne</TH>
		    <TH>Num train</TH>
		</TR>
		<XSL:for-each select="train">
		<TR>
		    <TD><XSL:value-of select="Type de transport"/></TD>
		    <TD><XSL:choose>
		        <XSL:when test="TGV">
			    <TD BGCOLOR="#ff00ff">
			    <XSL:value-of select="artist"/></td>
			</XSL:when>
			<!--    
		           <xsd:restriction base="xs:string">
		     	       <xsd:enumeration value="TGV"/>
			       <xsd:enumeration value="TER"/>
			       <xsd:enumeration value="intercité"/>
			       <xsd:enumeration value="bus"/>
		           </xsd:restriction>
		      </xsd:simpleType>
		  <xsd:element name="gare_depart" type="xsd:string"/>
		  <xsd:element name="date_depart" type="xsd:time_date"/>
		  <xsd:element name="heure_depart" type="xsd:time_hour"/>
		  <xsd:element name="gare_arrivee" type="xsd:string"/>
		  <xsd:element name="date_arrivee" type="xsd:time_date"/>
		  <xsd:element name="heure_arrivee" type="xsd:time_hour"/>
		  <xsd:element name="nombre_voitures" type="xsd:integer"/>
		  <xsd:element name="type_billet"/>
		      <xsd:simpleType>
		          <xsd:restriction base="xs:string">
			      <xsd:enumeration value="idtgv"/>
			      <xsd:enumeration value="Oui-go"/>
			      <xsd:enumeration value="SNCF2"/>
			      <xsd:enumeration value="SNCF1"/>
		          </xsd:restriction>
		     </xsd:simpleType>
	      </xsd:sequence>
	  </xsd:complexType>
	</xsd:element >
        <xsd:element name="gare">
	  <!-- gare type="xsd:string"  Gare ; Ville ; GPS ; jour départ ; heure départ; --> 
	  <xsd:complexType>
	      <xsd:sequence>
		  <xsd:element name="Gare" type="xsd:string"/>
		  <xsd:element name="Ville" type="xsd:string"/>
		  <xsd:element name="GPS" lat="xsd:latitude" lon="xsd:longitude"/>
		  <xsd:element name="jour_depart" type="xsd:time_date"/>
		  <xsd:element name="heure_depart" type="xsd:time_hour"/>
	      </xsd:sequence> 
	  </xsd:complexType>
       </xsd:element >
    </racine>
</xsd:schema>

            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>
