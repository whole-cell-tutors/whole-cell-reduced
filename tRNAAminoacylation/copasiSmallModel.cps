<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.16 (Build 104) (http://www.copasi.org) at 2015-10-11 16:51:19 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="16" versionDevel="104" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_43" name="Function for Aminoacylation (MG479)" type="UserDefined" reversible="false">
      <Expression>
        k_tRnaAa_MG479*MG479__c*ATP__c*THR__c*MG_375_DIMER__c*((1+MG479__c*KM1^(-1))*(1+ATP__c*KM2^(-1))*(1+THR__c*KM3^(-1)))^(-1)/c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="ATP__c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="KM1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="KM2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="KM3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="MG479__c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="MG_375_DIMER__c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_329" name="THR__c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_330" name="c" order="7" role="volume"/>
        <ParameterDescription key="FunctionParameter_331" name="k_tRnaAa_MG479" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_4" name="tRNAAminoacylation module" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-11T18:43:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="c" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-11T18:46:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_3" name="L-alanine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_5" name="AMP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_7" name="L-Arginine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_9" name="L-Asparagine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="L-Aspartate" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_13" name="ATP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="L-Cysteine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_17" name="N-Formyl-L-methionine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_19" name="10-formyl-tetrahydrofolate" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_21" name="L-Glutamate" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_23" name="glycine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_25" name="hydrogen ion" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_27" name="water" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_29" name="L-Histidine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_31" name="L-Isoleucine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_33" name="L-Leucine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_35" name="L-Lysine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_37" name="L-Methionine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_39" name="L-phenylalanine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_41" name="phosphate" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_43" name="diphosphate" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_45" name="L-Proline" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_47" name="L-Serine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_49" name="5,6,7,8-Tetrahydrofolate" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_51" name="L-Threonine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_53" name="L-tryptophan" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_55" name="L-tyrosine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_57" name="L-Valine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_59" name="L-glutamine" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_61" name="MG471" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_63" name="MG471-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_65" name="MG472" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_67" name="MG472-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_69" name="MG475" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_71" name="MG475-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_73" name="MG479" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_75" name="MG479-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_77" name="MG483" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_79" name="MG483-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_81" name="MG484" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_83" name="MG484-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_85" name="MG485" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_87" name="MG485-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_89" name="MG486" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_91" name="MG486-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_93" name="MG487" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_95" name="MG487-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_97" name="MG488" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_99" name="MG488-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_101" name="MG489" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_103" name="MG489-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_105" name="MG490" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_107" name="MG490-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_109" name="MG492" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_111" name="MG492-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_113" name="MG493" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_115" name="MG493-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_117" name="MG495" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_119" name="MG495-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_121" name="MG496" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_123" name="MG496-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_125" name="MG497" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_127" name="MG497-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_129" name="MG499" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_131" name="MG499-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_133" name="MG500" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_135" name="MG500-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_137" name="MG501" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_139" name="MG501-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_141" name="MG502" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_143" name="MG502-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_145" name="MG503" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_147" name="MG503-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_149" name="MG504" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_151" name="MG504-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_153" name="MG506" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_155" name="MG506-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_157" name="MG507" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_159" name="MG507-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_161" name="MG508" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_163" name="MG508-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_165" name="MG509" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_167" name="MG509-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_169" name="MG510" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_171" name="MG510-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_173" name="MG511" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_175" name="MG511-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_177" name="MG512" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_179" name="MG512-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_181" name="MG513" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_183" name="MG513-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_185" name="MG514" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_187" name="MG514-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_189" name="MG518" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_191" name="MG518-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_193" name="MG519" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_195" name="MG519-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_197" name="MG520" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_199" name="MG520-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_201" name="MG523" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_203" name="MG523-AA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_205" name="cysteinyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_207" name="leucyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_209" name="valyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_211" name="isoleucyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_213" name="methionyl-tRNA formyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_215" name="arginyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_217" name="glutamyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_219" name="seryl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_221" name="methionyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_223" name="histidyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_225" name="aspartyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_227" name="glutamyl-tRNA(Gln) and/or aspartyl-tRNA(Asn) amidotransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_229" name="asparaginyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_231" name="tryptophanyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_233" name="lysyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_235" name="phenylalanyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_237" name="glycyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_239" name="prolyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_241" name="alanyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_243" name="threonyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_245" name="tyrosyl-tRNA synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_251" name="phenylalanyl-tRNA synthetase, alpha subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_253" name="phenylalanyl-tRNA synthetase, beta subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_255" name="translation initiation factor IF-3" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_257" name="ribosomal protein L35" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_259" name="ribosomal protein L20" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_261" name="co-chaperone GrpE" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_263" name="DNA topoisomerase IV, B subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_265" name="DNA topoisomerase IV, A subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_267" name="heat-inducible transcription repressor HrcA, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_269" name="excinuclease ABC, C subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_271" name="glycoprotease" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_273" name="30S ribosomal protein S21" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_275" name="holo-(acyl-carrier-protein) synthase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_277" name="segregation and condensation protein A" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_279" name="segregation and condensation protein B" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_281" name="6-phosphofructokinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_283" name="pyruvate kinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_285" name="mraZ protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_287" name="cell division protein FtsZ" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_293" name="thymidylate synthase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_295" name="dihydrofolate reductase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_297" name="ribonucleoside-diphosphate reductase, beta chain" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_299" name="ribonucleoside-diphosphate reductase, alpha chain" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_301" name="ribosomal protein L21" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_303" name="ribosomal protein L27" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_305" name="ATP-dependent protease La" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_307" name="nicotinamide-nucleotide adenylyltransferase/conserved hypothetical protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_309" name="3-5' helicase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_311" name="RNA polymerase sigma factor RpoD" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_313" name="DNA primase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_315" name="glycyl-tRNA synthetase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_317" name="23S rRNA methyltransferase; G2251" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_319" name="ribosomal protein L31" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_321" name="modification methylase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_323" name="DNA polymerase III, alpha subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_325" name="sugar phosphatase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_327" name="dihydrolipoamide dehydrogenase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_329" name="dihydrolipoamide acetyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_331" name="pyruvate dehydrogenase component E1, beta subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_333" name="pyruvate dehydrogenase component E1, alpha subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_337" name="adenine phosphoribosyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_341" name="GTP diphosphokinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_343" name="prolyl-tRNA synthetase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_345" name="acyl carrier protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_349" name="phosphonate ABC transporter, ATP-binding protein, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_353" name="alanyl-tRNA synthetase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_355" name="glycerophosphoryl diester phosphodiesterase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_357" name="tRNA U34 sulfurtransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_359" name="chromosome segregation protein SMC" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_361" name="phosphate acetyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_363" name="glyceraldehyde-3-phosphate dehydrogenase, type I" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_367" name="metal ion (cobalt) ABC transporter, ATP-binding protein, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_369" name="metal ion (cobalt) ABC transporter, ATP-binding protein, putative_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_371" name="ribosomal protein S4" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_373" name="DNA polymerase III, delta subunit, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_381" name="potassium uptake protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_383" name="ribosomal protein L33" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_385" name="FMN-dependent NADH-azoreductase, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_387" name="cysteine desulfurase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_389" name="DNA-directed RNA polymerase, beta subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_391" name="DNA-directed RNA polymerase, beta subunit_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_393" name="23S rRNA methyltransferase; U2552" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_395" name="tRNA (guanine-N(7)-)-methyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_397" name="Replication initiation/membrane attachment protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_399" name="inorganic pyrophosphatase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_401" name="Holliday junction endonuclease" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_403" name="DNA-binding protein HU, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_405" name="ATP-dependent Clp protease, ATPase subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_407" name="acetate kinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_409" name="Holliday junction DNA helicase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_411" name="Holliday junction DNA helicase RuvB" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_413" name="ribosomal protein L10" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_415" name="ribosomal protein L7/L12" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_417" name="ribosomal protein L32" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_419" name="ribosomal protein S20" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_421" name="ribonuclease III" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_423" name="fatty acid/phospholipid synthesis protein PlsX" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_425" name="DAK2 phosphatase domain protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_427" name="thiamine biosynthesis/tRNA modification protein ThiI" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_429" name="threonyl-tRNA synthetase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_431" name="MG_376_MONOMER__c" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_433" name="tRNA uridine 5-carboxymethylaminomethyl modification enzyme GidA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_435" name="uridine kinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_437" name="NH(3)-dependent NAD+ synthetase, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_439" name="glycerophosphoryl diester phosphodiesterase family protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_443" name="cytosol aminopeptidase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_445" name="chaperonin" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_447" name="chaperonin, 10 kDa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_449" name="serine hydroxymethyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_451" name="ribose 5-phosphate isomerase B" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_453" name="ATP synthase F1, epsilon subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_455" name="ATP synthase F1, beta subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_457" name="ATP synthase F1, gamma subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_459" name="ATP synthase F1, alpha subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_461" name="ATP synthase F1, delta subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_469" name="enolase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_471" name="phosphate transport system regulatory protein PhoU, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_473" name="phosphate ABC transporter, ATP-binding protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_479" name="ribosomal protein S9" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_481" name="ribosomal protein L13" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_483" name="DNA polymerase III, subunit gamma and tau" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_485" name="excinuclease ABC, A subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_487" name="ribosomal protein S15" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_489" name="ATP-dependent RNA helicase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_491" name="ribosomal protein L28" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_493" name="osmotically inducible peroxidase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_495" name="LuxR bacterial regulatory protein, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_497" name="PTS system, E1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_499" name="triosephosphate isomerase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_501" name="translation elongation factor Ts" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_503" name="uridylate kinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_507" name="ribosomal protein L19" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_509" name="tRNA (guanine-N1)-methyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_511" name="ribosomal protein S16" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_513" name="translation elongation factor Tu" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_515" name="UTP-glucose-1-phosphate uridylyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_517" name="thiol-dependent peroxidase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_519" name="tyrosyl-tRNA synthetase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_523" name="hypoxanthine phosphoribosyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_525" name="L-lactate dehydrogenase/malate dehydrogenase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_529" name="ribonuclease P protein component" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_531" name="ribosomal protein L34" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_533" name="salivaricin A ABC transporter, ATP-binding protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_537" name="salivaricin A ABC transporter, ATP-binding protein_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_539" name="chromosomal replication initiator protein DnaA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_541" name="16S ribosomal rRNA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_543" name="23S ribosomal rRNA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_545" name="5S ribosomal rRNA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_547" name="scRNA, signal recognition particle 4.5S RNA, MCS1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_549" name="Rnase P RNA, MCS5, M1 RNA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_551" name="DNA gyrase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_553" name="DNA polymerase (2) core, XX-clamp, XXX-complex, and primase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_555" name="DNA-directed DNA polymerase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_557" name="DNA polymerase core, beta-clamp, and gamma-complex" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_559" name="DNA polymerase core, beta-clamp, and primase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_561" name="DNA-directed DNA polymerase gamma complex" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_563" name="DNA-directed DNA polymerase holoenzyme" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_565" name="signal recognition particle" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_567" name="ribonuclease P" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_569" name="DNA polymerase III, beta clamp" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_571" name="thymidylate kinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_573" name="tRNA uridine 5-carboxymethylaminomethyl modification enzyme" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_575" name="methylenetetrahydrofolate dehydrogenase/methylenetetrahydrofolate cyclohydrolase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_579" name="chaperone protein DnaJ" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_581" name="fructose-1,6-bisphosphate aldolase, class II" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_583" name="DJ-1/PfpI family protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_585" name="uracil phosphoribosyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_589" name="thymidine kinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_591" name="glycerol kinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_593" name="FAD-dependent glycerol-3-phosphate dehydrogenase, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_603" name="metalloendopeptidase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_605" name="S-adenosylmethionine synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_607" name="purine nucleoside phosphorylase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_609" name="pyrimidine-nucleoside phosphorylase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_611" name="cytidine deaminase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_613" name="phosphoglucomutase/phosphomannomutase, putative" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_617" name="ribose-phosphate pyrophosphokinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_619" name="1-phosphofructokinase, putative" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_619">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-11T18:46:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_623" name="transketolase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_625" name="preprotein translocase, SecA subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_627" name="DNA incision complex" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_631" name="tRNA(Ile)-lysidine synthetase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_633" name="HPr(Ser) kinase/phosphatase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_635" name="translation elongation factor G" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_637" name="single-strand binding protein family, octamer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_639" name="single-strand binding protein family, tetramer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_641" name="replicative DNA helicase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_643" name="thioredoxin-disulfide reductase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_645" name="oxidized thioredoxin-disulfide reductase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_647" name="putative DNA integrity scanning protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_649" name="peptide deformylase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_651" name="guanylate kinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_655" name="glucose-6-phosphate isomerase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_657" name="ribulose-phosphate 3-epimerase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_661" name="UDP-glucose 4-epimerase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_665" name="oxidized thioredoxin" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_667" name="oxidized Spx subfamily protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_669" name="inorganic polyphosphate/ATP-NAD kinase, probable" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_671" name="purine nucleoside phosphoramidase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_673" name="UDP-galactopyranose mutase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_675" name="ribonuclease J" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_679" name="Pseudouridylate synthase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_681" name="adenine-specific DNA modification methylase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_685" name="co-chaperone GrpE_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_687" name="topoisomerase IV" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_689" name="heat-inducible transcription repressor HrcA, putative_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_691" name="glycoprotease family protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_693" name="chromosome segregation protein SMC_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_695" name="Chromosome Segregation Protein SMC with SCP Proteins-ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_697" name="6-phosphofructokinase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_699" name="pyruvate kinase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_701" name="mraZ protein_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_703" name="cell division protein ftsZ activated 2mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_705" name="cell division protein ftsZ activated 3mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_707" name="cell division protein ftsZ activated 4mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_709" name="cell division protein ftsZ activated 5mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_711" name="cell division protein ftsZ activated 6mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_713" name="cell division protein ftsZ activated 7mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_715" name="cell division protein ftsZ activated 8mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_717" name="cell division protein ftsZ deactivated 9mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_719" name="cell division protein ftsZ activated 9mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_721" name="cell division protein ftsZ hydrolysed" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_723" name="cell division protein ftsZ activated" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_729" name="thymidylate synthase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_731" name="dihydrofolate reductase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_733" name="ribonucleoside-diphosphate reductase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_735" name="oxidized ribonucleoside-diphosphate reductase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_737" name="ATP-dependent protease La_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_739" name="nicotinamide-nucleotide adenylyltransferase/conserved hypothetical protein_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_741" name="3-5' helicase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_743" name="23S rRNA methyltransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_745" name="modification methylase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_747" name="sugar phosphatase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_749" name="pyruvate dehydrogenase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_751" name="oxidized dihydrolipoamide dehydrogenase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_755" name="adenine phosphoribosyltransferase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_757" name="GTP pyrophosphokinase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_759" name="holo acyl carrier protein" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_761" name="Dodecanoyl-ACP (n-C12:0ACP)" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_763" name="cis-hexadec-9-enoyl-[acyl-carrier protein] (n-C16:1)" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_765" name="Myristoyl-ACP (n-C14:0ACP)" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_767" name="Octadecanoyl-ACP (n-C18:0ACP)" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_769" name="cis-octadec-11-enoyl-[acyl-carrier protein] (n-C18:1)" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_771" name="Palmitoyl-ACP (n-C16:0ACP)" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_773" name="cis-tetradec-7-enoyl-[acyl-carrier protein] (n-C14:1)" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_777" name="glycerophosphoryl diester phosphodiesterase family protein_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_779" name="oxidized tRNA U34 sulfurtransferase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_781" name="phosphate acetyltransferase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_783" name="glyceraldehyde-3-phosphate dehydrogenase, type I_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_791" name="FMN-dependent NADH-azoreductase, putative_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_793" name="cysteine desulfurase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_795" name="23S rRNA methyltransferase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_797" name="tRNA (guanine-N(7)-)-methyltransferase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_799" name="Replication initiation/membrane attachment protein_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_801" name="inorganic pyrophosphatase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_803" name="Holliday junction endonuclease_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_805" name="DNA-binding protein HU, putative_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_807" name="ATP-dependent Clp protease, ATPase subunit_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_809" name="acetate kinase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_811" name="Holliday junction DNA helicase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_813" name="ribonuclease III_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_815" name="fatty acid/phospholipid synthesis protein PlsX_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_817" name="DAK2 phosphatase domain protein_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_819" name="thiamine biosynthesis/tRNA modification protein ThiI_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_821" name="MG_376_HEXAMER__c" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_823" name="uridine kinase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_825" name="NH(3)-dependent NAD+ synthetase, putative_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_827" name="glycerophosphoryl diester phosphodiesterase family protein_3" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_831" name="cytosol aminopeptidase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_833" name="GroEL-GroES chaperonin complex" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_835" name="serine hydroxymethyltransferase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_837" name="ribose 5-phosphate isomerase B_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_841" name="enolase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_843" name="phosphate transport system regulatory protein PhoU, putative_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_847" name="ATP-dependent RNA helicase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_849" name="osmotically inducible peroxidase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_851" name="oxidized osmotically inducible peroxidase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_853" name="LuxR bacterial regulatory protein, putative_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_855" name="triosephosphate isomerase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_857" name="translation elongation factor Ts_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_859" name="uridylate kinase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_863" name="tRNA (guanine-N1)-methyltransferase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_865" name="translation elongation factor Tu_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_867" name="UTP-glucose-1-phosphate uridylyltransferase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_869" name="thiol-dependent peroxidase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_871" name="oxidized thiol-dependent peroxidase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_875" name="hypoxanthine phosphoribosyltransferase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_877" name="L-lactate dehydrogenase/malate dehydrogenase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_881" name="DnaA-ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_883" name="DnaA-ATP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_885" name="DnaA 2mer-(1)ATP-(1)ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_887" name="DnaA-ATP 2mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_889" name="DnaA 3mer-(2)ATP-(1)ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_891" name="DnaA-ATP 3mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_893" name="DnaA 4mer-(3)ATP-(1)ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_895" name="DnaA-ATP 4mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_897" name="DnaA 5mer-(4)ATP-(1)ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_899" name="DnaA-ATP 5mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_901" name="DnaA 6mer-(5)ATP-(1)ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_903" name="DnaA-ATP 6mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_905" name="DnaA 7mer-(6)ATP-(1)ADP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_907" name="DnaA-ATP 7mer" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_909" name="holo-(acyl-carrier-protein) synthase_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_911" name="Replisome" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_913" name="30S ribosomal subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_915" name="30S ribosomal subunit - translation initiation factor IF-3 complex" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_917" name="50S ribosomal subunit" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_919" name="70S ribosome" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_921" name="DNA-directed RNA polymerase" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_923" name="DNA-directed RNA polymerase holoenzyme" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_3" name="k_tRnaAa_MG479" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-11T18:50:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_3" name="Aminoacylation (MG479)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-11T18:44:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_243" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4395" name="KM1" value="1"/>
          <Constant key="Parameter_4396" name="KM2" value="1"/>
          <Constant key="Parameter_4397" name="KM3" value="1"/>
          <Constant key="Parameter_4398" name="k_tRnaAa_MG479" value="90"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Parameter_4395"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Parameter_4396"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Parameter_4397"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ADP]" value="2.181821970517e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-alanine]" value="5.000184328237e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[AMP]" value="8.72608345371e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Arginine]" value="3.607865146389e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Asparagine]" value="6.721312451818999e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Aspartate]" value="5.665028781853e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP]" value="2.1820628561886e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Cysteine]" value="1.313429124399e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[N-Formyl-L-methionine]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[10-formyl-tetrahydrofolate]" value="1.743410048205e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Glutamate]" value="5.731874555722e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycine]" value="4.624402680541e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[hydrogen ion]" value="7.854077322518e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[water]" value="1.865285545514699e+32" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Histidine]" value="1.766294187007e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Isoleucine]" value="8.579745408213e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Leucine]" value="1.0822391010809e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Lysine]" value="9.089820817825999e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Methionine]" value="1.681381987768e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-phenylalanine]" value="4.625607108899e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phosphate]" value="4.363643941034e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[diphosphate]" value="3.490433381484e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Proline]" value="2.49316670106e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Serine]" value="5.268771852071e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[5\,6\,7\,8-Tetrahydrofolate]" value="1.743410048205e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Threonine]" value="2.68587523834e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-tryptophan]" value="6.52800170036e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-tyrosine]" value="3.236901212124999e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-Valine]" value="5.7210347005e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-glutamine]" value="4.76953629768e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG471]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG471-AA]" value="4.3359420888e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG472]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG472-AA]" value="4.3359420888e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG475]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG475-AA]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG479]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG479-AA]" value="1.5055354475e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG483]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG483-AA]" value="6.02214179e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG484]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG484-AA]" value="3.6735064919e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG485]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG485-AA]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG486]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG486-AA]" value="2.7701852234e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG487]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG487-AA]" value="1.204428358e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG488]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG488-AA]" value="6.624355969e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG489]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG489-AA]" value="5.0585991036e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG490]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG490-AA]" value="3.3121779845e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG492]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG492-AA]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG493]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG493-AA]" value="3.0712923129e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG495]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG495-AA]" value="4.817713432e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG496]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG496-AA]" value="5.419927611e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG497]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG497-AA]" value="5.419927611e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG499]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG499-AA]" value="2.5292995518e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG500]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG500-AA]" value="3.613285074e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG501]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG501-AA]" value="2.1679710444e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG502]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG502-AA]" value="4.5166063425e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG503]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG503-AA]" value="2.7701852234e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG504]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG504-AA]" value="6.02214179e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG506]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG506-AA]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG507]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG507-AA]" value="1.3850926117e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG508]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG508-AA]" value="3.6735064919e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG509]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG509-AA]" value="3.3723994024e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG510]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG510-AA]" value="3.011070895e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG511]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG511-AA]" value="3.3121779845e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG512]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG512-AA]" value="3.7337279098e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG513]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG513-AA]" value="3.2519565666e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG514]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG514-AA]" value="3.3723994024e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG518]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG518-AA]" value="1.1442069401e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG519]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG519-AA]" value="1.5657568654e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG520]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG520-AA]" value="1.9873067907e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG523]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG523-AA]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cysteinyl-tRNA synthetase]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[leucyl-tRNA synthetase]" value="3.7337279098e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[valyl-tRNA synthetase]" value="2.0475282086e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[isoleucyl-tRNA synthetase]" value="2.8906280592e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[methionyl-tRNA formyltransferase]" value="1.0839855222e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[arginyl-tRNA synthetase]" value="1.9873067907e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glutamyl-tRNA synthetase]" value="4.8779348499e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[seryl-tRNA synthetase]" value="7.1061273122e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[methionyl-tRNA synthetase]" value="1.204428358e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[histidyl-tRNA synthetase]" value="1.1442069401e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[aspartyl-tRNA synthetase]" value="1.2646497759e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glutamyl-tRNA(Gln) and/or aspartyl-tRNA(Asn) amidotransferase]" value="8.3707770881e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[asparaginyl-tRNA synthetase]" value="1.0839855222e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tryptophanyl-tRNA synthetase]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[lysyl-tRNA synthetase]" value="1.3850926117e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phenylalanyl-tRNA synthetase]" value="1.6259782833e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycyl-tRNA synthetase]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[prolyl-tRNA synthetase]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[alanyl-tRNA synthetase]" value="1.0839855222e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[threonyl-tRNA synthetase]" value="7.4674558196e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tyrosyl-tRNA synthetase]" value="5.7210347005e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phenylalanyl-tRNA synthetase\, alpha subunit]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phenylalanyl-tRNA synthetase\, beta subunit]" value="4.817713432e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[translation initiation factor IF-3]" value="1.24056120874e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L35]" value="8.7923270134e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L20]" value="8.551441341799999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[co-chaperone GrpE]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA topoisomerase IV\, B subunit]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA topoisomerase IV\, A subunit]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[heat-inducible transcription repressor HrcA\, putative]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[excinuclease ABC\, C subunit]" value="4.215499253e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycoprotease]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[30S ribosomal protein S21]" value="7.1663487301e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[holo-(acyl-carrier-protein) synthase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[segregation and condensation protein A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[segregation and condensation protein B]" value="2.408856716e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[6-phosphofructokinase]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[pyruvate kinase]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[mraZ protein]" value="3.613285074e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein FtsZ]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thymidylate synthase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[dihydrofolate reductase]" value="1.806642537e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribonucleoside-diphosphate reductase\, beta chain]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribonucleoside-diphosphate reductase\, alpha chain]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L21]" value="8.190112834399999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L27]" value="7.6481200733e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP-dependent protease La]" value="3.011070895e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[nicotinamide-nucleotide adenylyltransferase/conserved hypothetical protein]" value="1.806642537e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[3-5' helicase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[RNA polymerase sigma factor RpoD]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA primase]" value="1.9873067907e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycyl-tRNA synthetase_2]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[23S rRNA methyltransferase; G2251]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L31]" value="6.8652416406e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[modification methylase]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA polymerase III\, alpha subunit]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[sugar phosphatase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[dihydrolipoamide dehydrogenase]" value="3.78190504412e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[dihydrolipoamide acetyltransferase]" value="5.4801490289e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[pyruvate dehydrogenase component E1\, beta subunit]" value="2.0475282086e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[pyruvate dehydrogenase component E1\, alpha subunit]" value="2.2884138802e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[adenine phosphoribosyltransferase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[GTP diphosphokinase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[prolyl-tRNA synthetase_2]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[acyl carrier protein]" value="2.8906280592e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phosphonate ABC transporter\, ATP-binding protein\, putative]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[alanyl-tRNA synthetase_2]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycerophosphoryl diester phosphodiesterase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tRNA U34 sulfurtransferase]" value="2.3486352981e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[chromosome segregation protein SMC]" value="4.215499253e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phosphate acetyltransferase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glyceraldehyde-3-phosphate dehydrogenase\, type I]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[metal ion (cobalt) ABC transporter\, ATP-binding protein\, putative]" value="2.2884138802e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[metal ion (cobalt) ABC transporter\, ATP-binding protein\, putative_2]" value="3.011070895e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein S4]" value="5.8414775363e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA polymerase III\, delta subunit\, putative]" value="2.408856716e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[potassium uptake protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L33]" value="7.9492271628e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[FMN-dependent NADH-azoreductase\, putative]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cysteine desulfurase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-directed RNA polymerase\, beta subunit]" value="6.624355969e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-directed RNA polymerase\, beta subunit_2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[23S rRNA methyltransferase; U2552]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tRNA (guanine-N(7)-)-methyltransferase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Replication initiation/membrane attachment protein]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[inorganic pyrophosphatase]" value="2.408856716e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Holliday junction endonuclease]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-binding protein HU\, putative]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP-dependent Clp protease\, ATPase subunit]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[acetate kinase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Holliday junction DNA helicase]" value="2.1077496265e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Holliday junction DNA helicase RuvB]" value="2.408856716e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L10]" value="6.4436917153e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L7/L12]" value="7.1061273122e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L32]" value="7.1061273122e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein S20]" value="5.961920372099996e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribonuclease III]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[fatty acid/phospholipid synthesis protein PlsX]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DAK2 phosphatase domain protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thiamine biosynthesis/tRNA modification protein ThiI]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[threonyl-tRNA synthetase_2]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG_376_MONOMER__c]" value="1.806642537e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tRNA uridine 5-carboxymethylaminomethyl modification enzyme GidA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[uridine kinase]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[NH(3)-dependent NAD+ synthetase\, putative]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycerophosphoryl diester phosphodiesterase family protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cytosol aminopeptidase]" value="2.408856716e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[chaperonin]" value="1.806642537e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[chaperonin\, 10 kDa]" value="5.8414775363e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[serine hydroxymethyltransferase]" value="1.806642537e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribose 5-phosphate isomerase B]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP synthase F1\, epsilon subunit]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP synthase F1\, beta subunit]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP synthase F1\, gamma subunit]" value="1.8668639549e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP synthase F1\, alpha subunit]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP synthase F1\, delta subunit]" value="4.6370491783e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[enolase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phosphate transport system regulatory protein PhoU\, putative]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phosphate ABC transporter\, ATP-binding protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein S9]" value="7.4072344017e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L13]" value="6.8652416406e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA polymerase III\, subunit gamma and tau]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[excinuclease ABC\, A subunit]" value="1.204428358e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein S15]" value="7.1663487301e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP-dependent RNA helicase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L28]" value="9.1536555208e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[osmotically inducible peroxidase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[LuxR bacterial regulatory protein\, putative]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[PTS system\, E1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[triosephosphate isomerase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[translation elongation factor Ts]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[uridylate kinase]" value="1.806642537e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L19]" value="8.430998506e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tRNA (guanine-N1)-methyltransferase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein S16]" value="6.5641345511e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[translation elongation factor Tu]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[UTP-glucose-1-phosphate uridylyltransferase]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thiol-dependent peroxidase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tyrosyl-tRNA synthetase_2]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[hypoxanthine phosphoribosyltransferase]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-lactate dehydrogenase/malate dehydrogenase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribonuclease P protein component]" value="6.624355969e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribosomal protein L34]" value="8.0696699986e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[salivaricin A ABC transporter\, ATP-binding protein]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[salivaricin A ABC transporter\, ATP-binding protein_2]" value="3.613285074e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[chromosomal replication initiator protein DnaA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[16S ribosomal rRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[23S ribosomal rRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[5S ribosomal rRNA]" value="1.7464211191e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[scRNA\, signal recognition particle 4.5S RNA\, MCS1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Rnase P RNA\, MCS5\, M1 RNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA gyrase]" value="3.011070895e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA polymerase (2) core\, XX-clamp\, XXX-complex\, and primase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-directed DNA polymerase]" value="1.5657568654e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA polymerase core\, beta-clamp\, and gamma-complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA polymerase core\, beta-clamp\, and primase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-directed DNA polymerase gamma complex]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-directed DNA polymerase holoenzyme]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[signal recognition particle]" value="1.7464211191e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribonuclease P]" value="1.5055354475e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA polymerase III\, beta clamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thymidylate kinase]" value="8.0696699986e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tRNA uridine 5-carboxymethylaminomethyl modification enzyme]" value="1.0839855222e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[methylenetetrahydrofolate dehydrogenase/methylenetetrahydrofolate cyclohydrolase]" value="5.419927611e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[chaperone protein DnaJ]" value="1.5055354475e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[fructose-1\,6-bisphosphate aldolase\, class II]" value="7.6481200733e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DJ-1/PfpI family protein]" value="1.2646497759e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[uracil phosphoribosyltransferase]" value="9.033212684999999e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thymidine kinase]" value="1.3850926117e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycerol kinase]" value="9.033212684999999e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[FAD-dependent glycerol-3-phosphate dehydrogenase\, putative]" value="7.226570148e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[metalloendopeptidase]" value="1.2646497759e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[S-adenosylmethionine synthetase]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[purine nucleoside phosphorylase]" value="1.2646497759e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[pyrimidine-nucleoside phosphorylase]" value="3.5530636561e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cytidine deaminase]" value="1.9270853728e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phosphoglucomutase/phosphomannomutase\, putative]" value="1.3850926117e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribose-phosphate pyrophosphokinase]" value="4.817713432e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[1-phosphofructokinase\, putative]" value="1.204428358e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[transketolase]" value="1.4453140296e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[preprotein translocase\, SecA subunit]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA incision complex]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tRNA(Ile)-lysidine synthetase]" value="1.0839855222e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[HPr(Ser) kinase/phosphatase]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[translation elongation factor G]" value="8.0094485807e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[single-strand binding protein family\, octamer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[single-strand binding protein family\, tetramer]" value="3.9143921635e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[replicative DNA helicase]" value="2.1679710444e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thioredoxin-disulfide reductase]" value="1.3248711938e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[oxidized thioredoxin-disulfide reductase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[putative DNA integrity scanning protein]" value="6.624355969e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[peptide deformylase]" value="1.3248711938e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[guanylate kinase]" value="1.5055354475e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glucose-6-phosphate isomerase]" value="1.0839855222e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribulose-phosphate 3-epimerase]" value="1.1442069401e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[UDP-glucose 4-epimerase]" value="7.226570148e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[oxidized thioredoxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[oxidized Spx subfamily protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[inorganic polyphosphate/ATP-NAD kinase\, probable]" value="5.419927611e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[purine nucleoside phosphoramidase]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[UDP-galactopyranose mutase]" value="1.5055354475e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribonuclease J]" value="6.02214179e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Pseudouridylate synthase]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[adenine-specific DNA modification methylase]" value="1.7464211191e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[co-chaperone GrpE_2]" value="6.624355969e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[topoisomerase IV]" value="7.226570148e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[heat-inducible transcription repressor HrcA\, putative_2]" value="1.3850926117e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycoprotease family protein]" value="1.4453140296e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[chromosome segregation protein SMC_2]" value="3.011070895e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Chromosome Segregation Protein SMC with SCP Proteins-ADP]" value="4.8779348499e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[6-phosphofructokinase_2]" value="1.0839855222e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[pyruvate kinase_2]" value="1.1442069401e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[mraZ protein_2]" value="7.226570148e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated 2mer]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated 3mer]" value="6.02214179e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated 4mer]" value="1.204428358e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated 5mer]" value="1.806642537e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated 6mer]" value="3.011070895e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated 7mer]" value="4.817713432e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated 8mer]" value="7.226570148e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ deactivated 9mer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated 9mer]" value="1.204428358e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ hydrolysed]" value="1.806642537e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cell division protein ftsZ activated]" value="3.613285074e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thymidylate synthase_2]" value="1.3248711938e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[dihydrofolate reductase_2]" value="9.033212684999999e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribonucleoside-diphosphate reductase]" value="1.806642537e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[oxidized ribonucleoside-diphosphate reductase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP-dependent protease La_2]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[nicotinamide-nucleotide adenylyltransferase/conserved hypothetical protein_2]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[3-5' helicase_2]" value="4.817713432e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[23S rRNA methyltransferase]" value="5.419927611e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[modification methylase_2]" value="2.8906280592e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[sugar phosphatase_2]" value="2.408856716e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[pyruvate dehydrogenase]" value="6.624355969e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[oxidized dihydrolipoamide dehydrogenase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[adenine phosphoribosyltransferase_2]" value="1.4453140296e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[GTP pyrophosphokinase]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[holo acyl carrier protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Dodecanoyl-ACP (n-C12:0ACP)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cis-hexadec-9-enoyl-\[acyl-carrier protein\] (n-C16:1)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Myristoyl-ACP (n-C14:0ACP)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Octadecanoyl-ACP (n-C18:0ACP)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cis-octadec-11-enoyl-\[acyl-carrier protein\] (n-C18:1)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Palmitoyl-ACP (n-C16:0ACP)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cis-tetradec-7-enoyl-\[acyl-carrier protein\] (n-C14:1)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycerophosphoryl diester phosphodiesterase family protein_2]" value="1.9873067907e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[oxidized tRNA U34 sulfurtransferase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phosphate acetyltransferase_2]" value="1.3248711938e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glyceraldehyde-3-phosphate dehydrogenase\, type I_2]" value="9.033212684999999e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[FMN-dependent NADH-azoreductase\, putative_2]" value="9.033212684999999e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cysteine desulfurase_2]" value="9.033212684999999e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[23S rRNA methyltransferase_2]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tRNA (guanine-N(7)-)-methyltransferase_2]" value="6.624355969e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Replication initiation/membrane attachment protein_2]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[inorganic pyrophosphatase_2]" value="6.624355969e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Holliday junction endonuclease_2]" value="1.0839855222e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-binding protein HU\, putative_2]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP-dependent Clp protease\, ATPase subunit_2]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[acetate kinase_2]" value="3.2519565666e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Holliday junction DNA helicase_2]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribonuclease III_2]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[fatty acid/phospholipid synthesis protein PlsX_2]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DAK2 phosphatase domain protein_2]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thiamine biosynthesis/tRNA modification protein ThiI_2]" value="6.5039131332e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[MG_376_HEXAMER__c]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[uridine kinase_2]" value="6.02214179e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[NH(3)-dependent NAD+ synthetase\, putative_2]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[glycerophosphoryl diester phosphodiesterase family protein_3]" value="6.02214179e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[cytosol aminopeptidase_2]" value="2.1077496265e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[GroEL-GroES chaperonin complex]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[serine hydroxymethyltransferase_2]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ribose 5-phosphate isomerase B_2]" value="1.6259782833e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[enolase_2]" value="2.0475282086e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[phosphate transport system regulatory protein PhoU\, putative_2]" value="9.635426864e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[ATP-dependent RNA helicase_2]" value="5.419927611e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[osmotically inducible peroxidase_2]" value="1.0237641043e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[oxidized osmotically inducible peroxidase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[LuxR bacterial regulatory protein\, putative_2]" value="6.02214179e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[triosephosphate isomerase_2]" value="1.5055354475e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[translation elongation factor Ts_2]" value="7.3470129838e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[uridylate kinase_2]" value="8.430998506e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[tRNA (guanine-N1)-methyltransferase_2]" value="6.4436917153e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[translation elongation factor Tu_2]" value="8.3707770881e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[UTP-glucose-1-phosphate uridylyltransferase_2]" value="5.419927611e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[thiol-dependent peroxidase_2]" value="1.7464211191e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[oxidized thiol-dependent peroxidase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[hypoxanthine phosphoribosyltransferase_2]" value="1.0237641043e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[L-lactate dehydrogenase/malate dehydrogenase_2]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA-ADP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA-ATP]" value="1.5055354475e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA 2mer-(1)ATP-(1)ADP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA-ATP 2mer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA 3mer-(2)ATP-(1)ADP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA-ATP 3mer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA 4mer-(3)ATP-(1)ADP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA-ATP 4mer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA 5mer-(4)ATP-(1)ADP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA-ATP 5mer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA 6mer-(5)ATP-(1)ADP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA-ATP 6mer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA 7mer-(6)ATP-(1)ADP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DnaA-ATP 7mer]" value="2.408856716e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[holo-(acyl-carrier-protein) synthase_2]" value="7.828784327e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[Replisome]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[30S ribosomal subunit]" value="1.5055354475e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[30S ribosomal subunit - translation initiation factor IF-3 complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[50S ribosomal subunit]" value="7.226570148e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[70S ribosome]" value="3.3723994024e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-directed RNA polymerase]" value="2.408856716e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Compartments[c],Vector=Metabolites[DNA-directed RNA polymerase holoenzyme]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Values[k_tRnaAa_MG479]" value="90" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=tRNAAminoacylation module,Vector=Reactions[Aminoacylation (MG479)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Reactions[Aminoacylation (MG479)],ParameterGroup=Parameters,Parameter=KM1" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Reactions[Aminoacylation (MG479)],ParameterGroup=Parameters,Parameter=KM2" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Reactions[Aminoacylation (MG479)],ParameterGroup=Parameters,Parameter=KM3" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=tRNAAminoacylation module,Vector=Reactions[Aminoacylation (MG479)],ParameterGroup=Parameters,Parameter=k_tRnaAa_MG479" value="90" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=tRNAAminoacylation module,Vector=Values[k_tRnaAa_MG479],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_157"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_161"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_165"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_169"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_173"/>
      <StateTemplateVariable objectReference="Metabolite_175"/>
      <StateTemplateVariable objectReference="Metabolite_177"/>
      <StateTemplateVariable objectReference="Metabolite_179"/>
      <StateTemplateVariable objectReference="Metabolite_181"/>
      <StateTemplateVariable objectReference="Metabolite_183"/>
      <StateTemplateVariable objectReference="Metabolite_185"/>
      <StateTemplateVariable objectReference="Metabolite_187"/>
      <StateTemplateVariable objectReference="Metabolite_189"/>
      <StateTemplateVariable objectReference="Metabolite_191"/>
      <StateTemplateVariable objectReference="Metabolite_193"/>
      <StateTemplateVariable objectReference="Metabolite_195"/>
      <StateTemplateVariable objectReference="Metabolite_197"/>
      <StateTemplateVariable objectReference="Metabolite_199"/>
      <StateTemplateVariable objectReference="Metabolite_201"/>
      <StateTemplateVariable objectReference="Metabolite_203"/>
      <StateTemplateVariable objectReference="Metabolite_205"/>
      <StateTemplateVariable objectReference="Metabolite_207"/>
      <StateTemplateVariable objectReference="Metabolite_209"/>
      <StateTemplateVariable objectReference="Metabolite_211"/>
      <StateTemplateVariable objectReference="Metabolite_213"/>
      <StateTemplateVariable objectReference="Metabolite_215"/>
      <StateTemplateVariable objectReference="Metabolite_217"/>
      <StateTemplateVariable objectReference="Metabolite_219"/>
      <StateTemplateVariable objectReference="Metabolite_221"/>
      <StateTemplateVariable objectReference="Metabolite_223"/>
      <StateTemplateVariable objectReference="Metabolite_225"/>
      <StateTemplateVariable objectReference="Metabolite_227"/>
      <StateTemplateVariable objectReference="Metabolite_229"/>
      <StateTemplateVariable objectReference="Metabolite_231"/>
      <StateTemplateVariable objectReference="Metabolite_233"/>
      <StateTemplateVariable objectReference="Metabolite_235"/>
      <StateTemplateVariable objectReference="Metabolite_237"/>
      <StateTemplateVariable objectReference="Metabolite_239"/>
      <StateTemplateVariable objectReference="Metabolite_241"/>
      <StateTemplateVariable objectReference="Metabolite_243"/>
      <StateTemplateVariable objectReference="Metabolite_245"/>
      <StateTemplateVariable objectReference="Metabolite_251"/>
      <StateTemplateVariable objectReference="Metabolite_253"/>
      <StateTemplateVariable objectReference="Metabolite_255"/>
      <StateTemplateVariable objectReference="Metabolite_257"/>
      <StateTemplateVariable objectReference="Metabolite_259"/>
      <StateTemplateVariable objectReference="Metabolite_261"/>
      <StateTemplateVariable objectReference="Metabolite_263"/>
      <StateTemplateVariable objectReference="Metabolite_265"/>
      <StateTemplateVariable objectReference="Metabolite_267"/>
      <StateTemplateVariable objectReference="Metabolite_269"/>
      <StateTemplateVariable objectReference="Metabolite_271"/>
      <StateTemplateVariable objectReference="Metabolite_273"/>
      <StateTemplateVariable objectReference="Metabolite_275"/>
      <StateTemplateVariable objectReference="Metabolite_277"/>
      <StateTemplateVariable objectReference="Metabolite_279"/>
      <StateTemplateVariable objectReference="Metabolite_281"/>
      <StateTemplateVariable objectReference="Metabolite_283"/>
      <StateTemplateVariable objectReference="Metabolite_285"/>
      <StateTemplateVariable objectReference="Metabolite_287"/>
      <StateTemplateVariable objectReference="Metabolite_293"/>
      <StateTemplateVariable objectReference="Metabolite_295"/>
      <StateTemplateVariable objectReference="Metabolite_297"/>
      <StateTemplateVariable objectReference="Metabolite_299"/>
      <StateTemplateVariable objectReference="Metabolite_301"/>
      <StateTemplateVariable objectReference="Metabolite_303"/>
      <StateTemplateVariable objectReference="Metabolite_305"/>
      <StateTemplateVariable objectReference="Metabolite_307"/>
      <StateTemplateVariable objectReference="Metabolite_309"/>
      <StateTemplateVariable objectReference="Metabolite_311"/>
      <StateTemplateVariable objectReference="Metabolite_313"/>
      <StateTemplateVariable objectReference="Metabolite_315"/>
      <StateTemplateVariable objectReference="Metabolite_317"/>
      <StateTemplateVariable objectReference="Metabolite_319"/>
      <StateTemplateVariable objectReference="Metabolite_321"/>
      <StateTemplateVariable objectReference="Metabolite_323"/>
      <StateTemplateVariable objectReference="Metabolite_325"/>
      <StateTemplateVariable objectReference="Metabolite_327"/>
      <StateTemplateVariable objectReference="Metabolite_329"/>
      <StateTemplateVariable objectReference="Metabolite_331"/>
      <StateTemplateVariable objectReference="Metabolite_333"/>
      <StateTemplateVariable objectReference="Metabolite_337"/>
      <StateTemplateVariable objectReference="Metabolite_341"/>
      <StateTemplateVariable objectReference="Metabolite_343"/>
      <StateTemplateVariable objectReference="Metabolite_345"/>
      <StateTemplateVariable objectReference="Metabolite_349"/>
      <StateTemplateVariable objectReference="Metabolite_353"/>
      <StateTemplateVariable objectReference="Metabolite_355"/>
      <StateTemplateVariable objectReference="Metabolite_357"/>
      <StateTemplateVariable objectReference="Metabolite_359"/>
      <StateTemplateVariable objectReference="Metabolite_361"/>
      <StateTemplateVariable objectReference="Metabolite_363"/>
      <StateTemplateVariable objectReference="Metabolite_367"/>
      <StateTemplateVariable objectReference="Metabolite_369"/>
      <StateTemplateVariable objectReference="Metabolite_371"/>
      <StateTemplateVariable objectReference="Metabolite_373"/>
      <StateTemplateVariable objectReference="Metabolite_381"/>
      <StateTemplateVariable objectReference="Metabolite_383"/>
      <StateTemplateVariable objectReference="Metabolite_385"/>
      <StateTemplateVariable objectReference="Metabolite_387"/>
      <StateTemplateVariable objectReference="Metabolite_389"/>
      <StateTemplateVariable objectReference="Metabolite_391"/>
      <StateTemplateVariable objectReference="Metabolite_393"/>
      <StateTemplateVariable objectReference="Metabolite_395"/>
      <StateTemplateVariable objectReference="Metabolite_397"/>
      <StateTemplateVariable objectReference="Metabolite_399"/>
      <StateTemplateVariable objectReference="Metabolite_401"/>
      <StateTemplateVariable objectReference="Metabolite_403"/>
      <StateTemplateVariable objectReference="Metabolite_405"/>
      <StateTemplateVariable objectReference="Metabolite_407"/>
      <StateTemplateVariable objectReference="Metabolite_409"/>
      <StateTemplateVariable objectReference="Metabolite_411"/>
      <StateTemplateVariable objectReference="Metabolite_413"/>
      <StateTemplateVariable objectReference="Metabolite_415"/>
      <StateTemplateVariable objectReference="Metabolite_417"/>
      <StateTemplateVariable objectReference="Metabolite_419"/>
      <StateTemplateVariable objectReference="Metabolite_421"/>
      <StateTemplateVariable objectReference="Metabolite_423"/>
      <StateTemplateVariable objectReference="Metabolite_425"/>
      <StateTemplateVariable objectReference="Metabolite_427"/>
      <StateTemplateVariable objectReference="Metabolite_429"/>
      <StateTemplateVariable objectReference="Metabolite_431"/>
      <StateTemplateVariable objectReference="Metabolite_433"/>
      <StateTemplateVariable objectReference="Metabolite_435"/>
      <StateTemplateVariable objectReference="Metabolite_437"/>
      <StateTemplateVariable objectReference="Metabolite_439"/>
      <StateTemplateVariable objectReference="Metabolite_443"/>
      <StateTemplateVariable objectReference="Metabolite_445"/>
      <StateTemplateVariable objectReference="Metabolite_447"/>
      <StateTemplateVariable objectReference="Metabolite_449"/>
      <StateTemplateVariable objectReference="Metabolite_451"/>
      <StateTemplateVariable objectReference="Metabolite_453"/>
      <StateTemplateVariable objectReference="Metabolite_455"/>
      <StateTemplateVariable objectReference="Metabolite_457"/>
      <StateTemplateVariable objectReference="Metabolite_459"/>
      <StateTemplateVariable objectReference="Metabolite_461"/>
      <StateTemplateVariable objectReference="Metabolite_469"/>
      <StateTemplateVariable objectReference="Metabolite_471"/>
      <StateTemplateVariable objectReference="Metabolite_473"/>
      <StateTemplateVariable objectReference="Metabolite_479"/>
      <StateTemplateVariable objectReference="Metabolite_481"/>
      <StateTemplateVariable objectReference="Metabolite_483"/>
      <StateTemplateVariable objectReference="Metabolite_485"/>
      <StateTemplateVariable objectReference="Metabolite_487"/>
      <StateTemplateVariable objectReference="Metabolite_489"/>
      <StateTemplateVariable objectReference="Metabolite_491"/>
      <StateTemplateVariable objectReference="Metabolite_493"/>
      <StateTemplateVariable objectReference="Metabolite_495"/>
      <StateTemplateVariable objectReference="Metabolite_497"/>
      <StateTemplateVariable objectReference="Metabolite_499"/>
      <StateTemplateVariable objectReference="Metabolite_501"/>
      <StateTemplateVariable objectReference="Metabolite_503"/>
      <StateTemplateVariable objectReference="Metabolite_507"/>
      <StateTemplateVariable objectReference="Metabolite_509"/>
      <StateTemplateVariable objectReference="Metabolite_511"/>
      <StateTemplateVariable objectReference="Metabolite_513"/>
      <StateTemplateVariable objectReference="Metabolite_515"/>
      <StateTemplateVariable objectReference="Metabolite_517"/>
      <StateTemplateVariable objectReference="Metabolite_519"/>
      <StateTemplateVariable objectReference="Metabolite_523"/>
      <StateTemplateVariable objectReference="Metabolite_525"/>
      <StateTemplateVariable objectReference="Metabolite_529"/>
      <StateTemplateVariable objectReference="Metabolite_531"/>
      <StateTemplateVariable objectReference="Metabolite_533"/>
      <StateTemplateVariable objectReference="Metabolite_537"/>
      <StateTemplateVariable objectReference="Metabolite_539"/>
      <StateTemplateVariable objectReference="Metabolite_541"/>
      <StateTemplateVariable objectReference="Metabolite_543"/>
      <StateTemplateVariable objectReference="Metabolite_545"/>
      <StateTemplateVariable objectReference="Metabolite_547"/>
      <StateTemplateVariable objectReference="Metabolite_549"/>
      <StateTemplateVariable objectReference="Metabolite_551"/>
      <StateTemplateVariable objectReference="Metabolite_553"/>
      <StateTemplateVariable objectReference="Metabolite_555"/>
      <StateTemplateVariable objectReference="Metabolite_557"/>
      <StateTemplateVariable objectReference="Metabolite_559"/>
      <StateTemplateVariable objectReference="Metabolite_561"/>
      <StateTemplateVariable objectReference="Metabolite_563"/>
      <StateTemplateVariable objectReference="Metabolite_565"/>
      <StateTemplateVariable objectReference="Metabolite_567"/>
      <StateTemplateVariable objectReference="Metabolite_569"/>
      <StateTemplateVariable objectReference="Metabolite_571"/>
      <StateTemplateVariable objectReference="Metabolite_573"/>
      <StateTemplateVariable objectReference="Metabolite_575"/>
      <StateTemplateVariable objectReference="Metabolite_579"/>
      <StateTemplateVariable objectReference="Metabolite_581"/>
      <StateTemplateVariable objectReference="Metabolite_583"/>
      <StateTemplateVariable objectReference="Metabolite_585"/>
      <StateTemplateVariable objectReference="Metabolite_589"/>
      <StateTemplateVariable objectReference="Metabolite_591"/>
      <StateTemplateVariable objectReference="Metabolite_593"/>
      <StateTemplateVariable objectReference="Metabolite_603"/>
      <StateTemplateVariable objectReference="Metabolite_605"/>
      <StateTemplateVariable objectReference="Metabolite_607"/>
      <StateTemplateVariable objectReference="Metabolite_609"/>
      <StateTemplateVariable objectReference="Metabolite_611"/>
      <StateTemplateVariable objectReference="Metabolite_613"/>
      <StateTemplateVariable objectReference="Metabolite_617"/>
      <StateTemplateVariable objectReference="Metabolite_619"/>
      <StateTemplateVariable objectReference="Metabolite_623"/>
      <StateTemplateVariable objectReference="Metabolite_625"/>
      <StateTemplateVariable objectReference="Metabolite_627"/>
      <StateTemplateVariable objectReference="Metabolite_631"/>
      <StateTemplateVariable objectReference="Metabolite_633"/>
      <StateTemplateVariable objectReference="Metabolite_635"/>
      <StateTemplateVariable objectReference="Metabolite_637"/>
      <StateTemplateVariable objectReference="Metabolite_639"/>
      <StateTemplateVariable objectReference="Metabolite_641"/>
      <StateTemplateVariable objectReference="Metabolite_643"/>
      <StateTemplateVariable objectReference="Metabolite_645"/>
      <StateTemplateVariable objectReference="Metabolite_647"/>
      <StateTemplateVariable objectReference="Metabolite_649"/>
      <StateTemplateVariable objectReference="Metabolite_651"/>
      <StateTemplateVariable objectReference="Metabolite_655"/>
      <StateTemplateVariable objectReference="Metabolite_657"/>
      <StateTemplateVariable objectReference="Metabolite_661"/>
      <StateTemplateVariable objectReference="Metabolite_665"/>
      <StateTemplateVariable objectReference="Metabolite_667"/>
      <StateTemplateVariable objectReference="Metabolite_669"/>
      <StateTemplateVariable objectReference="Metabolite_671"/>
      <StateTemplateVariable objectReference="Metabolite_673"/>
      <StateTemplateVariable objectReference="Metabolite_675"/>
      <StateTemplateVariable objectReference="Metabolite_679"/>
      <StateTemplateVariable objectReference="Metabolite_681"/>
      <StateTemplateVariable objectReference="Metabolite_685"/>
      <StateTemplateVariable objectReference="Metabolite_687"/>
      <StateTemplateVariable objectReference="Metabolite_689"/>
      <StateTemplateVariable objectReference="Metabolite_691"/>
      <StateTemplateVariable objectReference="Metabolite_693"/>
      <StateTemplateVariable objectReference="Metabolite_695"/>
      <StateTemplateVariable objectReference="Metabolite_697"/>
      <StateTemplateVariable objectReference="Metabolite_699"/>
      <StateTemplateVariable objectReference="Metabolite_701"/>
      <StateTemplateVariable objectReference="Metabolite_703"/>
      <StateTemplateVariable objectReference="Metabolite_705"/>
      <StateTemplateVariable objectReference="Metabolite_707"/>
      <StateTemplateVariable objectReference="Metabolite_709"/>
      <StateTemplateVariable objectReference="Metabolite_711"/>
      <StateTemplateVariable objectReference="Metabolite_713"/>
      <StateTemplateVariable objectReference="Metabolite_715"/>
      <StateTemplateVariable objectReference="Metabolite_717"/>
      <StateTemplateVariable objectReference="Metabolite_719"/>
      <StateTemplateVariable objectReference="Metabolite_721"/>
      <StateTemplateVariable objectReference="Metabolite_723"/>
      <StateTemplateVariable objectReference="Metabolite_729"/>
      <StateTemplateVariable objectReference="Metabolite_731"/>
      <StateTemplateVariable objectReference="Metabolite_733"/>
      <StateTemplateVariable objectReference="Metabolite_735"/>
      <StateTemplateVariable objectReference="Metabolite_737"/>
      <StateTemplateVariable objectReference="Metabolite_739"/>
      <StateTemplateVariable objectReference="Metabolite_741"/>
      <StateTemplateVariable objectReference="Metabolite_743"/>
      <StateTemplateVariable objectReference="Metabolite_745"/>
      <StateTemplateVariable objectReference="Metabolite_747"/>
      <StateTemplateVariable objectReference="Metabolite_749"/>
      <StateTemplateVariable objectReference="Metabolite_751"/>
      <StateTemplateVariable objectReference="Metabolite_755"/>
      <StateTemplateVariable objectReference="Metabolite_757"/>
      <StateTemplateVariable objectReference="Metabolite_759"/>
      <StateTemplateVariable objectReference="Metabolite_761"/>
      <StateTemplateVariable objectReference="Metabolite_763"/>
      <StateTemplateVariable objectReference="Metabolite_765"/>
      <StateTemplateVariable objectReference="Metabolite_767"/>
      <StateTemplateVariable objectReference="Metabolite_769"/>
      <StateTemplateVariable objectReference="Metabolite_771"/>
      <StateTemplateVariable objectReference="Metabolite_773"/>
      <StateTemplateVariable objectReference="Metabolite_777"/>
      <StateTemplateVariable objectReference="Metabolite_779"/>
      <StateTemplateVariable objectReference="Metabolite_781"/>
      <StateTemplateVariable objectReference="Metabolite_783"/>
      <StateTemplateVariable objectReference="Metabolite_791"/>
      <StateTemplateVariable objectReference="Metabolite_793"/>
      <StateTemplateVariable objectReference="Metabolite_795"/>
      <StateTemplateVariable objectReference="Metabolite_797"/>
      <StateTemplateVariable objectReference="Metabolite_799"/>
      <StateTemplateVariable objectReference="Metabolite_801"/>
      <StateTemplateVariable objectReference="Metabolite_803"/>
      <StateTemplateVariable objectReference="Metabolite_805"/>
      <StateTemplateVariable objectReference="Metabolite_807"/>
      <StateTemplateVariable objectReference="Metabolite_809"/>
      <StateTemplateVariable objectReference="Metabolite_811"/>
      <StateTemplateVariable objectReference="Metabolite_813"/>
      <StateTemplateVariable objectReference="Metabolite_815"/>
      <StateTemplateVariable objectReference="Metabolite_817"/>
      <StateTemplateVariable objectReference="Metabolite_819"/>
      <StateTemplateVariable objectReference="Metabolite_821"/>
      <StateTemplateVariable objectReference="Metabolite_823"/>
      <StateTemplateVariable objectReference="Metabolite_825"/>
      <StateTemplateVariable objectReference="Metabolite_827"/>
      <StateTemplateVariable objectReference="Metabolite_831"/>
      <StateTemplateVariable objectReference="Metabolite_833"/>
      <StateTemplateVariable objectReference="Metabolite_835"/>
      <StateTemplateVariable objectReference="Metabolite_837"/>
      <StateTemplateVariable objectReference="Metabolite_841"/>
      <StateTemplateVariable objectReference="Metabolite_843"/>
      <StateTemplateVariable objectReference="Metabolite_847"/>
      <StateTemplateVariable objectReference="Metabolite_849"/>
      <StateTemplateVariable objectReference="Metabolite_851"/>
      <StateTemplateVariable objectReference="Metabolite_853"/>
      <StateTemplateVariable objectReference="Metabolite_855"/>
      <StateTemplateVariable objectReference="Metabolite_857"/>
      <StateTemplateVariable objectReference="Metabolite_859"/>
      <StateTemplateVariable objectReference="Metabolite_863"/>
      <StateTemplateVariable objectReference="Metabolite_865"/>
      <StateTemplateVariable objectReference="Metabolite_867"/>
      <StateTemplateVariable objectReference="Metabolite_869"/>
      <StateTemplateVariable objectReference="Metabolite_871"/>
      <StateTemplateVariable objectReference="Metabolite_875"/>
      <StateTemplateVariable objectReference="Metabolite_877"/>
      <StateTemplateVariable objectReference="Metabolite_881"/>
      <StateTemplateVariable objectReference="Metabolite_883"/>
      <StateTemplateVariable objectReference="Metabolite_885"/>
      <StateTemplateVariable objectReference="Metabolite_887"/>
      <StateTemplateVariable objectReference="Metabolite_889"/>
      <StateTemplateVariable objectReference="Metabolite_891"/>
      <StateTemplateVariable objectReference="Metabolite_893"/>
      <StateTemplateVariable objectReference="Metabolite_895"/>
      <StateTemplateVariable objectReference="Metabolite_897"/>
      <StateTemplateVariable objectReference="Metabolite_899"/>
      <StateTemplateVariable objectReference="Metabolite_901"/>
      <StateTemplateVariable objectReference="Metabolite_903"/>
      <StateTemplateVariable objectReference="Metabolite_905"/>
      <StateTemplateVariable objectReference="Metabolite_907"/>
      <StateTemplateVariable objectReference="Metabolite_909"/>
      <StateTemplateVariable objectReference="Metabolite_911"/>
      <StateTemplateVariable objectReference="Metabolite_913"/>
      <StateTemplateVariable objectReference="Metabolite_915"/>
      <StateTemplateVariable objectReference="Metabolite_917"/>
      <StateTemplateVariable objectReference="Metabolite_919"/>
      <StateTemplateVariable objectReference="Metabolite_921"/>
      <StateTemplateVariable objectReference="Metabolite_923"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 8.72608345371e+26 2.1820628561886e+28 3.490433381484e+27 2.68587523834e+27 0 1.5055354475e+25 2.181821970517e+27 5.000184328237e+27 3.607865146389e+27 6.721312451818999e+27 5.665028781853e+27 1.313429124399e+27 0 1.743410048205e+27 5.731874555722e+27 4.624402680541e+27 7.854077322518e+27 1.865285545514699e+32 1.766294187007e+27 8.579745408213e+27 1.0822391010809e+28 9.089820817825999e+27 1.681381987768e+27 4.625607108899e+27 4.363643941034e+27 2.49316670106e+27 5.268771852071e+27 1.743410048205e+27 6.52800170036e+26 3.236901212124999e+27 5.7210347005e+27 4.76953629768e+27 0 4.3359420888e+25 0 4.3359420888e+25 0 8.430998506e+24 0 6.02214179e+24 0 3.6735064919e+25 0 8.430998506e+24 0 2.7701852234e+25 0 1.204428358e+25 0 6.624355969e+24 0 5.0585991036e+25 0 3.3121779845e+25 0 7.828784327e+24 0 3.0712923129e+25 0 4.817713432e+24 0 5.419927611e+24 0 5.419927611e+24 0 2.5292995518e+25 0 3.613285074e+25 0 2.1679710444e+25 0 4.5166063425e+25 0 2.7701852234e+25 0 6.02214179e+24 0 9.635426864e+24 0 1.3850926117e+25 0 3.6735064919e+25 0 3.3723994024e+25 0 3.011070895e+25 0 3.3121779845e+25 0 3.7337279098e+25 0 3.2519565666e+25 0 3.3723994024e+25 0 1.1442069401e+25 0 1.5657568654e+25 0 1.9873067907e+25 0 8.430998506e+24 9.635426864e+24 3.7337279098e+25 2.0475282086e+25 2.8906280592e+25 1.0839855222e+25 1.9873067907e+25 4.8779348499e+25 7.1061273122e+25 1.204428358e+25 1.1442069401e+25 1.2646497759e+25 8.3707770881e+25 1.0839855222e+25 7.828784327e+24 1.3850926117e+25 1.6259782833e+25 8.430998506e+24 8.430998506e+24 1.0839855222e+25 7.4674558196e+25 5.7210347005e+25 0 4.817713432e+24 1.24056120874e+26 8.7923270134e+25 8.551441341799999e+25 0 6.02214179e+23 1.204428358e+24 6.02214179e+23 4.215499253e+24 0 7.1663487301e+25 0 0 2.408856716e+24 1.204428358e+24 1.204428358e+24 3.613285074e+24 0 0 1.806642537e+24 1.204428358e+24 0 8.190112834399999e+25 7.6481200733e+25 3.011070895e+24 1.806642537e+24 6.02214179e+23 7.828784327e+24 1.9873067907e+25 6.02214179e+23 0 6.8652416406e+25 1.204428358e+24 0 6.02214179e+23 3.78190504412e+26 5.4801490289e+25 2.0475282086e+25 2.2884138802e+25 0 6.02214179e+23 6.02214179e+23 2.8906280592e+25 6.02214179e+23 1.204428358e+24 6.02214179e+23 2.3486352981e+25 4.215499253e+24 0 1.204428358e+24 2.2884138802e+25 3.011070895e+24 5.8414775363e+25 2.408856716e+24 0 7.9492271628e+25 6.02214179e+23 0 6.624355969e+24 0 6.02214179e+23 6.02214179e+23 6.02214179e+23 2.408856716e+24 0 6.02214179e+23 1.204428358e+24 6.02214179e+23 2.1077496265e+25 2.408856716e+24 6.4436917153e+25 7.1061273122e+25 7.1061273122e+25 5.961920372099996e+25 0 6.02214179e+23 0 6.02214179e+23 6.02214179e+23 1.806642537e+24 0 1.204428358e+24 0 0 2.408856716e+24 1.806642537e+24 5.8414775363e+25 1.806642537e+24 0 1.204428358e+24 0 1.8668639549e+25 9.635426864e+24 4.6370491783e+25 0 0 0 7.4072344017e+25 6.8652416406e+25 1.204428358e+24 1.204428358e+25 7.1663487301e+25 0 9.1536555208e+25 0 6.02214179e+23 0 6.02214179e+23 0 1.806642537e+24 8.430998506e+25 6.02214179e+23 6.5641345511e+25 0 6.02214179e+23 0 6.02214179e+23 1.204428358e+24 0 6.624355969e+24 8.0696699986e+25 7.828784327e+24 3.613285074e+24 0 0 0 1.7464211191e+25 0 0 3.011070895e+25 0 1.5657568654e+25 0 0 8.430998506e+24 0 1.7464211191e+25 1.5055354475e+25 0 8.0696699986e+25 1.0839855222e+25 5.419927611e+24 1.5055354475e+25 7.6481200733e+25 1.2646497759e+25 9.033212684999999e+24 1.3850926117e+25 9.033212684999999e+24 7.226570148e+24 1.2646497759e+25 7.828784327e+24 1.2646497759e+25 3.5530636561e+25 1.9270853728e+25 1.3850926117e+25 4.817713432e+24 1.204428358e+25 1.4453140296e+25 7.828784327e+24 9.635426864e+24 1.0839855222e+25 8.430998506e+24 8.0094485807e+25 0 3.9143921635e+25 2.1679710444e+25 1.3248711938e+25 0 6.624355969e+24 1.3248711938e+25 1.5055354475e+25 1.0839855222e+25 1.1442069401e+25 7.226570148e+24 0 0 5.419927611e+24 8.430998506e+24 1.5055354475e+25 6.02214179e+24 7.828784327e+24 1.7464211191e+25 6.624355969e+24 7.226570148e+24 1.3850926117e+25 1.4453140296e+25 3.011070895e+24 4.8779348499e+25 1.0839855222e+25 1.1442069401e+25 7.226570148e+24 6.02214179e+23 6.02214179e+23 1.204428358e+24 1.806642537e+24 3.011070895e+24 4.817713432e+24 7.226570148e+24 0 1.204428358e+25 1.806642537e+24 3.613285074e+24 1.3248711938e+25 9.033212684999999e+24 1.806642537e+25 0 8.430998506e+24 7.828784327e+24 4.817713432e+24 5.419927611e+24 2.8906280592e+25 2.408856716e+25 6.624355969e+24 0 1.4453140296e+25 9.635426864e+24 0 0 0 0 0 0 0 0 1.9873067907e+25 0 1.3248711938e+25 9.033212684999999e+24 9.033212684999999e+24 9.033212684999999e+24 7.828784327e+24 6.624355969e+24 7.828784327e+24 6.624355969e+24 1.0839855222e+25 9.635426864e+24 7.828784327e+24 3.2519565666e+25 7.828784327e+24 7.828784327e+24 8.430998506e+24 8.430998506e+24 6.5039131332e+25 9.635426864e+24 6.02214179e+24 9.635426864e+24 6.02214179e+24 2.1077496265e+25 7.828784327e+24 8.430998506e+24 1.6259782833e+25 2.0475282086e+25 9.635426864e+24 5.419927611e+24 1.0237641043e+25 0 6.02214179e+24 1.5055354475e+25 7.3470129838e+25 8.430998506e+24 6.4436917153e+25 8.3707770881e+25 5.419927611e+24 1.7464211191e+25 0 1.0237641043e+25 7.828784327e+24 0 1.5055354475e+25 0 0 0 0 0 0 0 0 0 0 0 2.408856716e+24 7.828784327e+24 0 1.5055354475e+25 0 7.226570148e+24 3.3723994024e+25 2.408856716e+25 0 1 90 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="100"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
      </Problem>
      <Method name="Stochastic (Gibson + Bruck)" type="DirectMethod">
        <Parameter name="Max Internal Steps" type="integer" value="1000000"/>
        <Parameter name="Subtype" type="unsignedInteger" value="2"/>
        <Parameter name="Use Random Seed" type="bool" value="0"/>
        <Parameter name="Random Seed" type="unsignedInteger" value="1"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Use Reeder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="plot_1" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="tRNAAminoacylation-module.xml">
    <SBMLMap SBMLid="ADP__c" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="ALA__c" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="AMP__c" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="ARG__c" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="ASN__c" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="ASP__c" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="ATP__c" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Aminoacylation_MG479" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="CYS__c" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="DNA_GYRASE__c" COPASIkey="Metabolite_551"/>
    <SBMLMap SBMLid="DNA_POLYMERASE_2CORE_BETA_CLAMP_GAMMA_COMPLEX_PRIMASE__c" COPASIkey="Metabolite_553"/>
    <SBMLMap SBMLid="DNA_POLYMERASE_CORE_BETA_CLAMP_GAMMA_COMPLEX__c" COPASIkey="Metabolite_557"/>
    <SBMLMap SBMLid="DNA_POLYMERASE_CORE_BETA_CLAMP_PRIMASE__c" COPASIkey="Metabolite_559"/>
    <SBMLMap SBMLid="DNA_POLYMERASE_CORE__c" COPASIkey="Metabolite_555"/>
    <SBMLMap SBMLid="DNA_POLYMERASE_GAMMA_COMPLEX__c" COPASIkey="Metabolite_561"/>
    <SBMLMap SBMLid="DNA_POLYMERASE_HOLOENZYME__c" COPASIkey="Metabolite_563"/>
    <SBMLMap SBMLid="FMET__c" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="FTHF10__c" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="GLN__c" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="GLU__c" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="GLY__c" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="H2O__c" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="HIS__c" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="H__c" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="ILE__c" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="LEU__c" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="LYS__c" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="MET__c" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="MG471__c" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="MG471_aa__c" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="MG472__c" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="MG472_aa__c" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="MG475__c" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="MG475_aa__c" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="MG479__c" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="MG479_aa__c" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="MG483__c" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="MG483_aa__c" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="MG484__c" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="MG484_aa__c" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="MG485__c" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="MG485_aa__c" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="MG486__c" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="MG486_aa__c" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="MG487__c" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="MG487_aa__c" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="MG488__c" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="MG488_aa__c" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="MG489__c" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="MG489_aa__c" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="MG490__c" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="MG490_aa__c" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="MG492__c" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="MG492_aa__c" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="MG493__c" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="MG493_aa__c" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="MG495__c" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="MG495_aa__c" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="MG496__c" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="MG496_aa__c" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="MG497__c" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="MG497_aa__c" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="MG499__c" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="MG499_aa__c" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="MG500__c" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="MG500_aa__c" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="MG501__c" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="MG501_aa__c" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="MG502__c" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="MG502_aa__c" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="MG503__c" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="MG503_aa__c" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="MG504__c" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="MG504_aa__c" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="MG506__c" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="MG506_aa__c" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="MG507__c" COPASIkey="Metabolite_157"/>
    <SBMLMap SBMLid="MG507_aa__c" COPASIkey="Metabolite_159"/>
    <SBMLMap SBMLid="MG508__c" COPASIkey="Metabolite_161"/>
    <SBMLMap SBMLid="MG508_aa__c" COPASIkey="Metabolite_163"/>
    <SBMLMap SBMLid="MG509__c" COPASIkey="Metabolite_165"/>
    <SBMLMap SBMLid="MG509_aa__c" COPASIkey="Metabolite_167"/>
    <SBMLMap SBMLid="MG510__c" COPASIkey="Metabolite_169"/>
    <SBMLMap SBMLid="MG510_aa__c" COPASIkey="Metabolite_171"/>
    <SBMLMap SBMLid="MG511__c" COPASIkey="Metabolite_173"/>
    <SBMLMap SBMLid="MG511_aa__c" COPASIkey="Metabolite_175"/>
    <SBMLMap SBMLid="MG512__c" COPASIkey="Metabolite_177"/>
    <SBMLMap SBMLid="MG512_aa__c" COPASIkey="Metabolite_179"/>
    <SBMLMap SBMLid="MG513__c" COPASIkey="Metabolite_181"/>
    <SBMLMap SBMLid="MG513_aa__c" COPASIkey="Metabolite_183"/>
    <SBMLMap SBMLid="MG514__c" COPASIkey="Metabolite_185"/>
    <SBMLMap SBMLid="MG514_aa__c" COPASIkey="Metabolite_187"/>
    <SBMLMap SBMLid="MG518__c" COPASIkey="Metabolite_189"/>
    <SBMLMap SBMLid="MG518_aa__c" COPASIkey="Metabolite_191"/>
    <SBMLMap SBMLid="MG519__c" COPASIkey="Metabolite_193"/>
    <SBMLMap SBMLid="MG519_aa__c" COPASIkey="Metabolite_195"/>
    <SBMLMap SBMLid="MG520__c" COPASIkey="Metabolite_197"/>
    <SBMLMap SBMLid="MG520_aa__c" COPASIkey="Metabolite_199"/>
    <SBMLMap SBMLid="MG523__c" COPASIkey="Metabolite_201"/>
    <SBMLMap SBMLid="MG523_aa__c" COPASIkey="Metabolite_203"/>
    <SBMLMap SBMLid="MG_0001_048__c" COPASIkey="Metabolite_565"/>
    <SBMLMap SBMLid="MG_0001__c" COPASIkey="Metabolite_547"/>
    <SBMLMap SBMLid="MG_0003_465__c" COPASIkey="Metabolite_567"/>
    <SBMLMap SBMLid="MG_0003__c" COPASIkey="Metabolite_549"/>
    <SBMLMap SBMLid="MG_001_DIMER__c" COPASIkey="Metabolite_569"/>
    <SBMLMap SBMLid="MG_005_DIMER__c" COPASIkey="Metabolite_219"/>
    <SBMLMap SBMLid="MG_006_DIMER__c" COPASIkey="Metabolite_571"/>
    <SBMLMap SBMLid="MG_008_379_TETRAMER__c" COPASIkey="Metabolite_573"/>
    <SBMLMap SBMLid="MG_013_DIMER__c" COPASIkey="Metabolite_575"/>
    <SBMLMap SBMLid="MG_019_DIMER__c" COPASIkey="Metabolite_579"/>
    <SBMLMap SBMLid="MG_021_DIMER__c" COPASIkey="Metabolite_221"/>
    <SBMLMap SBMLid="MG_023_DIMER__c" COPASIkey="Metabolite_581"/>
    <SBMLMap SBMLid="MG_029_DIMER__c" COPASIkey="Metabolite_583"/>
    <SBMLMap SBMLid="MG_030_TRIMER__c" COPASIkey="Metabolite_585"/>
    <SBMLMap SBMLid="MG_034_DIMER__c" COPASIkey="Metabolite_589"/>
    <SBMLMap SBMLid="MG_035_DIMER__c" COPASIkey="Metabolite_223"/>
    <SBMLMap SBMLid="MG_036_DIMER__c" COPASIkey="Metabolite_225"/>
    <SBMLMap SBMLid="MG_038_TETRAMER__c" COPASIkey="Metabolite_591"/>
    <SBMLMap SBMLid="MG_039_DIMER__c" COPASIkey="Metabolite_593"/>
    <SBMLMap SBMLid="MG_046_DIMER__c" COPASIkey="Metabolite_603"/>
    <SBMLMap SBMLid="MG_047_TETRAMER__c" COPASIkey="Metabolite_605"/>
    <SBMLMap SBMLid="MG_049_HEXAMER__c" COPASIkey="Metabolite_607"/>
    <SBMLMap SBMLid="MG_051_DIMER__c" COPASIkey="Metabolite_609"/>
    <SBMLMap SBMLid="MG_052_DIMER__c" COPASIkey="Metabolite_611"/>
    <SBMLMap SBMLid="MG_053_TRIMER__c" COPASIkey="Metabolite_613"/>
    <SBMLMap SBMLid="MG_058_HEXAMER__c" COPASIkey="Metabolite_617"/>
    <SBMLMap SBMLid="MG_063_DIMER__c" COPASIkey="Metabolite_619"/>
    <SBMLMap SBMLid="MG_066_DIMER__c" COPASIkey="Metabolite_623"/>
    <SBMLMap SBMLid="MG_072_DIMER__c" COPASIkey="Metabolite_625"/>
    <SBMLMap SBMLid="MG_073_206_421_TETRAMER__c" COPASIkey="Metabolite_627"/>
    <SBMLMap SBMLid="MG_084_TETRAMER__c" COPASIkey="Metabolite_631"/>
    <SBMLMap SBMLid="MG_085_HEXAMER__c" COPASIkey="Metabolite_633"/>
    <SBMLMap SBMLid="MG_089_DIMER__c" COPASIkey="Metabolite_635"/>
    <SBMLMap SBMLid="MG_091_OCTAMER__c" COPASIkey="Metabolite_637"/>
    <SBMLMap SBMLid="MG_091_TETRAMER__c" COPASIkey="Metabolite_639"/>
    <SBMLMap SBMLid="MG_094_HEXAMER__c" COPASIkey="Metabolite_641"/>
    <SBMLMap SBMLid="MG_098_099_100_TRIMER__c" COPASIkey="Metabolite_227"/>
    <SBMLMap SBMLid="MG_102_DIMER__c" COPASIkey="Metabolite_643"/>
    <SBMLMap SBMLid="MG_102_DIMER_ox__c" COPASIkey="Metabolite_645"/>
    <SBMLMap SBMLid="MG_105_OCTAMER__c" COPASIkey="Metabolite_647"/>
    <SBMLMap SBMLid="MG_106_DIMER__c" COPASIkey="Metabolite_649"/>
    <SBMLMap SBMLid="MG_107_DIMER__c" COPASIkey="Metabolite_651"/>
    <SBMLMap SBMLid="MG_111_DIMER__c" COPASIkey="Metabolite_655"/>
    <SBMLMap SBMLid="MG_112_DIMER__c" COPASIkey="Metabolite_657"/>
    <SBMLMap SBMLid="MG_113_DIMER__c" COPASIkey="Metabolite_229"/>
    <SBMLMap SBMLid="MG_118_DIMER__c" COPASIkey="Metabolite_661"/>
    <SBMLMap SBMLid="MG_124_MONOMER_ox__c" COPASIkey="Metabolite_665"/>
    <SBMLMap SBMLid="MG_126_DIMER__c" COPASIkey="Metabolite_231"/>
    <SBMLMap SBMLid="MG_127_MONOMER_ox__c" COPASIkey="Metabolite_667"/>
    <SBMLMap SBMLid="MG_128_HEXAMER__c" COPASIkey="Metabolite_669"/>
    <SBMLMap SBMLid="MG_132_DIMER__c" COPASIkey="Metabolite_671"/>
    <SBMLMap SBMLid="MG_136_DIMER__c" COPASIkey="Metabolite_233"/>
    <SBMLMap SBMLid="MG_137_DIMER__c" COPASIkey="Metabolite_673"/>
    <SBMLMap SBMLid="MG_139_DIMER__c" COPASIkey="Metabolite_675"/>
    <SBMLMap SBMLid="MG_182_DIMER__c" COPASIkey="Metabolite_679"/>
    <SBMLMap SBMLid="MG_184_DIMER__c" COPASIkey="Metabolite_681"/>
    <SBMLMap SBMLid="MG_194_195_TETRAMER__c" COPASIkey="Metabolite_235"/>
    <SBMLMap SBMLid="MG_194_MONOMER__c" COPASIkey="Metabolite_251"/>
    <SBMLMap SBMLid="MG_195_MONOMER__c" COPASIkey="Metabolite_253"/>
    <SBMLMap SBMLid="MG_196_MONOMER__c" COPASIkey="Metabolite_255"/>
    <SBMLMap SBMLid="MG_197_MONOMER__c" COPASIkey="Metabolite_257"/>
    <SBMLMap SBMLid="MG_198_MONOMER__c" COPASIkey="Metabolite_259"/>
    <SBMLMap SBMLid="MG_201_DIMER__c" COPASIkey="Metabolite_685"/>
    <SBMLMap SBMLid="MG_201_MONOMER__c" COPASIkey="Metabolite_261"/>
    <SBMLMap SBMLid="MG_203_204_TETRAMER__c" COPASIkey="Metabolite_687"/>
    <SBMLMap SBMLid="MG_203_MONOMER__c" COPASIkey="Metabolite_263"/>
    <SBMLMap SBMLid="MG_204_MONOMER__c" COPASIkey="Metabolite_265"/>
    <SBMLMap SBMLid="MG_205_DIMER__c" COPASIkey="Metabolite_689"/>
    <SBMLMap SBMLid="MG_205_MONOMER__c" COPASIkey="Metabolite_267"/>
    <SBMLMap SBMLid="MG_206_MONOMER__c" COPASIkey="Metabolite_269"/>
    <SBMLMap SBMLid="MG_208_DIMER__c" COPASIkey="Metabolite_691"/>
    <SBMLMap SBMLid="MG_208_MONOMER__c" COPASIkey="Metabolite_271"/>
    <SBMLMap SBMLid="MG_213_214_298_6MER_ADP__c" COPASIkey="Metabolite_695"/>
    <SBMLMap SBMLid="MG_213_214_298_6MER__c" COPASIkey="Metabolite_693"/>
    <SBMLMap SBMLid="MG_213_MONOMER__c" COPASIkey="Metabolite_277"/>
    <SBMLMap SBMLid="MG_214_MONOMER__c" COPASIkey="Metabolite_279"/>
    <SBMLMap SBMLid="MG_215_MONOMER__c" COPASIkey="Metabolite_281"/>
    <SBMLMap SBMLid="MG_215_TETRAMER__c" COPASIkey="Metabolite_697"/>
    <SBMLMap SBMLid="MG_216_MONOMER__c" COPASIkey="Metabolite_283"/>
    <SBMLMap SBMLid="MG_216_TETRAMER__c" COPASIkey="Metabolite_699"/>
    <SBMLMap SBMLid="MG_221_MONOMER__c" COPASIkey="Metabolite_285"/>
    <SBMLMap SBMLid="MG_221_OCTAMER__c" COPASIkey="Metabolite_701"/>
    <SBMLMap SBMLid="MG_224_2MER_GTP__c" COPASIkey="Metabolite_703"/>
    <SBMLMap SBMLid="MG_224_3MER_GTP__c" COPASIkey="Metabolite_705"/>
    <SBMLMap SBMLid="MG_224_4MER_GTP__c" COPASIkey="Metabolite_707"/>
    <SBMLMap SBMLid="MG_224_5MER_GTP__c" COPASIkey="Metabolite_709"/>
    <SBMLMap SBMLid="MG_224_6MER_GTP__c" COPASIkey="Metabolite_711"/>
    <SBMLMap SBMLid="MG_224_7MER_GTP__c" COPASIkey="Metabolite_713"/>
    <SBMLMap SBMLid="MG_224_8MER_GTP__c" COPASIkey="Metabolite_715"/>
    <SBMLMap SBMLid="MG_224_9MER_GDP__c" COPASIkey="Metabolite_717"/>
    <SBMLMap SBMLid="MG_224_9MER_GTP__c" COPASIkey="Metabolite_719"/>
    <SBMLMap SBMLid="MG_224_MONOMER_GDP__c" COPASIkey="Metabolite_721"/>
    <SBMLMap SBMLid="MG_224_MONOMER_GTP__c" COPASIkey="Metabolite_723"/>
    <SBMLMap SBMLid="MG_224_MONOMER__c" COPASIkey="Metabolite_287"/>
    <SBMLMap SBMLid="MG_227_DIMER__c" COPASIkey="Metabolite_729"/>
    <SBMLMap SBMLid="MG_227_MONOMER__c" COPASIkey="Metabolite_293"/>
    <SBMLMap SBMLid="MG_228_MONOMER__c" COPASIkey="Metabolite_295"/>
    <SBMLMap SBMLid="MG_228_TETRAMER__c" COPASIkey="Metabolite_731"/>
    <SBMLMap SBMLid="MG_229_231_TETRAMER__c" COPASIkey="Metabolite_733"/>
    <SBMLMap SBMLid="MG_229_231_TETRAMER_ox__c" COPASIkey="Metabolite_735"/>
    <SBMLMap SBMLid="MG_229_MONOMER__c" COPASIkey="Metabolite_297"/>
    <SBMLMap SBMLid="MG_231_MONOMER__c" COPASIkey="Metabolite_299"/>
    <SBMLMap SBMLid="MG_232_MONOMER__c" COPASIkey="Metabolite_301"/>
    <SBMLMap SBMLid="MG_234_MONOMER__c" COPASIkey="Metabolite_303"/>
    <SBMLMap SBMLid="MG_239_HEXAMER__c" COPASIkey="Metabolite_737"/>
    <SBMLMap SBMLid="MG_239_MONOMER__c" COPASIkey="Metabolite_305"/>
    <SBMLMap SBMLid="MG_240_HEXAMER__c" COPASIkey="Metabolite_739"/>
    <SBMLMap SBMLid="MG_240_MONOMER__c" COPASIkey="Metabolite_307"/>
    <SBMLMap SBMLid="MG_244_DIMER__c" COPASIkey="Metabolite_741"/>
    <SBMLMap SBMLid="MG_244_MONOMER__c" COPASIkey="Metabolite_309"/>
    <SBMLMap SBMLid="MG_249_MONOMER__c" COPASIkey="Metabolite_311"/>
    <SBMLMap SBMLid="MG_250_MONOMER__c" COPASIkey="Metabolite_313"/>
    <SBMLMap SBMLid="MG_251_DIMER__c" COPASIkey="Metabolite_237"/>
    <SBMLMap SBMLid="MG_251_MONOMER__c" COPASIkey="Metabolite_315"/>
    <SBMLMap SBMLid="MG_252_DIMER__c" COPASIkey="Metabolite_743"/>
    <SBMLMap SBMLid="MG_252_MONOMER__c" COPASIkey="Metabolite_317"/>
    <SBMLMap SBMLid="MG_253_MONOMER__c" COPASIkey="Metabolite_205"/>
    <SBMLMap SBMLid="MG_257_MONOMER__c" COPASIkey="Metabolite_319"/>
    <SBMLMap SBMLid="MG_259_MONOMER__c" COPASIkey="Metabolite_321"/>
    <SBMLMap SBMLid="MG_259_TETRAMER__c" COPASIkey="Metabolite_745"/>
    <SBMLMap SBMLid="MG_261_MONOMER__c" COPASIkey="Metabolite_323"/>
    <SBMLMap SBMLid="MG_265_DIMER__c" COPASIkey="Metabolite_747"/>
    <SBMLMap SBMLid="MG_265_MONOMER__c" COPASIkey="Metabolite_325"/>
    <SBMLMap SBMLid="MG_266_MONOMER__c" COPASIkey="Metabolite_207"/>
    <SBMLMap SBMLid="MG_271_272_273_274_192MER__c" COPASIkey="Metabolite_749"/>
    <SBMLMap SBMLid="MG_271_272_273_274_192MER_ox__c" COPASIkey="Metabolite_751"/>
    <SBMLMap SBMLid="MG_271_MONOMER__c" COPASIkey="Metabolite_327"/>
    <SBMLMap SBMLid="MG_272_MONOMER__c" COPASIkey="Metabolite_329"/>
    <SBMLMap SBMLid="MG_273_MONOMER__c" COPASIkey="Metabolite_331"/>
    <SBMLMap SBMLid="MG_274_MONOMER__c" COPASIkey="Metabolite_333"/>
    <SBMLMap SBMLid="MG_276_DIMER__c" COPASIkey="Metabolite_755"/>
    <SBMLMap SBMLid="MG_276_MONOMER__c" COPASIkey="Metabolite_337"/>
    <SBMLMap SBMLid="MG_278_DIMER__c" COPASIkey="Metabolite_757"/>
    <SBMLMap SBMLid="MG_278_MONOMER__c" COPASIkey="Metabolite_341"/>
    <SBMLMap SBMLid="MG_283_DIMER__c" COPASIkey="Metabolite_239"/>
    <SBMLMap SBMLid="MG_283_MONOMER__c" COPASIkey="Metabolite_343"/>
    <SBMLMap SBMLid="MG_287_MONOMER_ACP__c" COPASIkey="Metabolite_759"/>
    <SBMLMap SBMLid="MG_287_MONOMER__c" COPASIkey="Metabolite_345"/>
    <SBMLMap SBMLid="MG_287_MONOMER_ddcaACP__c" COPASIkey="Metabolite_761"/>
    <SBMLMap SBMLid="MG_287_MONOMER_hdeACP__c" COPASIkey="Metabolite_763"/>
    <SBMLMap SBMLid="MG_287_MONOMER_myrsACP__c" COPASIkey="Metabolite_765"/>
    <SBMLMap SBMLid="MG_287_MONOMER_ocdcaACP__c" COPASIkey="Metabolite_767"/>
    <SBMLMap SBMLid="MG_287_MONOMER_octeACP__c" COPASIkey="Metabolite_769"/>
    <SBMLMap SBMLid="MG_287_MONOMER_palmACP__c" COPASIkey="Metabolite_771"/>
    <SBMLMap SBMLid="MG_287_MONOMER_tdeACP__c" COPASIkey="Metabolite_773"/>
    <SBMLMap SBMLid="MG_290_MONOMER__c" COPASIkey="Metabolite_349"/>
    <SBMLMap SBMLid="MG_292_MONOMER__c" COPASIkey="Metabolite_353"/>
    <SBMLMap SBMLid="MG_292_TETRAMER__c" COPASIkey="Metabolite_241"/>
    <SBMLMap SBMLid="MG_293_DIMER__c" COPASIkey="Metabolite_777"/>
    <SBMLMap SBMLid="MG_293_MONOMER__c" COPASIkey="Metabolite_355"/>
    <SBMLMap SBMLid="MG_295_MONOMER__c" COPASIkey="Metabolite_357"/>
    <SBMLMap SBMLid="MG_295_MONOMER_ox__c" COPASIkey="Metabolite_779"/>
    <SBMLMap SBMLid="MG_298_MONOMER__c" COPASIkey="Metabolite_359"/>
    <SBMLMap SBMLid="MG_299_DIMER__c" COPASIkey="Metabolite_781"/>
    <SBMLMap SBMLid="MG_299_MONOMER__c" COPASIkey="Metabolite_361"/>
    <SBMLMap SBMLid="MG_301_MONOMER__c" COPASIkey="Metabolite_363"/>
    <SBMLMap SBMLid="MG_301_TETRAMER__c" COPASIkey="Metabolite_783"/>
    <SBMLMap SBMLid="MG_303_MONOMER__c" COPASIkey="Metabolite_367"/>
    <SBMLMap SBMLid="MG_304_MONOMER__c" COPASIkey="Metabolite_369"/>
    <SBMLMap SBMLid="MG_311_MONOMER__c" COPASIkey="Metabolite_371"/>
    <SBMLMap SBMLid="MG_315_MONOMER__c" COPASIkey="Metabolite_373"/>
    <SBMLMap SBMLid="MG_323_MONOMER__c" COPASIkey="Metabolite_381"/>
    <SBMLMap SBMLid="MG_325_MONOMER__c" COPASIkey="Metabolite_383"/>
    <SBMLMap SBMLid="MG_333_DIMER__c" COPASIkey="Metabolite_791"/>
    <SBMLMap SBMLid="MG_333_MONOMER__c" COPASIkey="Metabolite_385"/>
    <SBMLMap SBMLid="MG_334_MONOMER__c" COPASIkey="Metabolite_209"/>
    <SBMLMap SBMLid="MG_336_DIMER__c" COPASIkey="Metabolite_793"/>
    <SBMLMap SBMLid="MG_336_MONOMER__c" COPASIkey="Metabolite_387"/>
    <SBMLMap SBMLid="MG_340_MONOMER__c" COPASIkey="Metabolite_389"/>
    <SBMLMap SBMLid="MG_341_MONOMER__c" COPASIkey="Metabolite_391"/>
    <SBMLMap SBMLid="MG_345_MONOMER__c" COPASIkey="Metabolite_211"/>
    <SBMLMap SBMLid="MG_346_DIMER__c" COPASIkey="Metabolite_795"/>
    <SBMLMap SBMLid="MG_346_MONOMER__c" COPASIkey="Metabolite_393"/>
    <SBMLMap SBMLid="MG_347_DIMER__c" COPASIkey="Metabolite_797"/>
    <SBMLMap SBMLid="MG_347_MONOMER__c" COPASIkey="Metabolite_395"/>
    <SBMLMap SBMLid="MG_349_HEXAMER__c" COPASIkey="Metabolite_799"/>
    <SBMLMap SBMLid="MG_349_MONOMER__c" COPASIkey="Metabolite_397"/>
    <SBMLMap SBMLid="MG_351_HEXAMER__c" COPASIkey="Metabolite_801"/>
    <SBMLMap SBMLid="MG_351_MONOMER__c" COPASIkey="Metabolite_399"/>
    <SBMLMap SBMLid="MG_352_DIMER__c" COPASIkey="Metabolite_803"/>
    <SBMLMap SBMLid="MG_352_MONOMER__c" COPASIkey="Metabolite_401"/>
    <SBMLMap SBMLid="MG_353_DIMER__c" COPASIkey="Metabolite_805"/>
    <SBMLMap SBMLid="MG_353_MONOMER__c" COPASIkey="Metabolite_403"/>
    <SBMLMap SBMLid="MG_355_HEXAMER__c" COPASIkey="Metabolite_807"/>
    <SBMLMap SBMLid="MG_355_MONOMER__c" COPASIkey="Metabolite_405"/>
    <SBMLMap SBMLid="MG_357_DIMER__c" COPASIkey="Metabolite_809"/>
    <SBMLMap SBMLid="MG_357_MONOMER__c" COPASIkey="Metabolite_407"/>
    <SBMLMap SBMLid="MG_358_359_10MER__c" COPASIkey="Metabolite_811"/>
    <SBMLMap SBMLid="MG_358_MONOMER__c" COPASIkey="Metabolite_409"/>
    <SBMLMap SBMLid="MG_359_MONOMER__c" COPASIkey="Metabolite_411"/>
    <SBMLMap SBMLid="MG_361_MONOMER__c" COPASIkey="Metabolite_413"/>
    <SBMLMap SBMLid="MG_362_MONOMER__c" COPASIkey="Metabolite_415"/>
    <SBMLMap SBMLid="MG_363_MONOMER__c" COPASIkey="Metabolite_417"/>
    <SBMLMap SBMLid="MG_365_MONOMER__c" COPASIkey="Metabolite_213"/>
    <SBMLMap SBMLid="MG_367_DIMER__c" COPASIkey="Metabolite_813"/>
    <SBMLMap SBMLid="MG_367_MONOMER__c" COPASIkey="Metabolite_421"/>
    <SBMLMap SBMLid="MG_368_DIMER__c" COPASIkey="Metabolite_815"/>
    <SBMLMap SBMLid="MG_368_MONOMER__c" COPASIkey="Metabolite_423"/>
    <SBMLMap SBMLid="MG_369_DIMER__c" COPASIkey="Metabolite_817"/>
    <SBMLMap SBMLid="MG_369_MONOMER__c" COPASIkey="Metabolite_425"/>
    <SBMLMap SBMLid="MG_372_DIMER__c" COPASIkey="Metabolite_819"/>
    <SBMLMap SBMLid="MG_372_MONOMER__c" COPASIkey="Metabolite_427"/>
    <SBMLMap SBMLid="MG_375_DIMER__c" COPASIkey="Metabolite_243"/>
    <SBMLMap SBMLid="MG_375_MONOMER__c" COPASIkey="Metabolite_429"/>
    <SBMLMap SBMLid="MG_376_HEXAMER__c" COPASIkey="Metabolite_821"/>
    <SBMLMap SBMLid="MG_376_MONOMER__c" COPASIkey="Metabolite_431"/>
    <SBMLMap SBMLid="MG_378_MONOMER__c" COPASIkey="Metabolite_215"/>
    <SBMLMap SBMLid="MG_379_MONOMER__c" COPASIkey="Metabolite_433"/>
    <SBMLMap SBMLid="MG_382_MONOMER__c" COPASIkey="Metabolite_435"/>
    <SBMLMap SBMLid="MG_382_TETRAMER__c" COPASIkey="Metabolite_823"/>
    <SBMLMap SBMLid="MG_383_DIMER__c" COPASIkey="Metabolite_825"/>
    <SBMLMap SBMLid="MG_383_MONOMER__c" COPASIkey="Metabolite_437"/>
    <SBMLMap SBMLid="MG_385_DIMER__c" COPASIkey="Metabolite_827"/>
    <SBMLMap SBMLid="MG_385_MONOMER__c" COPASIkey="Metabolite_439"/>
    <SBMLMap SBMLid="MG_391_HEXAMER__c" COPASIkey="Metabolite_831"/>
    <SBMLMap SBMLid="MG_391_MONOMER__c" COPASIkey="Metabolite_443"/>
    <SBMLMap SBMLid="MG_392_393_21MER__c" COPASIkey="Metabolite_833"/>
    <SBMLMap SBMLid="MG_392_MONOMER__c" COPASIkey="Metabolite_445"/>
    <SBMLMap SBMLid="MG_393_MONOMER__c" COPASIkey="Metabolite_447"/>
    <SBMLMap SBMLid="MG_394_MONOMER__c" COPASIkey="Metabolite_449"/>
    <SBMLMap SBMLid="MG_394_TETRAMER__c" COPASIkey="Metabolite_835"/>
    <SBMLMap SBMLid="MG_396_DIMER__c" COPASIkey="Metabolite_837"/>
    <SBMLMap SBMLid="MG_396_MONOMER__c" COPASIkey="Metabolite_451"/>
    <SBMLMap SBMLid="MG_398_MONOMER__c" COPASIkey="Metabolite_453"/>
    <SBMLMap SBMLid="MG_399_MONOMER__c" COPASIkey="Metabolite_455"/>
    <SBMLMap SBMLid="MG_400_MONOMER__c" COPASIkey="Metabolite_457"/>
    <SBMLMap SBMLid="MG_401_MONOMER__c" COPASIkey="Metabolite_459"/>
    <SBMLMap SBMLid="MG_402_MONOMER__c" COPASIkey="Metabolite_461"/>
    <SBMLMap SBMLid="MG_407_DIMER__c" COPASIkey="Metabolite_841"/>
    <SBMLMap SBMLid="MG_407_MONOMER__c" COPASIkey="Metabolite_469"/>
    <SBMLMap SBMLid="MG_409_DIMER__c" COPASIkey="Metabolite_843"/>
    <SBMLMap SBMLid="MG_409_MONOMER__c" COPASIkey="Metabolite_471"/>
    <SBMLMap SBMLid="MG_410_MONOMER__c" COPASIkey="Metabolite_473"/>
    <SBMLMap SBMLid="MG_417_MONOMER__c" COPASIkey="Metabolite_479"/>
    <SBMLMap SBMLid="MG_418_MONOMER__c" COPASIkey="Metabolite_481"/>
    <SBMLMap SBMLid="MG_419_MONOMER__c" COPASIkey="Metabolite_483"/>
    <SBMLMap SBMLid="MG_421_MONOMER__c" COPASIkey="Metabolite_485"/>
    <SBMLMap SBMLid="MG_424_MONOMER__c" COPASIkey="Metabolite_487"/>
    <SBMLMap SBMLid="MG_425_DIMER__c" COPASIkey="Metabolite_847"/>
    <SBMLMap SBMLid="MG_425_MONOMER__c" COPASIkey="Metabolite_489"/>
    <SBMLMap SBMLid="MG_426_MONOMER__c" COPASIkey="Metabolite_491"/>
    <SBMLMap SBMLid="MG_427_DIMER__c" COPASIkey="Metabolite_849"/>
    <SBMLMap SBMLid="MG_427_DIMER_ox__c" COPASIkey="Metabolite_851"/>
    <SBMLMap SBMLid="MG_427_MONOMER__c" COPASIkey="Metabolite_493"/>
    <SBMLMap SBMLid="MG_428_DIMER__c" COPASIkey="Metabolite_853"/>
    <SBMLMap SBMLid="MG_428_MONOMER__c" COPASIkey="Metabolite_495"/>
    <SBMLMap SBMLid="MG_429_MONOMER__c" COPASIkey="Metabolite_497"/>
    <SBMLMap SBMLid="MG_431_DIMER__c" COPASIkey="Metabolite_855"/>
    <SBMLMap SBMLid="MG_431_MONOMER__c" COPASIkey="Metabolite_499"/>
    <SBMLMap SBMLid="MG_433_DIMER__c" COPASIkey="Metabolite_857"/>
    <SBMLMap SBMLid="MG_433_MONOMER__c" COPASIkey="Metabolite_501"/>
    <SBMLMap SBMLid="MG_434_HEXAMER__c" COPASIkey="Metabolite_859"/>
    <SBMLMap SBMLid="MG_434_MONOMER__c" COPASIkey="Metabolite_503"/>
    <SBMLMap SBMLid="MG_444_MONOMER__c" COPASIkey="Metabolite_507"/>
    <SBMLMap SBMLid="MG_445_DIMER__c" COPASIkey="Metabolite_863"/>
    <SBMLMap SBMLid="MG_445_MONOMER__c" COPASIkey="Metabolite_509"/>
    <SBMLMap SBMLid="MG_446_MONOMER__c" COPASIkey="Metabolite_511"/>
    <SBMLMap SBMLid="MG_451_DIMER__c" COPASIkey="Metabolite_865"/>
    <SBMLMap SBMLid="MG_451_MONOMER__c" COPASIkey="Metabolite_513"/>
    <SBMLMap SBMLid="MG_453_MONOMER__c" COPASIkey="Metabolite_515"/>
    <SBMLMap SBMLid="MG_453_TETRAMER__c" COPASIkey="Metabolite_867"/>
    <SBMLMap SBMLid="MG_454_DIMER__c" COPASIkey="Metabolite_869"/>
    <SBMLMap SBMLid="MG_454_DIMER_ox__c" COPASIkey="Metabolite_871"/>
    <SBMLMap SBMLid="MG_454_MONOMER__c" COPASIkey="Metabolite_517"/>
    <SBMLMap SBMLid="MG_455_DIMER__c" COPASIkey="Metabolite_245"/>
    <SBMLMap SBMLid="MG_455_MONOMER__c" COPASIkey="Metabolite_519"/>
    <SBMLMap SBMLid="MG_458_MONOMER__c" COPASIkey="Metabolite_523"/>
    <SBMLMap SBMLid="MG_458_TETRAMER__c" COPASIkey="Metabolite_875"/>
    <SBMLMap SBMLid="MG_460_MONOMER__c" COPASIkey="Metabolite_525"/>
    <SBMLMap SBMLid="MG_460_TETRAMER__c" COPASIkey="Metabolite_877"/>
    <SBMLMap SBMLid="MG_462_MONOMER__c" COPASIkey="Metabolite_217"/>
    <SBMLMap SBMLid="MG_465_MONOMER__c" COPASIkey="Metabolite_529"/>
    <SBMLMap SBMLid="MG_466_MONOMER__c" COPASIkey="Metabolite_531"/>
    <SBMLMap SBMLid="MG_467_MONOMER__c" COPASIkey="Metabolite_533"/>
    <SBMLMap SBMLid="MG_469_1MER_ADP__c" COPASIkey="Metabolite_881"/>
    <SBMLMap SBMLid="MG_469_1MER_ATP__c" COPASIkey="Metabolite_883"/>
    <SBMLMap SBMLid="MG_469_2MER_1ATP_ADP__c" COPASIkey="Metabolite_885"/>
    <SBMLMap SBMLid="MG_469_2MER_ATP__c" COPASIkey="Metabolite_887"/>
    <SBMLMap SBMLid="MG_469_3MER_2ATP_ADP__c" COPASIkey="Metabolite_889"/>
    <SBMLMap SBMLid="MG_469_3MER_ATP__c" COPASIkey="Metabolite_891"/>
    <SBMLMap SBMLid="MG_469_4MER_3ATP_ADP__c" COPASIkey="Metabolite_893"/>
    <SBMLMap SBMLid="MG_469_4MER_ATP__c" COPASIkey="Metabolite_895"/>
    <SBMLMap SBMLid="MG_469_5MER_4ATP_ADP__c" COPASIkey="Metabolite_897"/>
    <SBMLMap SBMLid="MG_469_5MER_ATP__c" COPASIkey="Metabolite_899"/>
    <SBMLMap SBMLid="MG_469_6MER_5ATP_ADP__c" COPASIkey="Metabolite_901"/>
    <SBMLMap SBMLid="MG_469_6MER_ATP__c" COPASIkey="Metabolite_903"/>
    <SBMLMap SBMLid="MG_469_7MER_6ATP_ADP__c" COPASIkey="Metabolite_905"/>
    <SBMLMap SBMLid="MG_469_7MER_ATP__c" COPASIkey="Metabolite_907"/>
    <SBMLMap SBMLid="MG_469_MONOMER__c" COPASIkey="Metabolite_539"/>
    <SBMLMap SBMLid="MG_481_MONOMER__c" COPASIkey="Metabolite_273"/>
    <SBMLMap SBMLid="MG_482_DIMER__c" COPASIkey="Metabolite_909"/>
    <SBMLMap SBMLid="MG_482_MONOMER__c" COPASIkey="Metabolite_275"/>
    <SBMLMap SBMLid="MG_522_MONOMER__c" COPASIkey="Metabolite_419"/>
    <SBMLMap SBMLid="MG_526_MONOMER__c" COPASIkey="Metabolite_537"/>
    <SBMLMap SBMLid="MGrrnA16S__c" COPASIkey="Metabolite_541"/>
    <SBMLMap SBMLid="MGrrnA23S__c" COPASIkey="Metabolite_543"/>
    <SBMLMap SBMLid="MGrrnA5S__c" COPASIkey="Metabolite_545"/>
    <SBMLMap SBMLid="PHE__c" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="PI__c" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="PPI__c" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="PRO__c" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="REPLISOME__c" COPASIkey="Metabolite_911"/>
    <SBMLMap SBMLid="RIBOSOME_30S_IF3__c" COPASIkey="Metabolite_915"/>
    <SBMLMap SBMLid="RIBOSOME_30S__c" COPASIkey="Metabolite_913"/>
    <SBMLMap SBMLid="RIBOSOME_50S__c" COPASIkey="Metabolite_917"/>
    <SBMLMap SBMLid="RIBOSOME_70S__c" COPASIkey="Metabolite_919"/>
    <SBMLMap SBMLid="RNA_POLYMERASE_HOLOENZYME__c" COPASIkey="Metabolite_923"/>
    <SBMLMap SBMLid="RNA_POLYMERASE__c" COPASIkey="Metabolite_921"/>
    <SBMLMap SBMLid="SER__c" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="THF__c" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="THR__c" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="TRP__c" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="TYR__c" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="VAL__c" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="c" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="k_tRnaAa_MG479" COPASIkey="ModelValue_3"/>
  </SBMLReference>
</COPASI>
