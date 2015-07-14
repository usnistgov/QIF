/home/michalos/xsd/bin/xsd cxx-tree --root-element QIFDocument --generate-serialization --generate-polymorphic QIFDocument.xsd
sleep 1m
/home/michalos/xsd/bin/xsd cxx-tree --root-element QIFDocument --generate-serialization --generate-polymorphic QIFMeasurementResources.xsd  
/home/michalos/xsd/bin/xsd cxx-tree --root-element QIFDocument --generate-serialization --generate-polymorphic QIFPlan.xsd  
/home/michalos/xsd/bin/xsd cxx-tree  --root-element QIFDocument--generate-serialization --generate-polymorphic QIFProduct.xsd  
/home/michalos/xsd/bin/xsd cxx-tree  --root-element QIFDocument--generate-serialization --generate-polymorphic QIFResults.xsd 
/home/michalos/xsd/bin/xsd cxx-tree --root-element QIFDocument--generate-serialization --generate-polymorphic  QIFRules.xsd  
/home/michalos/xsd/bin/xsd cxx-tree --root-element QIFDocument --generate-serialization --generate-polymorphic QIFStatistics.xsd


