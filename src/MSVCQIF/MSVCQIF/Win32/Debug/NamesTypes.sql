Name=MeasurementResourcesType TypeName=type_ Type=MeasurementResourcesType BaseType=anyType Abstract=0 [-2,-2]
		 Name=Version Type=element_ TypeName=VersionType  Basetype= [0,1]
		 Name=Carriages Type=element_ TypeName=CarriagesType  Basetype= [0,1]
		 Name=Fixtures Type=element_ TypeName=FixturesType  Basetype= [0,1]
		 Name=MeasurementDevices Type=element_ TypeName=MeasurementDevicesType  Basetype= [0,1]
		 Name=Sensors Type=element_ TypeName=SensorsType  Basetype= [0,1]
		 Name=Tools Type=element_ TypeName=ToolsType  Basetype= [0,1]
Name=MeasurementResourceBaseType TypeName=type_ Type=MeasurementResourceBaseType BaseType=anyType Abstract=1 [-2,-2]
	Attributes: 0. id(1) 
	Supertypes: (FixtureType, CarriageType, ToolType, SensorType, MeasurementDeviceType, )
		 Name=Name Type=element_ TypeName=token  Basetype= [1,1]
		 Name=Description Type=element_ TypeName=string  Basetype= [0,1]
		 Name=Manufacturer Type=element_ TypeName=string  Basetype= [0,1]
		 Name=ModelNumber Type=element_ TypeName=string  Basetype= [0,1]
		 Name=SerialNumber Type=element_ TypeName=string  Basetype= [0,1]
			 Name=LocationId Type=element_ TypeName=QIFReferenceFullType  Basetype= [1,1]
			 Name=Location Type=element_ TypeName=LocationType  Basetype= [1,1]
Name=MeasurementDevicesType TypeName=type_ Type=MeasurementDevicesType BaseType=anyType Abstract=0 [-2,-2]
		 Name=MeasurementDevice Type=element_ TypeName=MeasurementDeviceType  Basetype= [1,-1]
Name=MeasurementDeviceType TypeName=type_ Type=MeasurementDeviceType BaseType=MeasurementResourceBaseType Abstract=0 [-2,-2]
	Attributes: 0. id(1) 
	Subtypes: MeasurementResourceBaseType->
	Supertypes: (ProbingDeviceType, GageDeviceType, ManualDeviceType, )
			 Name=Name Type=element_ TypeName=token  Basetype= [1,1]
			 Name=Description Type=element_ TypeName=string  Basetype= [0,1]
			 Name=Manufacturer Type=element_ TypeName=string  Basetype= [0,1]
			 Name=ModelNumber Type=element_ TypeName=string  Basetype= [0,1]
			 Name=SerialNumber Type=element_ TypeName=string  Basetype= [0,1]
				 Name=LocationId Type=element_ TypeName=QIFReferenceFullType  Basetype= [1,1]
				 Name=Location Type=element_ TypeName=LocationType  Basetype= [1,1]
			 Name=Calibrations Type=element_ TypeName=CalibrationsType  Basetype= [0,1]
			 Name=InspectionTemperatures Type=element_ TypeName=TemperaturesType  Basetype= [0,1]

