QIF 2.0 Software - Mon 07/13/2015_11:07:01 
===============================================


Full documentation, XML schemas, and sample XML files can be found at Quality Information Framework by accessing the web page http://qifstandards.org/. 

Disclaimer
----------
This software was developed by U.S. Government employees as part of their official duties and is not subject to copyright. No warranty implied or intended.


Background
----------
This github public respository contains NIST developed code for implementing QIF parsing/serialization, FAIR report generation, and Postgres DB archival. This code is in the public domain since was developed by government employees.  
More complete documentation on use of CodeSynthesis, and the generation of FAIR reports can be found in the folder /doc. 
Documentation on the QIF postgres code is still under development.

The respository contains the following code:
 
   1. Use of CodeSynthesis, an open-source tool to generate C++ code from XML schemas. 
   2. Code to parse/serialize QIF XML using the 
   3. FIRST article inspection (FAIR) class to generate reports 1&3 HTML that can be save/printed as PDF
   4. Generation of Postgresql data base and enumeration types from QIF XML.
   5. Archival of QIF XML files into Postgresql data base (one way - save no retore).

The repository contains code for Microsoft Visual C++ 2010 and Eclipse Workspace (using gcc and tested on Ubuntu 12.4). 
Windows has been tested with postgres on 32 and 64 bit architectures.
Ubuntu was only tested on 64-bit platform.

The code in the repository is laid out as:
```
+---doc
+---src
�   +---MSVCQIF
�   �   +---ipch
�   �   �   +---msvcqif-3115c97d
�   �   +---MSVCQIF
�   �   �   +---UnitTests
�   �   �   +---Win32
�   �   �   �   +---Debug
�   �   �   �       +---Intermediate
�   �   �   �       +---Saves
�   �   �   �       +---UnitTests
�   �   �   +---x64
�   �   �       +---Debug
�   �   �           +---Intermediate
�   �   �           +---Plotting
�   �   +---NIST
�   �   �   +---Math
�   �   +---QIFApplications
�   �   +---QIFLibrary
�   +---Workspace
�       +---Qif
�           +---.settings
�           +---Debug
�           �   +---NIST
�           �   �   +---Math
�           �   +---src
�           �       +---QIFApplications
�           �       +---QIFLibrary
�           �       +---Xsd
�           +---NIST
�           �   +---Math
�           +---src
�               +---QIFApplications
�               +---QIFLibrary
�               +---Xsd
+---xsd
    +---MSVC QIF_2.0_XMLSchemaFiles
    �   +---QIFApplications
    �   +---QIFLibrary
    +---QIF_2.0_XMLSchemaFiles
        +---QIFApplications
        +---QIFLibrary
```
The xsd folder contains the QIF XML schemas and the {hxx, cxx} code generated by CodeSynthesis tool byeither a Windows batch file or a Linux bash shell script.
The MSVC QIF_2.0_XMLSchemaFiles folder contains the code generated by CodeSynthesis  on/for the Microsoft Visual C++ compiler.
The QIF_2.0_XMLSchemaFiles folder contains the code generated by CodeSynthesis on/for the gcc environment.

The folder src/MSVCQIF contains the Windows solution for compiling the QIF examples and CodeSynthesis generated code. 
Note the folders QIFApplications and QIFLibrary contain the CodeSynthesis generated code, which is compiled as part of the solution. 
To compile the code you will need to download and install the CodeSynthesis XSD tree generation tool, since it contains the headers and library to link against.

The folder src/Workspace/QIF contains the Ubuntu solution for compiling the QIF examples and CodeSynthesis generated code. 
You will need to copy the Qif folder under your Eclipse implementation folder (i.e., Workspace).
Note the folders QIFApplications and QIFLibrary contain the CodeSynthesis generated Linux code, which is compiled as part of the workspace.
To compile the code you will need to download the CodeSynthesis and install the  XSD tree generation tool, since it contains the headers and library to link against.

