ADS Device Release 1.2

09_08_2017 DC

1. Unzip archive in folder on your PC.

2. Create/open new ADS workspace with standard ADS layers...

3. Create/open or new schematic.

4. Select "Open"->"New Library" and go to component folder under "ADS Library" folder e.g. "BCR192_RFE"

5. After this you can drag the symbol to your schematic, and generate layout. You will see the required footprint.

 

 

Additional information.

You can find DXF file of the footprint.

There is a layer mapping to import DXF for the ADS with standard Layers.

In main folder you can find Datasheet folder too.

 

 

See below layer mapping.

Note! "Paste Mask" layer is placed on layer "Default"

 

	<Layer DXFLayer="Default" ADSLayer="default" />
            <Layer DXFLayer="Package" ADSLayer="packages" />
            <Layer DXFLayer="Leads" ADSLayer="leads" />
            <Layer DXFLayer="Annotation" ADSLayer="ads_annotate" />
            <Layer DXFLayer="Copper" ADSLayer="cond" />
            <Layer DXFLayer="SolderMask" ADSLayer="solder_mask" />
            <Layer DXFLayer="SolderPaste" ADSLayer="default" />
            <Layer DXFLayer="SilkScreen" ADSLayer="silkscreen" />
            <Layer DXFLayer="KeepOut" ADSLayer="case_dimensions" />
            <Layer DXFLayer="Docu" ADSLayer="symbol" />
            <Layer DXFLayer="99_1_0" ADSLayer="Mismatch" />
            <Layer DXFLayer="99_3_0" ADSLayer="Mismatch" />
            <Layer DXFLayer="99_2_0" ADSLayer="Mismatch" />
