//Maya ASCII 2022 scene
//Name: Physics and constraints demo.ma
//Last modified: Sat, Sep 06, 2025 01:03:46 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 26100)";
fileInfo "UUID" "D5981090-474A-A5DF-F599-CB84D2C4772A";
createNode transform -s -n "persp";
	rename -uid "F20239E5-492D-0738-B7C9-108758BE7A28";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.17925068012740819 1.169032933676541 2.5669301068984227 ;
	setAttr ".r" -type "double3" -28.538352729601129 -2.1999999999983628 1.9893129658559674e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0F79FBF4-4549-B908-62AC-F0B197842794";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.0738759662093464;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.31076613211502885 0.26362364269668093 -8.3455699505175169e-11 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "BFDCF0C8-4E94-B788-B921-FF95C0C51A2D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A43D9342-4F35-661F-991A-969521329E0F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C3DCDBD1-4E65-78F3-EAA4-2F8D1C8962AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "847B7CED-4F13-DFF5-C39F-21A1BFC49671";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "3A2AB757-4441-16C9-E489-109DFF5C9FEE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "626A8A3E-4598-7C13-B30C-878E6E271972";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pPlane1";
	rename -uid "E7543E53-4FD4-2700-1B8F-0BB9A1A153CE";
	setAttr ".t" -type "double3" 0 0.03451040858766366 0 ;
	setAttr ".r" -type "double3" 0 0 -12.196253504741518 ;
	setAttr ".s" -type "double3" 1 1 0.20958261531105363 ;
	setAttr ".rp" -type "double3" 0 0 -0.089424312114716381 ;
	setAttr ".sp" -type "double3" 0 0 -0.42667810009907148 ;
	setAttr ".spt" -type "double3" 0 0 0.33725378798435524 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "8F366A73-4013-8C9D-B29B-4BB5F1B79638";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane2";
	rename -uid "53B41764-406C-9DCA-D1AA-D9B5B24FC80B";
	setAttr ".t" -type "double3" 0.42433222830016104 -0.24198192907688196 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 0 0 13.033685693264777 ;
	setAttr ".s" -type "double3" 1 1 0.20958261531105363 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "2C0B9BA2-437D-1AD7-0483-FC8418D75342";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane3";
	rename -uid "379C7164-4C9A-F756-98E2-B0B4450A09D7";
	setAttr ".t" -type "double3" -0.1594836440084656 -0.55896064937723322 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 0 0 -15.671901803270854 ;
	setAttr ".s" -type "double3" 1 1 0.20958261531105363 ;
	setAttr ".rp" -type "double3" 0 0 -0.089424312114714438 ;
	setAttr ".sp" -type "double3" 0 0 -0.42667810009906892 ;
	setAttr ".spt" -type "double3" 0 0 0.33725378798435357 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	rename -uid "A44E4CE0-4BD9-1819-9FBF-91B575B1ED99";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere1";
	rename -uid "4D65E3C4-4FF5-2494-95DF-E3B25EF3F7A5";
	setAttr ".t" -type "double3" -0.31076613210167592 0.18723483588259138 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 0.076467296792287393 0.076467296792287393 0.076467296792287393 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "4F18639E-40DE-C2F5-EFE8-DDAA3712792C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "outputCloth1" -p "pSphere1";
	rename -uid "E5DC0FF8-4F72-4DA5-D5B1-1BB9FBF9715A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode nucleus -n "nucleus1";
	rename -uid "DD60B36B-4177-F350-2E08-84BC753B3A75";
	setAttr -s 9 ".nipo";
	setAttr -s 9 ".nips";
createNode transform -n "nCloth1";
	rename -uid "F40965C5-4E60-2DDF-1C15-7DB78505D0F8";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nCloth -n "nClothShape1" -p "nCloth1";
	rename -uid "0DEE3653-442D-AB71-B50B-05AE5477EFEE";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 382;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0080000003799796104;
	setAttr ".fron" 1;
	setAttr ".scfl" 3;
	setAttr ".por" 0.0074922353960573673;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr ".lsou" yes;
	setAttr ".stch" 21.978021621704102;
	setAttr ".comr" 12.087912559509277;
	setAttr ".rity" 1;
	setAttr ".dety" 1;
createNode transform -n "nRigid1";
	rename -uid "24116149-4BEE-79F2-ABE1-2CACAED1B3A1";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape1" -p "nRigid1";
	rename -uid "E0775FFE-4CCB-A1FF-F854-7D8002690871";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 4;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0028637715149670839;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.011455086059868336;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "nRigid2";
	rename -uid "5D8947C1-41F1-2DB5-4F11-5FA1F6E7E796";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape2" -p "nRigid2";
	rename -uid "4C3BABEE-4CDD-CC1E-5F96-3A898AAE5E14";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 4;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0029122042469680309;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.011648816987872124;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "nRigid3";
	rename -uid "C863C601-4A23-7887-6345-D49FDEFEA15D";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape3" -p "nRigid3";
	rename -uid "3E1008BF-4825-AC28-98EF-D1B534498F4A";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 4;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0099999997764825821;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.012219884432852268;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "pPlane4";
	rename -uid "5D70CC4D-4985-C7E2-64D1-379D073FC2D3";
	setAttr ".t" -type "double3" 0.42433222830016104 -0.24198192907688196 -0.1942156216809458 ;
	setAttr ".r" -type "double3" 14.657778717567226 1.9878466759146985e-16 13.033685693264768 ;
	setAttr ".s" -type "double3" 1 1 0.20958261531105363 ;
	setAttr ".rp" -type "double3" 0 0 0.089424315721717385 ;
	setAttr ".rpt" -type "double3" 1.700029006457271e-16 9.7144514654701197e-17 0 ;
	setAttr ".sp" -type "double3" 0 0 0.42667811730949845 ;
	setAttr ".spt" -type "double3" 0 0 -0.33725380158778412 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	rename -uid "859D0DC2-4A26-9FEA-0229-7CB1C2DC34B7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane5";
	rename -uid "898BA13D-453C-25AC-0889-D580022E2BC5";
	setAttr ".t" -type "double3" -0.1594836440084656 -0.55896064937723322 -0.19421562552452082 ;
	setAttr ".r" -type "double3" 41.791436937582489 -7.9513867036587899e-16 -15.671901803270842 ;
	setAttr ".s" -type "double3" 1 1 0.20958261531105363 ;
	setAttr ".rp" -type "double3" 0 0 0.10479130595922465 ;
	setAttr ".sp" -type "double3" 0 0 0.49999999190628525 ;
	setAttr ".spt" -type "double3" 0 0 -0.39520868594706127 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	rename -uid "A90BC80C-4C0D-21C1-F713-D880A38DBA84";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane6";
	rename -uid "D1FDC3C4-46B2-708C-CB09-58B6BEAE2E17";
	setAttr ".t" -type "double3" -0.1594836440084656 -0.55896064937723322 0.19421561807393911 ;
	setAttr ".r" -type "double3" -25.366190461239217 -1.1927080055488194e-15 -15.671901803270858 ;
	setAttr ".s" -type "double3" 1 1 0.20958261531105363 ;
	setAttr ".rp" -type "double3" 0 0 -0.089424312114714438 ;
	setAttr ".sp" -type "double3" 0 0 -0.42667810009906892 ;
	setAttr ".spt" -type "double3" 0 0 0.33725378798435357 ;
createNode mesh -n "pPlaneShape6" -p "pPlane6";
	rename -uid "AB2301A5-428C-36EC-B675-23B34EABBA99";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "nRigid4";
	rename -uid "6D71A61C-4F80-ECA5-6E31-87AE08D74A79";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape4" -p "nRigid4";
	rename -uid "C5FF1840-4C54-B28A-A91E-E68D1D93D3B5";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 4;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0033038833644241095;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.013215533457696438;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "nRigid5";
	rename -uid "198D3FB4-4D93-0B30-7133-4EB52159C86D";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape5" -p "nRigid5";
	rename -uid "66E5D3A5-4613-CD52-A053-40891F531918";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 4;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0033524911850690842;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.013409964740276337;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "nRigid6";
	rename -uid "BDD2003E-4ED9-A02E-41A0-40B4258A6937";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape6" -p "nRigid6";
	rename -uid "6A1B92EA-46CB-A485-DAE8-59B9CF2CA048";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 4;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0030873268842697144;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.012349307537078857;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "pPlane7";
	rename -uid "562534E0-420C-6F20-4205-7E803EBB3706";
	setAttr ".t" -type "double3" 0 0.03451040858766366 -0.19421561807394089 ;
	setAttr ".r" -type "double3" 39.357499015570475 0 -12.196253504741517 ;
	setAttr ".s" -type "double3" 1 1 0.20958261531105363 ;
	setAttr ".rp" -type "double3" 0 0 0.10479130595922528 ;
	setAttr ".sp" -type "double3" 0 0 0.49999999190628663 ;
	setAttr ".spt" -type "double3" 0 0 -0.3952086859470621 ;
createNode mesh -n "pPlaneShape7" -p "pPlane7";
	rename -uid "713D584D-43D8-9509-E221-BFAAC7EEF0EF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane8";
	rename -uid "B26A4E80-496B-8F0D-6879-F6A3E3D39198";
	setAttr ".t" -type "double3" 0.0012760758399962269 0.040414401509650366 0.20834569133775288 ;
	setAttr ".r" -type "double3" -23.145722895034176 -3.9756933518293969e-16 -12.196253504741524 ;
	setAttr ".s" -type "double3" 1 1 0.20958261531105363 ;
	setAttr ".rp" -type "double3" 0.49999999744284562 -6.2560472011141677e-09 -0.10479130617901543 ;
	setAttr ".rpt" -type "double3" -0.012561229294423293 -0.11153442916605395 0.0012369208004872206 ;
	setAttr ".sp" -type "double3" 0.49999999744284562 -6.2560472011141677e-09 -0.49999999295499087 ;
	setAttr ".spt" -type "double3" 0 0 0.39520868677597543 ;
createNode mesh -n "pPlaneShape8" -p "pPlane8";
	rename -uid "DEE3129E-4FC1-F0D8-A301-30A8F60A2D19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "nRigid7";
	rename -uid "9A518641-4D8F-5CE5-E9CC-8999FDF74990";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape7" -p "nRigid7";
	rename -uid "ED5A75D5-4229-F178-3614-ED85A4D05967";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 4;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0031125557143241167;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.012450222857296467;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "nRigid8";
	rename -uid "2EE5B9E5-4D48-6960-D771-76BC743BAA52";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape8" -p "nRigid8";
	rename -uid "33B9282E-4142-A716-0057-7CB38A3D7376";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 4;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.003178521990776062;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.012714087963104248;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "directionalLight1";
	rename -uid "425DD6BC-41E6-7868-2AC3-05859783B072";
	setAttr ".t" -type "double3" 0.5894990434738463 0.42851972577900121 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -35.063096219662576 36.500335679119004 -6.4258888252706425 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "391C7E6D-4FDE-344D-3B47-1CA949C92877";
	setAttr -k off ".v";
	setAttr ".in" 0.84415584802627563;
	setAttr ".ai_exposure" 1.3157894611358643;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 6106.91845703125;
createNode transform -n "pPlane9";
	rename -uid "83DD03FF-4B08-5C11-C687-C9A2FE3B3652";
	setAttr ".rp" -type "double3" 0.81165193916251355 -0.90269189602315059 2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0.81165193916251355 -0.90269189602315059 2.2204460492503131e-16 ;
createNode mesh -n "pPlaneShape9" -p "pPlane9";
	rename -uid "0B7E4387-4B6F-85C3-59BB-419BAD9D3D68";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[210:219]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 10 "e[1]" "e[22]" "e[43]" "e[64]" "e[85]" "e[106]" "e[127]" "e[148]" "e[169]" "e[190]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "e[20]" "e[41]" "e[62]" "e[83]" "e[104]" "e[125]" "e[146]" "e[167]" "e[188]" "e[209]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 28 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[106]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167]" "e[169]" "e[188]" "e[190]" "e[209:219]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 282 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.80000001 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001 0.40000001 0.40000001
		 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.69999999 0.40000001 0.80000001
		 0.40000001 0.90000004 0.40000001 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.80000001
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.69999999 0.2 0.69999999
		 0.30000001 0.69999999 0.40000001 0.69999999 0.5 0.69999999 0.60000002 0.69999999
		 0.69999999 0.69999999 0.80000001 0.69999999 0.90000004 0.69999999 1 0.69999999 0
		 0.80000001 0.1 0.80000001 0.2 0.80000001 0.30000001 0.80000001 0.40000001 0.80000001
		 0.5 0.80000001 0.60000002 0.80000001 0.69999999 0.80000001 0.80000001 0.80000001
		 0.90000004 0.80000001 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000001 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1 0 0 0.1 0 0.1 0.1 0 0.1 0.2 0 0.2 0.1 0.30000001 0 0.30000001 0.1 0.40000001
		 0 0.40000001 0.1 0.5 0 0.5 0.1 0.60000002 0 0.60000002 0.1 0.69999999 0 0.69999999
		 0.1 0.80000001 0 0.80000001 0.1 0.90000004 0 0.90000004 0.1 1 0 1 0.1 0.1 0.2 0 0.2
		 0.2 0.2 0.30000001 0.2 0.40000001 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001
		 0.2 0.90000004 0.2 1 0.2 0.1 0.30000001 0 0.30000001 0.2 0.30000001 0.30000001 0.30000001
		 0.40000001 0.30000001 0.5 0.30000001 0.60000002 0.30000001 0.69999999 0.30000001
		 0.80000001 0.30000001 0.90000004 0.30000001 1 0.30000001 0.1 0.40000001 0 0.40000001
		 0.2 0.40000001 0.30000001 0.40000001 0.40000001 0.40000001 0.5 0.40000001 0.60000002
		 0.40000001 0.69999999 0.40000001 0.80000001 0.40000001 0.90000004 0.40000001 1 0.40000001
		 0.1 0.5 0 0.5 0.2 0.5 0.30000001 0.5 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999
		 0.5 0.80000001 0.5 0.90000004 0.5 1 0.5 0.1 0.60000002 0 0.60000002 0.2 0.60000002
		 0.30000001 0.60000002 0.40000001 0.60000002 0.5 0.60000002 0.60000002 0.60000002
		 0.69999999 0.60000002 0.80000001 0.60000002 0.90000004 0.60000002 1 0.60000002 0.1
		 0.69999999 0 0.69999999 0.2 0.69999999 0.30000001 0.69999999 0.40000001 0.69999999
		 0.5 0.69999999 0.60000002 0.69999999 0.69999999 0.69999999 0.80000001 0.69999999
		 0.90000004 0.69999999 1 0.69999999 0.1 0.80000001 0 0.80000001 0.2 0.80000001 0.30000001
		 0.80000001 0.40000001 0.80000001 0.5 0.80000001 0.60000002 0.80000001 0.69999999
		 0.80000001 0.80000001 0.80000001 0.90000004 0.80000001 1 0.80000001 0.1 0.90000004
		 0 0.90000004 0.2 0.90000004 0.30000001 0.90000004 0.40000001 0.90000004 0.5 0.90000004
		 0.60000002 0.90000004 0.69999999 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004
		 1 0.90000004 0.1 1 0 1 0.2 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999
		 1 0.80000001 1 0.90000004 1 1 1 0 0 0.1 0 0 0.1 0.2 0 0.30000001 0 0.40000001 0 0.5
		 0 0.60000002 0;
	setAttr ".uvst[0].uvsp[250:281]" 0.69999999 0 0.80000001 0 0.90000004 0 1 0
		 1 0.1 0 0.2 1 0.2 0 0.30000001 1 0.30000001 0 0.40000001 1 0.40000001 0 0.5 1 0.5
		 0 0.60000002 1 0.60000002 0 0.69999999 1 0.69999999 0 0.80000001 1 0.80000001 0 0.90000004
		 1 0.90000004 0.1 1 0 1 0.2 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999
		 1 0.80000001 1 0.90000004 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 242 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16;
	setAttr ".pt[166:241]" 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 
		-0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 
		2.220446e-16 0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16 
		0.81165195 -0.9026919 2.220446e-16 0.81165195 -0.9026919 2.220446e-16;
	setAttr -s 242 ".vt";
	setAttr ".vt[0:165]"  -0.54735655 0.088962555 0.54735655 -0.43788522 0.088962555 0.54735655
		 -0.32841393 0.088962555 0.54735655 -0.21894258 0.088962555 0.54735655 -0.10947132 0.088962555 0.54735655
		 0 0.088962555 0.54735655 0.10947132 0.088962555 0.54735655 0.21894264 0.088962555 0.54735655
		 0.32841396 0.088962555 0.54735655 0.43788528 0.088962555 0.54735655 0.54735661 0.088962555 0.54735655
		 -0.54735655 0.088962555 0.43788522 -0.40000001 0 0.40000001 -0.30000001 0 0.40000001
		 -0.19999999 0 0.40000001 -0.10000002 0 0.40000001 0 0 0.40000001 0.10000002 0 0.40000001
		 0.20000005 0 0.40000001 0.29999995 0 0.40000001 0.4000001 0 0.40000001 0.54735661 0.088962555 0.43788522
		 -0.54735655 0.088962555 0.32841393 -0.40000001 0 0.30000001 -0.30000001 0 0.30000001
		 -0.19999999 0 0.30000001 -0.10000002 0 0.30000001 0 0 0.30000001 0.10000002 0 0.30000001
		 0.20000005 0 0.30000001 0.29999995 0 0.30000001 0.4000001 0 0.30000001 0.54735661 0.088962555 0.32841393
		 -0.54735655 0.088962555 0.2189426 -0.40000001 0 0.19999999 -0.30000001 0 0.19999999
		 -0.19999999 0 0.19999999 -0.10000002 0 0.19999999 0 0 0.19999999 0.10000002 0 0.19999999
		 0.20000005 0 0.19999999 0.29999995 0 0.19999999 0.4000001 0 0.19999999 0.54735661 0.088962555 0.2189426
		 -0.54735655 0.088962555 0.1094713 -0.40000001 0 0.099999994 -0.30000001 0 0.099999994
		 -0.19999999 0 0.099999994 -0.10000002 0 0.099999994 0 0 0.099999994 0.10000002 0 0.099999994
		 0.20000005 0 0.099999994 0.29999995 0 0.099999994 0.4000001 0 0.099999994 0.54735661 0.088962555 0.1094713
		 -0.54735655 0.088962555 0 -0.40000001 0 0 -0.30000001 0 0 -0.19999999 0 0 -0.10000002 0 0
		 0 0 0 0.10000002 0 0 0.20000005 0 0 0.29999995 0 0 0.4000001 0 0 0.54735661 0.088962555 0
		 -0.54735655 0.088962555 -0.10947134 -0.40000001 0 -0.10000002 -0.30000001 0 -0.10000002
		 -0.19999999 0 -0.10000002 -0.10000002 0 -0.10000002 0 0 -0.10000002 0.10000002 0 -0.10000002
		 0.20000005 0 -0.10000002 0.29999995 0 -0.10000002 0.4000001 0 -0.10000002 0.54735661 0.088962555 -0.10947134
		 -0.54735655 0.088962555 -0.2189426 -0.40000001 0 -0.19999999 -0.30000001 0 -0.19999999
		 -0.19999999 0 -0.19999999 -0.10000002 0 -0.19999999 0 0 -0.19999999 0.10000002 0 -0.19999999
		 0.20000005 0 -0.19999999 0.29999995 0 -0.19999999 0.4000001 0 -0.19999999 0.54735661 0.088962555 -0.2189426
		 -0.54735655 0.088962555 -0.32841393 -0.40000001 0 -0.30000001 -0.30000001 0 -0.30000001
		 -0.19999999 0 -0.30000001 -0.10000002 0 -0.30000001 0 0 -0.30000001 0.10000002 0 -0.30000001
		 0.20000005 0 -0.30000001 0.29999995 0 -0.30000001 0.4000001 0 -0.30000001 0.54735661 0.088962555 -0.32841393
		 -0.54735655 0.088962555 -0.43788525 -0.40000001 0 -0.40000004 -0.30000001 0 -0.40000004
		 -0.19999999 0 -0.40000004 -0.10000002 0 -0.40000004 0 0 -0.40000004 0.10000002 0 -0.40000004
		 0.20000005 0 -0.40000004 0.29999995 0 -0.40000004 0.4000001 0 -0.40000004 0.54735661 0.088962555 -0.43788525
		 -0.54735655 0.088962555 -0.54735655 -0.43788522 0.088962555 -0.54735655 -0.32841393 0.088962555 -0.54735655
		 -0.21894258 0.088962555 -0.54735655 -0.10947132 0.088962555 -0.54735655 0 0.088962555 -0.54735655
		 0.10947132 0.088962555 -0.54735655 0.21894264 0.088962555 -0.54735655 0.32841396 0.088962555 -0.54735655
		 0.43788528 0.088962555 -0.54735655 0.54735661 0.088962555 -0.54735655 -0.540416 0.11195511 0.54041594
		 -0.43429062 0.11195511 0.53707004 -0.39449829 0.025150955 0.39449829 -0.53707004 0.11195511 0.43429062
		 -0.32841393 0.11036468 0.53443563 -0.30000001 0.025000036 0.3930386 -0.21894258 0.11036468 0.53443557
		 -0.19999999 0.025000036 0.3930386 -0.10947132 0.11036462 0.53443563 -0.10000002 0.025000036 0.3930386
		 0 0.11036462 0.53443563 0 0.025000036 0.3930386 0.10947132 0.11036462 0.53443563
		 0.10000002 0.025000036 0.3930386 0.21894264 0.11036462 0.53443563 0.20000005 0.025000036 0.3930386
		 0.32841396 0.11036468 0.53443557 0.29999995 0.025000036 0.3930386 0.43429065 0.11195511 0.53706998
		 0.39449835 0.025150955 0.39449829 0.540416 0.11195511 0.540416 0.53707004 0.11195511 0.43429062
		 -0.3930386 0.025000036 0.30000001 -0.53443563 0.11036462 0.32841393 -0.30000001 0.025000036 0.30000001
		 -0.19999999 0.025000036 0.30000001 -0.10000002 0.025000036 0.30000001 0 0.025000036 0.30000001
		 0.10000002 0.025000036 0.30000001 0.20000005 0.025000036 0.30000001 0.29999995 0.025000036 0.30000001
		 0.39303863 0.025000036 0.30000001 0.53443563 0.11036468 0.32841393 -0.3930386 0.025000036 0.19999999
		 -0.53443563 0.11036462 0.2189426 -0.30000001 0.025000036 0.19999999 -0.19999999 0.025000036 0.19999999
		 -0.10000002 0.025000036 0.19999999 0 0.025000036 0.19999999 0.10000002 0.025000036 0.19999999
		 0.20000005 0.025000036 0.19999999 0.29999995 0.025000036 0.19999999 0.39303863 0.025000036 0.19999999
		 0.53443563 0.11036474 0.2189426 -0.3930386 0.025000036 0.099999994;
	setAttr ".vt[166:241]" -0.53443563 0.11036468 0.1094713 -0.30000001 0.025000036 0.099999994
		 -0.19999999 0.025000036 0.099999994 -0.10000002 0.025000036 0.099999994 0 0.025000036 0.099999994
		 0.10000002 0.025000036 0.099999994 0.20000005 0.025000036 0.099999994 0.29999995 0.025000036 0.099999994
		 0.39303863 0.025000036 0.099999994 0.53443563 0.11036479 0.1094713 -0.3930386 0.025000036 0
		 -0.53443557 0.11036474 0 -0.30000001 0.025000036 0 -0.19999999 0.025000036 0 -0.10000002 0.025000036 0
		 0 0.025000036 0 0.10000002 0.025000036 0 0.20000005 0.025000036 0 0.29999995 0.025000036 0
		 0.39303863 0.025000036 0 0.53443563 0.11036474 0 -0.3930386 0.025000036 -0.10000002
		 -0.53443557 0.11036474 -0.10947134 -0.30000001 0.025000036 -0.10000002 -0.19999999 0.025000036 -0.10000002
		 -0.10000002 0.025000036 -0.10000002 0 0.025000036 -0.10000002 0.10000002 0.025000036 -0.10000002
		 0.20000005 0.025000036 -0.10000002 0.29999995 0.025000036 -0.10000002 0.39303863 0.025000036 -0.10000002
		 0.53443563 0.11036474 -0.10947134 -0.3930386 0.025000036 -0.19999999 -0.53443557 0.11036474 -0.2189426
		 -0.30000001 0.025000036 -0.19999999 -0.19999999 0.025000036 -0.19999999 -0.10000002 0.025000036 -0.19999999
		 0 0.025000036 -0.19999999 0.10000002 0.025000036 -0.19999999 0.20000005 0.025000036 -0.19999999
		 0.29999995 0.025000036 -0.19999999 0.39303863 0.025000036 -0.19999999 0.53443563 0.11036468 -0.2189426
		 -0.3930386 0.025000036 -0.30000001 -0.53443557 0.11036474 -0.32841393 -0.30000001 0.025000036 -0.30000001
		 -0.19999999 0.025000036 -0.30000001 -0.10000002 0.025000036 -0.30000001 0 0.025000036 -0.30000001
		 0.10000002 0.025000036 -0.30000001 0.20000005 0.025000036 -0.30000001 0.29999995 0.025000036 -0.30000001
		 0.39303863 0.025000036 -0.30000001 0.53443563 0.11036462 -0.32841393 -0.39449829 0.025150955 -0.39449835
		 -0.53706998 0.11195511 -0.43429065 -0.30000001 0.025000036 -0.39303863 -0.19999999 0.025000036 -0.39303863
		 -0.10000002 0.025000036 -0.39303863 0 0.025000036 -0.39303863 0.10000002 0.025000036 -0.39303863
		 0.20000005 0.025000036 -0.39303863 0.29999995 0.025000036 -0.39303863 0.39449847 0.025150955 -0.39449832
		 0.53707004 0.11195511 -0.43429065 -0.43429062 0.11195511 -0.53707004 -0.540416 0.11195511 -0.540416
		 -0.32841393 0.11036462 -0.53443563 -0.21894258 0.11036468 -0.53443563 -0.10947132 0.11036462 -0.53443563
		 0 0.11036462 -0.53443563 0.10947132 0.11036462 -0.53443563 0.21894264 0.11036462 -0.53443563
		 0.32841396 0.11036468 -0.53443557 0.43429065 0.11195511 -0.53706998 0.540416 0.11195511 -0.540416;
	setAttr -s 480 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:331]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 0
		 111 112 0 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0
		 0 121 0 1 122 1 121 122 0 122 123 1 11 124 1 124 123 1 121 124 0 2 125 1 122 125 0
		 125 126 1 123 126 1 3 127 1 125 127 0 127 128 1 126 128 1 4 129 1 127 129 0 129 130 1
		 128 130 1 5 131 1 129 131 0 131 132 1 130 132 1 6 133 1 131 133 0 133 134 1 132 134 1
		 7 135 1 133 135 0 135 136 1 134 136 1 8 137 1 135 137 0 137 138 1 136 138 1 9 139 1
		 137 139 0 139 140 1 138 140 1 10 141 0 139 141 0 21 142 1 141 142 0 140 142 1 123 143 1
		 22 144 1 144 143 1 124 144 0 126 145 1 143 145 1 128 146 1 145 146 1 130 147 1 146 147 1
		 132 148 1 147 148 1 134 149 1 148 149 1 136 150 1 149 150 1 138 151 1 150 151 1 140 152 1
		 151 152 1 32 153 1 142 153 0 152 153 1 143 154 1 33 155 1 155 154 1 144 155 0 145 156 1
		 154 156 1 146 157 1 156 157 1 147 158 1 157 158 1 148 159 1 158 159 1 149 160 1 159 160 1
		 150 161 1 160 161 1 151 162 1 161 162 1 152 163 1 162 163 1 43 164 1 153 164 0 163 164 1
		 154 165 1 44 166 1 166 165 1 155 166 0 156 167 1 165 167 1 157 168 1 167 168 1 158 169 1
		 168 169 1 159 170 1 169 170 1 160 171 1 170 171 1 161 172 1 171 172 1 162 173 1 172 173 1
		 163 174 1 173 174 1 54 175 1 164 175 0;
	setAttr ".ed[332:479]" 174 175 1 165 176 1 55 177 1 177 176 1 166 177 0 167 178 1
		 176 178 1 168 179 1 178 179 1 169 180 1 179 180 1 170 181 1 180 181 1 171 182 1 181 182 1
		 172 183 1 182 183 1 173 184 1 183 184 1 174 185 1 184 185 1 65 186 1 175 186 0 185 186 1
		 176 187 1 66 188 1 188 187 1 177 188 0 178 189 1 187 189 1 179 190 1 189 190 1 180 191 1
		 190 191 1 181 192 1 191 192 1 182 193 1 192 193 1 183 194 1 193 194 1 184 195 1 194 195 1
		 185 196 1 195 196 1 76 197 1 186 197 0 196 197 1 187 198 1 77 199 1 199 198 1 188 199 0
		 189 200 1 198 200 1 190 201 1 200 201 1 191 202 1 201 202 1 192 203 1 202 203 1 193 204 1
		 203 204 1 194 205 1 204 205 1 195 206 1 205 206 1 196 207 1 206 207 1 87 208 1 197 208 0
		 207 208 1 198 209 1 88 210 1 210 209 1 199 210 0 200 211 1 209 211 1 201 212 1 211 212 1
		 202 213 1 212 213 1 203 214 1 213 214 1 204 215 1 214 215 1 205 216 1 215 216 1 206 217 1
		 216 217 1 207 218 1 217 218 1 98 219 1 208 219 0 218 219 1 209 220 1 99 221 1 221 220 1
		 210 221 0 211 222 1 220 222 1 212 223 1 222 223 1 213 224 1 223 224 1 214 225 1 224 225 1
		 215 226 1 225 226 1 216 227 1 226 227 1 217 228 1 227 228 1 218 229 1 228 229 1 109 230 1
		 219 230 0 229 230 1 111 231 1 220 231 1 110 232 0 232 231 0 221 232 0 112 233 1 222 233 1
		 231 233 0 113 234 1 223 234 1 233 234 0 114 235 1 224 235 1 234 235 0 115 236 1 225 236 1
		 235 236 0 116 237 1 226 237 1 236 237 0 117 238 1 227 238 1 237 238 0 118 239 1 228 239 1
		 238 239 0 119 240 1 229 240 1 239 240 0 120 241 0 230 241 0 240 241 0;
	setAttr -s 240 -ch 960 ".fc[0:239]" -type "polyFaces" 
		f 4 222 223 -226 -227
		mu 0 4 242 243 12 244
		f 4 228 229 -231 -224
		mu 0 4 243 245 13 12
		f 4 232 233 -235 -230
		mu 0 4 245 246 14 13
		f 4 236 237 -239 -234
		mu 0 4 246 247 15 14
		f 4 240 241 -243 -238
		mu 0 4 247 248 16 15
		f 4 244 245 -247 -242
		mu 0 4 248 249 17 16
		f 4 248 249 -251 -246
		mu 0 4 249 250 18 17
		f 4 252 253 -255 -250
		mu 0 4 250 251 19 18
		f 4 256 257 -259 -254
		mu 0 4 251 252 20 19
		f 4 260 262 -264 -258
		mu 0 4 252 253 254 20
		f 4 225 264 -267 -268
		mu 0 4 244 12 23 255
		f 4 230 268 -270 -265
		mu 0 4 12 13 24 23
		f 4 234 270 -272 -269
		mu 0 4 13 14 25 24
		f 4 238 272 -274 -271
		mu 0 4 14 15 26 25
		f 4 242 274 -276 -273
		mu 0 4 15 16 27 26
		f 4 246 276 -278 -275
		mu 0 4 16 17 28 27
		f 4 250 278 -280 -277
		mu 0 4 17 18 29 28
		f 4 254 280 -282 -279
		mu 0 4 18 19 30 29
		f 4 258 282 -284 -281
		mu 0 4 19 20 31 30
		f 4 263 285 -287 -283
		mu 0 4 20 254 256 31
		f 4 266 287 -290 -291
		mu 0 4 255 23 34 257
		f 4 269 291 -293 -288
		mu 0 4 23 24 35 34
		f 4 271 293 -295 -292
		mu 0 4 24 25 36 35
		f 4 273 295 -297 -294
		mu 0 4 25 26 37 36
		f 4 275 297 -299 -296
		mu 0 4 26 27 38 37
		f 4 277 299 -301 -298
		mu 0 4 27 28 39 38
		f 4 279 301 -303 -300
		mu 0 4 28 29 40 39
		f 4 281 303 -305 -302
		mu 0 4 29 30 41 40
		f 4 283 305 -307 -304
		mu 0 4 30 31 42 41
		f 4 286 308 -310 -306
		mu 0 4 31 256 258 42
		f 4 289 310 -313 -314
		mu 0 4 257 34 45 259
		f 4 292 314 -316 -311
		mu 0 4 34 35 46 45
		f 4 294 316 -318 -315
		mu 0 4 35 36 47 46
		f 4 296 318 -320 -317
		mu 0 4 36 37 48 47
		f 4 298 320 -322 -319
		mu 0 4 37 38 49 48
		f 4 300 322 -324 -321
		mu 0 4 38 39 50 49
		f 4 302 324 -326 -323
		mu 0 4 39 40 51 50
		f 4 304 326 -328 -325
		mu 0 4 40 41 52 51
		f 4 306 328 -330 -327
		mu 0 4 41 42 53 52
		f 4 309 331 -333 -329
		mu 0 4 42 258 260 53
		f 4 312 333 -336 -337
		mu 0 4 259 45 56 261
		f 4 315 337 -339 -334
		mu 0 4 45 46 57 56
		f 4 317 339 -341 -338
		mu 0 4 46 47 58 57
		f 4 319 341 -343 -340
		mu 0 4 47 48 59 58
		f 4 321 343 -345 -342
		mu 0 4 48 49 60 59
		f 4 323 345 -347 -344
		mu 0 4 49 50 61 60
		f 4 325 347 -349 -346
		mu 0 4 50 51 62 61
		f 4 327 349 -351 -348
		mu 0 4 51 52 63 62
		f 4 329 351 -353 -350
		mu 0 4 52 53 64 63
		f 4 332 354 -356 -352
		mu 0 4 53 260 262 64
		f 4 335 356 -359 -360
		mu 0 4 261 56 67 263
		f 4 338 360 -362 -357
		mu 0 4 56 57 68 67
		f 4 340 362 -364 -361
		mu 0 4 57 58 69 68
		f 4 342 364 -366 -363
		mu 0 4 58 59 70 69
		f 4 344 366 -368 -365
		mu 0 4 59 60 71 70
		f 4 346 368 -370 -367
		mu 0 4 60 61 72 71
		f 4 348 370 -372 -369
		mu 0 4 61 62 73 72
		f 4 350 372 -374 -371
		mu 0 4 62 63 74 73
		f 4 352 374 -376 -373
		mu 0 4 63 64 75 74
		f 4 355 377 -379 -375
		mu 0 4 64 262 264 75
		f 4 358 379 -382 -383
		mu 0 4 263 67 78 265
		f 4 361 383 -385 -380
		mu 0 4 67 68 79 78
		f 4 363 385 -387 -384
		mu 0 4 68 69 80 79
		f 4 365 387 -389 -386
		mu 0 4 69 70 81 80
		f 4 367 389 -391 -388
		mu 0 4 70 71 82 81
		f 4 369 391 -393 -390
		mu 0 4 71 72 83 82
		f 4 371 393 -395 -392
		mu 0 4 72 73 84 83
		f 4 373 395 -397 -394
		mu 0 4 73 74 85 84
		f 4 375 397 -399 -396
		mu 0 4 74 75 86 85
		f 4 378 400 -402 -398
		mu 0 4 75 264 266 86
		f 4 381 402 -405 -406
		mu 0 4 265 78 89 267
		f 4 384 406 -408 -403
		mu 0 4 78 79 90 89
		f 4 386 408 -410 -407
		mu 0 4 79 80 91 90
		f 4 388 410 -412 -409
		mu 0 4 80 81 92 91
		f 4 390 412 -414 -411
		mu 0 4 81 82 93 92
		f 4 392 414 -416 -413
		mu 0 4 82 83 94 93
		f 4 394 416 -418 -415
		mu 0 4 83 84 95 94
		f 4 396 418 -420 -417
		mu 0 4 84 85 96 95
		f 4 398 420 -422 -419
		mu 0 4 85 86 97 96
		f 4 401 423 -425 -421
		mu 0 4 86 266 268 97
		f 4 404 425 -428 -429
		mu 0 4 267 89 100 269
		f 4 407 429 -431 -426
		mu 0 4 89 90 101 100
		f 4 409 431 -433 -430
		mu 0 4 90 91 102 101
		f 4 411 433 -435 -432
		mu 0 4 91 92 103 102
		f 4 413 435 -437 -434
		mu 0 4 92 93 104 103
		f 4 415 437 -439 -436
		mu 0 4 93 94 105 104
		f 4 417 439 -441 -438
		mu 0 4 94 95 106 105
		f 4 419 441 -443 -440
		mu 0 4 95 96 107 106
		f 4 421 443 -445 -442
		mu 0 4 96 97 108 107
		f 4 424 446 -448 -444
		mu 0 4 97 268 270 108
		f 4 427 449 -452 -453
		mu 0 4 269 100 271 272
		f 4 430 454 -456 -450
		mu 0 4 100 101 273 271
		f 4 432 457 -459 -455
		mu 0 4 101 102 274 273
		f 4 434 460 -462 -458
		mu 0 4 102 103 275 274
		f 4 436 463 -465 -461
		mu 0 4 103 104 276 275
		f 4 438 466 -468 -464
		mu 0 4 104 105 277 276
		f 4 440 469 -471 -467
		mu 0 4 105 106 278 277
		f 4 442 472 -474 -470
		mu 0 4 106 107 279 278
		f 4 444 475 -477 -473
		mu 0 4 107 108 280 279
		f 4 447 478 -480 -476
		mu 0 4 108 270 281 280
		f 4 1 21 -4 -1
		mu 0 4 121 124 123 122
		f 4 3 23 -6 -3
		mu 0 4 122 123 126 125
		f 4 5 25 -8 -5
		mu 0 4 125 126 128 127
		f 4 7 27 -10 -7
		mu 0 4 127 128 130 129
		f 4 9 29 -12 -9
		mu 0 4 129 130 132 131
		f 4 11 31 -14 -11
		mu 0 4 131 132 134 133
		f 4 13 33 -16 -13
		mu 0 4 133 134 136 135
		f 4 15 35 -18 -15
		mu 0 4 135 136 138 137
		f 4 17 37 -20 -17
		mu 0 4 137 138 140 139
		f 4 19 39 -21 -19
		mu 0 4 139 140 142 141
		f 4 22 42 -25 -22
		mu 0 4 124 144 143 123
		f 4 24 44 -27 -24
		mu 0 4 123 143 145 126
		f 4 26 46 -29 -26
		mu 0 4 126 145 146 128
		f 4 28 48 -31 -28
		mu 0 4 128 146 147 130
		f 4 30 50 -33 -30
		mu 0 4 130 147 148 132
		f 4 32 52 -35 -32
		mu 0 4 132 148 149 134
		f 4 34 54 -37 -34
		mu 0 4 134 149 150 136
		f 4 36 56 -39 -36
		mu 0 4 136 150 151 138
		f 4 38 58 -41 -38
		mu 0 4 138 151 152 140
		f 4 40 60 -42 -40
		mu 0 4 140 152 153 142
		f 4 43 63 -46 -43
		mu 0 4 144 155 154 143
		f 4 45 65 -48 -45
		mu 0 4 143 154 156 145
		f 4 47 67 -50 -47
		mu 0 4 145 156 157 146
		f 4 49 69 -52 -49
		mu 0 4 146 157 158 147
		f 4 51 71 -54 -51
		mu 0 4 147 158 159 148
		f 4 53 73 -56 -53
		mu 0 4 148 159 160 149
		f 4 55 75 -58 -55
		mu 0 4 149 160 161 150
		f 4 57 77 -60 -57
		mu 0 4 150 161 162 151
		f 4 59 79 -62 -59
		mu 0 4 151 162 163 152
		f 4 61 81 -63 -61
		mu 0 4 152 163 164 153
		f 4 64 84 -67 -64
		mu 0 4 155 166 165 154
		f 4 66 86 -69 -66
		mu 0 4 154 165 167 156
		f 4 68 88 -71 -68
		mu 0 4 156 167 168 157
		f 4 70 90 -73 -70
		mu 0 4 157 168 169 158
		f 4 72 92 -75 -72
		mu 0 4 158 169 170 159
		f 4 74 94 -77 -74
		mu 0 4 159 170 171 160
		f 4 76 96 -79 -76
		mu 0 4 160 171 172 161
		f 4 78 98 -81 -78
		mu 0 4 161 172 173 162
		f 4 80 100 -83 -80
		mu 0 4 162 173 174 163
		f 4 82 102 -84 -82
		mu 0 4 163 174 175 164
		f 4 85 105 -88 -85
		mu 0 4 166 177 176 165
		f 4 87 107 -90 -87
		mu 0 4 165 176 178 167
		f 4 89 109 -92 -89
		mu 0 4 167 178 179 168
		f 4 91 111 -94 -91
		mu 0 4 168 179 180 169
		f 4 93 113 -96 -93
		mu 0 4 169 180 181 170
		f 4 95 115 -98 -95
		mu 0 4 170 181 182 171
		f 4 97 117 -100 -97
		mu 0 4 171 182 183 172
		f 4 99 119 -102 -99
		mu 0 4 172 183 184 173
		f 4 101 121 -104 -101
		mu 0 4 173 184 185 174
		f 4 103 123 -105 -103
		mu 0 4 174 185 186 175
		f 4 106 126 -109 -106
		mu 0 4 177 188 187 176
		f 4 108 128 -111 -108
		mu 0 4 176 187 189 178
		f 4 110 130 -113 -110
		mu 0 4 178 189 190 179
		f 4 112 132 -115 -112
		mu 0 4 179 190 191 180
		f 4 114 134 -117 -114
		mu 0 4 180 191 192 181
		f 4 116 136 -119 -116
		mu 0 4 181 192 193 182
		f 4 118 138 -121 -118
		mu 0 4 182 193 194 183
		f 4 120 140 -123 -120
		mu 0 4 183 194 195 184
		f 4 122 142 -125 -122
		mu 0 4 184 195 196 185
		f 4 124 144 -126 -124
		mu 0 4 185 196 197 186
		f 4 127 147 -130 -127
		mu 0 4 188 199 198 187
		f 4 129 149 -132 -129
		mu 0 4 187 198 200 189
		f 4 131 151 -134 -131
		mu 0 4 189 200 201 190
		f 4 133 153 -136 -133
		mu 0 4 190 201 202 191
		f 4 135 155 -138 -135
		mu 0 4 191 202 203 192
		f 4 137 157 -140 -137
		mu 0 4 192 203 204 193
		f 4 139 159 -142 -139
		mu 0 4 193 204 205 194
		f 4 141 161 -144 -141
		mu 0 4 194 205 206 195
		f 4 143 163 -146 -143
		mu 0 4 195 206 207 196
		f 4 145 165 -147 -145
		mu 0 4 196 207 208 197
		f 4 148 168 -151 -148
		mu 0 4 199 210 209 198
		f 4 150 170 -153 -150
		mu 0 4 198 209 211 200
		f 4 152 172 -155 -152
		mu 0 4 200 211 212 201
		f 4 154 174 -157 -154
		mu 0 4 201 212 213 202
		f 4 156 176 -159 -156
		mu 0 4 202 213 214 203
		f 4 158 178 -161 -158
		mu 0 4 203 214 215 204
		f 4 160 180 -163 -160
		mu 0 4 204 215 216 205
		f 4 162 182 -165 -162
		mu 0 4 205 216 217 206
		f 4 164 184 -167 -164
		mu 0 4 206 217 218 207
		f 4 166 186 -168 -166
		mu 0 4 207 218 219 208
		f 4 169 189 -172 -169
		mu 0 4 210 221 220 209
		f 4 171 191 -174 -171
		mu 0 4 209 220 222 211
		f 4 173 193 -176 -173
		mu 0 4 211 222 223 212
		f 4 175 195 -178 -175
		mu 0 4 212 223 224 213
		f 4 177 197 -180 -177
		mu 0 4 213 224 225 214
		f 4 179 199 -182 -179
		mu 0 4 214 225 226 215
		f 4 181 201 -184 -181
		mu 0 4 215 226 227 216
		f 4 183 203 -186 -183
		mu 0 4 216 227 228 217
		f 4 185 205 -188 -185
		mu 0 4 217 228 229 218
		f 4 187 207 -189 -187
		mu 0 4 218 229 230 219
		f 4 190 210 -193 -190
		mu 0 4 221 232 231 220
		f 4 192 211 -195 -192
		mu 0 4 220 231 233 222
		f 4 194 212 -197 -194
		mu 0 4 222 233 234 223
		f 4 196 213 -199 -196
		mu 0 4 223 234 235 224
		f 4 198 214 -201 -198
		mu 0 4 224 235 236 225
		f 4 200 215 -203 -200
		mu 0 4 225 236 237 226
		f 4 202 216 -205 -202
		mu 0 4 226 237 238 227
		f 4 204 217 -207 -204
		mu 0 4 227 238 239 228
		f 4 206 218 -209 -206
		mu 0 4 228 239 240 229
		f 4 208 219 -210 -208
		mu 0 4 229 240 241 230
		f 4 0 221 -223 -221
		mu 0 4 0 1 243 242
		f 4 -2 220 226 -225
		mu 0 4 11 0 242 244
		f 4 2 227 -229 -222
		mu 0 4 1 2 245 243
		f 4 4 231 -233 -228
		mu 0 4 2 3 246 245
		f 4 6 235 -237 -232
		mu 0 4 3 4 247 246
		f 4 8 239 -241 -236
		mu 0 4 4 5 248 247
		f 4 10 243 -245 -240
		mu 0 4 5 6 249 248
		f 4 12 247 -249 -244
		mu 0 4 6 7 250 249
		f 4 14 251 -253 -248
		mu 0 4 7 8 251 250
		f 4 16 255 -257 -252
		mu 0 4 8 9 252 251
		f 4 18 259 -261 -256
		mu 0 4 9 10 253 252
		f 4 20 261 -263 -260
		mu 0 4 10 21 254 253
		f 4 -23 224 267 -266
		mu 0 4 22 11 244 255
		f 4 41 284 -286 -262
		mu 0 4 21 32 256 254
		f 4 -44 265 290 -289
		mu 0 4 33 22 255 257
		f 4 62 307 -309 -285
		mu 0 4 32 43 258 256
		f 4 -65 288 313 -312
		mu 0 4 44 33 257 259
		f 4 83 330 -332 -308
		mu 0 4 43 54 260 258
		f 4 -86 311 336 -335
		mu 0 4 55 44 259 261
		f 4 104 353 -355 -331
		mu 0 4 54 65 262 260
		f 4 -107 334 359 -358
		mu 0 4 66 55 261 263
		f 4 125 376 -378 -354
		mu 0 4 65 76 264 262
		f 4 -128 357 382 -381
		mu 0 4 77 66 263 265
		f 4 146 399 -401 -377
		mu 0 4 76 87 266 264
		f 4 -149 380 405 -404
		mu 0 4 88 77 265 267
		f 4 167 422 -424 -400
		mu 0 4 87 98 268 266
		f 4 -170 403 428 -427
		mu 0 4 99 88 267 269
		f 4 188 445 -447 -423
		mu 0 4 98 109 270 268
		f 4 -211 450 451 -449
		mu 0 4 111 110 272 271
		f 4 -191 426 452 -451
		mu 0 4 110 99 269 272
		f 4 -212 448 455 -454
		mu 0 4 112 111 271 273
		f 4 -213 453 458 -457
		mu 0 4 113 112 273 274
		f 4 -214 456 461 -460
		mu 0 4 114 113 274 275
		f 4 -215 459 464 -463
		mu 0 4 115 114 275 276
		f 4 -216 462 467 -466
		mu 0 4 116 115 276 277
		f 4 -217 465 470 -469
		mu 0 4 117 116 277 278
		f 4 -218 468 473 -472
		mu 0 4 118 117 278 279
		f 4 -219 471 476 -475
		mu 0 4 119 118 279 280
		f 4 209 477 -479 -446
		mu 0 4 109 120 281 270
		f 4 -220 474 479 -478
		mu 0 4 120 119 280 281;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "nRigid9";
	rename -uid "F2DBE21E-4000-FE9D-05D8-30A19FB150D0";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "nRigidShape9" -p "nRigid9";
	rename -uid "DB416D13-4B58-92C3-351C-35BA845F6AB3";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 242;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr ".cts" 1;
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 210;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.0050973775796592236;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.020389510318636894;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
createNode transform -n "pSphere2";
	rename -uid "D23FA679-4638-573D-0BE5-48882225EBC8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.31076613210167592 0.40144244303123883 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 0.076467296792287393 0.076467296792287393 0.076467296792287393 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	rename -uid "7820744B-4F7E-1F7B-FA20-C8BA73715F2D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "outputCloth1" -p "pSphere2";
	rename -uid "9D77AD5E-4FF8-6420-D9CB-4693361A1900";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1677 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 1.000000119209
		 0.050000001 0.050000001 0.050000001 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001
		 0.25 0.050000001 0.30000001 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001
		 0.45000005 0.050000001 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001
		 0.6500001 0.050000001 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001
		 0.85000014 0.050000001 0.90000015 0.050000001 0.95000017 0.050000001 0 0.1 1.000000119209
		 0.1 0.050000004 0.10000001 0.10000001 0.10000001 0.15000001 0.10000001 0.20000002
		 0.10000001 0.25 0.10000001 0.30000001 0.10000001 0.35000002 0.10000001 0.40000004
		 0.10000001 0.45000005 0.10000001 0.50000006 0.10000001 0.55000007 0.10000001 0.60000008
		 0.10000001 0.6500001 0.10000001 0.70000011 0.10000001 0.75000012 0.10000001 0.80000019
		 0.10000001 0.85000014 0.10000001 0.90000015 0.10000001 0.95000017 0.10000001 0 0.15000001
		 1.000000119209 0.15000001 0.050000004 0.15000001 0.10000001 0.15000001 0.15000001
		 0.15000001 0.20000002 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002
		 0.15000001 0.40000004 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007
		 0.15000001 0.60000008 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012
		 0.15000001 0.80000019 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017
		 0.15000001 0 0.2 1.000000119209 0.2 0.050000004 0.2 0.10000001 0.2 0.15000001 0.2
		 0.20000002 0.2 0.25 0.2 0.30000001 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2
		 0.50000006 0.2 0.55000007 0.2 0.60000008 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012
		 0.2 0.80000019 0.2 0.85000014 0.2 0.90000015 0.2 0.95000017 0.2 0 0.25 1.000000119209
		 0.25 0.050000004 0.25 0.10000001 0.25 0.15000001 0.25 0.20000002 0.25 0.25 0.25 0.30000001
		 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25
		 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25 0.75000012 0.25 0.80000019 0.25 0.85000014
		 0.25 0.90000015 0.25 0.95000017 0.25 0 0.30000001 1.000000119209 0.30000001 0.050000004
		 0.30000001 0.10000001 0.30000001 0.15000001 0.30000001 0.20000002 0.30000001 0.25
		 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004 0.30000001 0.45000005
		 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008 0.30000001 0.6500001
		 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000019 0.30000001 0.85000014
		 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 0 0.35000002 1.000000119209
		 0.35000002 0.050000004 0.35000002 0.10000001 0.35000002 0.15000001 0.35000002 0.20000002
		 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000019
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 0 0.40000004
		 1.000000119209 0.40000004 0.050000004 0.40000004 0.10000001 0.40000004 0.15000001
		 0.40000004 0.20000002 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002
		 0.40000004 0.40000004 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007
		 0.40000004 0.60000008 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012
		 0.40000004 0.80000019 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017
		 0.40000004 0 0.45000005 1.000000119209 0.45000005 0.050000004 0.45000005 0.10000001
		 0.45000005 0.15000001 0.45000005 0.20000002 0.45000005 0.25 0.45000005 0.30000001
		 0.45000005 0.35000002 0.45000005 0.40000004 0.45000005 0.45000005 0.45000005 0.50000006
		 0.45000005 0.55000007 0.45000005 0.60000008 0.45000005 0.6500001 0.45000005 0.70000011
		 0.45000005 0.75000012 0.45000005 0.80000019 0.45000005 0.85000014 0.45000005 0.90000015
		 0.45000005 0.95000017 0.45000005 0 0.50000006 1.000000119209 0.50000006 0.050000004
		 0.50000006 0.10000001 0.50000006 0.15000001 0.50000006 0.20000002 0.50000006 0.25
		 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004 0.50000006 0.45000005
		 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008 0.50000006 0.6500001
		 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000019 0.50000006 0.85000014
		 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 0 0.55000007 1.000000119209
		 0.55000007 0.050000004 0.55000007 0.10000001 0.55000007 0.15000001 0.55000007 0.20000002
		 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000019
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 0 0.60000008
		 1.000000119209 0.60000008 0.050000004 0.60000008 0.10000001 0.60000008 0.15000001
		 0.60000008 0.20000002 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002
		 0.60000008 0.40000004 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007
		 0.60000008 0.60000008 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012
		 0.60000008 0.80000019 0.60000008 0.85000014 0.60000008;
	setAttr ".uvst[0].uvsp[250:499]" 0.90000015 0.60000008 0.95000017 0.60000008
		 0 0.6500001 1.000000119209 0.6500001 0.050000004 0.6500001 0.10000001 0.6500001 0.15000001
		 0.6500001 0.20000002 0.6500001 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001
		 0.40000004 0.6500001 0.45000005 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001
		 0.60000008 0.6500001 0.6500001 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001
		 0.80000019 0.6500001 0.85000014 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001
		 0 0.70000011 1.000000119209 0.70000011 0.050000004 0.70000011 0.10000001 0.70000011
		 0.15000001 0.70000011 0.20000002 0.70000011 0.25 0.70000011 0.30000001 0.70000011
		 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011
		 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011
		 0.75000012 0.70000011 0.80000019 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011
		 0.95000017 0.70000011 0 0.75000012 1.000000119209 0.75000012 0.050000004 0.75000012
		 0.10000001 0.75000012 0.15000001 0.75000012 0.20000002 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000019 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 0 0.80000013 1.000000119209 0.80000013
		 0.050000004 0.80000007 0.10000001 0.80000007 0.15000001 0.80000007 0.20000002 0.80000007
		 0.25 0.80000007 0.30000001 0.80000007 0.35000002 0.80000007 0.40000004 0.80000007
		 0.45000005 0.80000007 0.50000006 0.80000007 0.55000007 0.80000007 0.60000008 0.80000007
		 0.6500001 0.80000007 0.70000011 0.80000007 0.75000012 0.80000007 0.80000019 0.80000007
		 0.85000014 0.80000007 0.90000015 0.80000007 0.95000017 0.80000007 0 0.85000014 1.000000119209
		 0.85000014 0.050000004 0.85000014 0.10000001 0.85000014 0.15000001 0.85000014 0.20000002
		 0.85000014 0.25 0.85000014 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004
		 0.85000014 0.45000005 0.85000014 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008
		 0.85000014 0.6500001 0.85000014 0.70000011 0.85000014 0.75000012 0.85000014 0.80000019
		 0.85000014 0.85000014 0.85000014 0.90000015 0.85000014 0.95000017 0.85000014 0 0.90000015
		 1.000000119209 0.90000015 0.050000004 0.90000021 0.10000001 0.90000021 0.15000001
		 0.90000021 0.20000002 0.90000021 0.25 0.90000021 0.30000001 0.90000021 0.35000002
		 0.90000021 0.40000004 0.90000021 0.45000005 0.90000021 0.50000006 0.90000021 0.55000007
		 0.90000021 0.60000008 0.90000021 0.6500001 0.90000021 0.70000011 0.90000021 0.75000012
		 0.90000021 0.80000019 0.90000021 0.85000014 0.90000021 0.90000015 0.90000021 0.95000017
		 0.90000021 0 0.95000017 1.000000119209 0.95000017 0.050000001 0.95000017 0.1 0.95000017
		 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017 0.30000001 0.95000017 0.35000002
		 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017 0.50000006 0.95000017 0.55000007
		 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017 0.70000011 0.95000017 0.75000012
		 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017 0.90000015 0.95000017 0.95000017
		 0.95000017 0.025 0 0.97499996 0 0.92500001 0 0.875 0 0.82499999 0 0.77499998 0 0.72499996
		 0 0.67500001 0 0.625 0 0.57499999 0 0.52499998 0 0.47500002 0 0.42500001 0 0.375
		 0 0.32500002 0 0.27500001 0 0.22500001 0 0.17500001 0 0.125 0 0.075000003 0 0.025
		 1 0.075000003 1 0.125 1 0.17500001 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375
		 1 0.42500001 1 0.47500002 1 0.52499998 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996
		 1 0.77499998 1 0.82499999 1 0.875 1 0.92500001 1 0.97499996 1 0.025 0.075000003 0.075000003
		 0.075000003 0.125 0.075000003 0.17500001 0.075000003 0.22499999 0.075000003 0.27500001
		 0.075000003 0.32499999 0.075000003 0.37500003 0.075000003 0.42500007 0.075000003
		 0.47500005 0.075000003 0.5250001 0.075000003 0.57500005 0.075000003 0.62500012 0.075000003
		 0.67500007 0.075000003 0.72500008 0.075000003 0.7750001 0.075000003 0.82500017 0.075000003
		 0.87500012 0.075000003 0.92500019 0.075000003 0.97500014 0.075000003 0.025 0.125
		 0.075000003 0.125 0.125 0.125 0.17500001 0.125 0.22499999 0.125 0.27500001 0.125
		 0.32499999 0.125 0.37500003 0.125 0.42500007 0.125 0.47500005 0.125 0.5250001 0.125
		 0.57500005 0.125 0.62500012 0.125 0.67500007 0.125 0.72500008 0.125 0.7750001 0.125
		 0.82500017 0.125 0.87500012 0.125 0.92500019 0.125 0.97500014 0.125 0.025 0.175 0.075000003
		 0.175 0.125 0.175 0.17500001 0.175 0.22499999 0.175 0.27500001 0.175 0.32499999 0.175
		 0.37500003 0.175 0.42500007 0.175 0.47500005 0.175 0.5250001 0.175 0.57500005 0.175
		 0.62500012 0.175 0.67500007 0.175 0.72500008 0.175 0.7750001 0.175 0.82500017 0.175
		 0.87500012 0.175 0.92500019 0.175 0.97500014 0.175 0.025 0.22499999;
	setAttr ".uvst[0].uvsp[500:749]" 0.075000003 0.22499999 0.125 0.22499999 0.17500001
		 0.22499999 0.22499999 0.22499999 0.27500001 0.22499999 0.32499999 0.22499999 0.37500003
		 0.22499999 0.42500007 0.22499999 0.47500005 0.22499999 0.5250001 0.22499999 0.57500005
		 0.22499999 0.62500012 0.22499999 0.67500007 0.22499999 0.72500008 0.22499999 0.7750001
		 0.22499999 0.82500017 0.22499999 0.87500012 0.22499999 0.92500019 0.22499999 0.97500014
		 0.22499999 0.025 0.27500001 0.075000003 0.27500001 0.125 0.27500001 0.17500001 0.27500001
		 0.22499999 0.27500001 0.27500001 0.27500001 0.32499999 0.27500001 0.37500003 0.27500001
		 0.42500007 0.27500001 0.47500005 0.27500001 0.5250001 0.27500001 0.57500005 0.27500001
		 0.62500012 0.27500001 0.67500007 0.27500001 0.72500008 0.27500001 0.7750001 0.27500001
		 0.82500017 0.27500001 0.87500012 0.27500001 0.92500019 0.27500001 0.97500014 0.27500001
		 0.025 0.32500002 0.075000003 0.32500002 0.125 0.32500002 0.17500001 0.32500002 0.22499999
		 0.32500002 0.27500001 0.32500002 0.32499999 0.32500002 0.37500003 0.32500002 0.42500007
		 0.32500002 0.47500005 0.32500002 0.5250001 0.32500002 0.57500005 0.32500002 0.62500012
		 0.32500002 0.67500007 0.32500002 0.72500008 0.32500002 0.7750001 0.32500002 0.82500017
		 0.32500002 0.87500012 0.32500002 0.92500019 0.32500002 0.97500014 0.32500002 0.025
		 0.37500006 0.075000003 0.37500006 0.125 0.37500006 0.17500001 0.37500006 0.22499999
		 0.37500006 0.27500001 0.37500006 0.32499999 0.37500006 0.37500003 0.37500006 0.42500007
		 0.37500006 0.47500005 0.37500006 0.5250001 0.37500006 0.57500005 0.37500006 0.62500012
		 0.37500006 0.67500007 0.37500006 0.72500008 0.37500006 0.7750001 0.37500006 0.82500017
		 0.37500006 0.87500012 0.37500006 0.92500019 0.37500006 0.97500014 0.37500006 0.025
		 0.42500004 0.075000003 0.42500004 0.125 0.42500004 0.17500001 0.42500004 0.22499999
		 0.42500004 0.27500001 0.42500004 0.32499999 0.42500004 0.37500003 0.42500004 0.42500007
		 0.42500004 0.47500005 0.42500004 0.5250001 0.42500004 0.57500005 0.42500004 0.62500012
		 0.42500004 0.67500007 0.42500004 0.72500008 0.42500004 0.7750001 0.42500004 0.82500017
		 0.42500004 0.87500012 0.42500004 0.92500019 0.42500004 0.97500014 0.42500004 0.025
		 0.47500002 0.075000003 0.47500002 0.125 0.47500002 0.17500001 0.47500002 0.22499999
		 0.47500002 0.27500001 0.47500002 0.32499999 0.47500002 0.37500003 0.47500002 0.42500007
		 0.47500002 0.47500005 0.47500002 0.5250001 0.47500002 0.57500005 0.47500002 0.62500012
		 0.47500002 0.67500007 0.47500002 0.72500008 0.47500002 0.7750001 0.47500002 0.82500017
		 0.47500002 0.87500012 0.47500002 0.92500019 0.47500002 0.97500014 0.47500002 0.025
		 0.5250001 0.075000003 0.5250001 0.125 0.5250001 0.17500001 0.5250001 0.22499999 0.5250001
		 0.27500001 0.5250001 0.32499999 0.5250001 0.37500003 0.5250001 0.42500007 0.5250001
		 0.47500005 0.5250001 0.5250001 0.5250001 0.57500005 0.5250001 0.62500012 0.5250001
		 0.67500007 0.5250001 0.72500008 0.5250001 0.7750001 0.5250001 0.82500017 0.5250001
		 0.87500012 0.5250001 0.92500019 0.5250001 0.97500014 0.5250001 0.025 0.57500011 0.075000003
		 0.57500011 0.125 0.57500011 0.17500001 0.57500011 0.22499999 0.57500011 0.27500001
		 0.57500011 0.32499999 0.57500011 0.37500003 0.57500011 0.42500007 0.57500011 0.47500005
		 0.57500011 0.5250001 0.57500011 0.57500005 0.57500011 0.62500012 0.57500011 0.67500007
		 0.57500011 0.72500008 0.57500011 0.7750001 0.57500011 0.82500017 0.57500011 0.87500012
		 0.57500011 0.92500019 0.57500011 0.97500014 0.57500011 0.025 0.62500012 0.075000003
		 0.62500012 0.125 0.62500012 0.17500001 0.62500012 0.22499999 0.62500012 0.27500001
		 0.62500012 0.32499999 0.62500012 0.37500003 0.62500012 0.42500007 0.62500012 0.47500005
		 0.62500012 0.5250001 0.62500012 0.57500005 0.62500012 0.62500012 0.62500012 0.67500007
		 0.62500012 0.72500008 0.62500012 0.7750001 0.62500012 0.82500017 0.62500012 0.87500012
		 0.62500012 0.92500019 0.62500012 0.97500014 0.62500012 0.025 0.67500007 0.075000003
		 0.67500007 0.125 0.67500007 0.17500001 0.67500007 0.22499999 0.67500007 0.27500001
		 0.67500007 0.32499999 0.67500007 0.37500003 0.67500007 0.42500007 0.67500007 0.47500005
		 0.67500007 0.5250001 0.67500007 0.57500005 0.67500007 0.62500012 0.67500007 0.67500007
		 0.67500007 0.72500008 0.67500007 0.7750001 0.67500007 0.82500017 0.67500007 0.87500012
		 0.67500007 0.92500019 0.67500007 0.97500014 0.67500007 0.025 0.72500014 0.075000003
		 0.72500014 0.125 0.72500014 0.17500001 0.72500014 0.22499999 0.72500014 0.27500001
		 0.72500014 0.32499999 0.72500014 0.37500003 0.72500014 0.42500007 0.72500014 0.47500005
		 0.72500014 0.5250001 0.72500014 0.57500005 0.72500014 0.62500012 0.72500014 0.67500007
		 0.72500014 0.72500008 0.72500014 0.7750001 0.72500014 0.82500017 0.72500014 0.87500012
		 0.72500014 0.92500019 0.72500014 0.97500014 0.72500014 0.025 0.77500015 0.075000003
		 0.77500015 0.125 0.77500015 0.17500001 0.77500015 0.22499999 0.77500015 0.27500001
		 0.77500015 0.32499999 0.77500015 0.37500003 0.77500015 0.42500007 0.77500015 0.47500005
		 0.77500015 0.5250001 0.77500015 0.57500005 0.77500015 0.62500012 0.77500015 0.67500007
		 0.77500015 0.72500008 0.77500015 0.7750001 0.77500015 0.82500017 0.77500015 0.87500012
		 0.77500015 0.92500019 0.77500015 0.97500014 0.77500015 0.025 0.82500011 0.075000003
		 0.82500011 0.125 0.82500011 0.17500001 0.82500011 0.22499999 0.82500011 0.27500001
		 0.82500011 0.32499999 0.82500011 0.37500003 0.82500011 0.42500007 0.82500011 0.47500005
		 0.82500011 0.5250001 0.82500011;
	setAttr ".uvst[0].uvsp[750:999]" 0.57500005 0.82500011 0.62500012 0.82500011
		 0.67500007 0.82500011 0.72500008 0.82500011 0.7750001 0.82500011 0.82500017 0.82500011
		 0.87500012 0.82500011 0.92500019 0.82500011 0.97500014 0.82500011 0.025 0.87500012
		 0.075000003 0.87500012 0.125 0.87500012 0.17500001 0.87500012 0.22499999 0.87500012
		 0.27500001 0.87500012 0.32499999 0.87500012 0.37500003 0.87500012 0.42500007 0.87500012
		 0.47500005 0.87500012 0.5250001 0.87500012 0.57500005 0.87500012 0.62500012 0.87500012
		 0.67500007 0.87500012 0.72500008 0.87500012 0.7750001 0.87500012 0.82500017 0.87500012
		 0.87500012 0.87500012 0.92500019 0.87500012 0.97500014 0.87500012 0.025 0.92500019
		 0.075000003 0.92500019 0.125 0.92500019 0.17500001 0.92500019 0.22499999 0.92500019
		 0.27500001 0.92500019 0.32499999 0.92500019 0.37500003 0.92500019 0.42500007 0.92500019
		 0.47500005 0.92500019 0.5250001 0.92500019 0.57500005 0.92500019 0.62500012 0.92500019
		 0.67500007 0.92500019 0.72500008 0.92500019 0.7750001 0.92500019 0.82500017 0.92500019
		 0.87500012 0.92500019 0.92500019 0.92500019 0.97500014 0.92500019 0.025000002 0.033333335
		 0.075000003 0.033333335 0.12500001 0.033333335 0.17500001 0.033333335 0.22500001
		 0.033333335 0.27500001 0.033333335 0.32500002 0.033333335 0.37500003 0.033333335
		 0.42500004 0.033333335 0.47500008 0.033333335 0.52500004 0.033333335 0.57500005 0.033333335
		 0.62500012 0.033333335 0.67500007 0.033333335 0.72500008 0.033333335 0.7750001 0.033333335
		 0.82500005 0.033333335 0.87500018 0.033333335 0.92500013 0.033333335 0.97500008 0.033333335
		 0.025000002 0.96666682 0.075000003 0.96666682 0.12500001 0.96666682 0.17500001 0.96666682
		 0.22500001 0.96666682 0.27500001 0.96666682 0.32500002 0.96666682 0.37500003 0.96666682
		 0.42500004 0.96666682 0.47500008 0.96666682 0.52500004 0.96666682 0.57500005 0.96666682
		 0.62500012 0.96666682 0.67500007 0.96666682 0.72500008 0.96666682 0.7750001 0.96666682
		 0.82500005 0.96666682 0.87500018 0.96666682 0.92500013 0.96666682 0.97500008 0.96666682
		 0.025000002 0.052083336 0.050000001 0.075000003 0.025 0.1 0 0.075000003 1.000000119209
		 0.075000003 0.075000003 0.052083336 0.1 0.075000003 0.075000003 0.1 0.125 0.052083336
		 0.15000001 0.075000003 0.125 0.1 0.17500001 0.052083336 0.20000002 0.075000003 0.17500001
		 0.1 0.22499999 0.052083336 0.25 0.075000003 0.22499999 0.1 0.27500001 0.052083336
		 0.30000001 0.075000003 0.27500001 0.1 0.32500002 0.052083336 0.35000002 0.075000003
		 0.32499999 0.1 0.37500003 0.052083336 0.40000004 0.075000003 0.37500003 0.1 0.42500004
		 0.052083336 0.45000005 0.075000003 0.42500004 0.1 0.47500008 0.052083336 0.50000006
		 0.075000003 0.47500005 0.1 0.5250001 0.052083336 0.55000007 0.075000003 0.5250001
		 0.1 0.57500005 0.052083336 0.60000008 0.075000003 0.57500005 0.1 0.62500012 0.052083336
		 0.6500001 0.075000003 0.62500012 0.1 0.67500007 0.052083336 0.70000011 0.075000003
		 0.67500007 0.1 0.72500014 0.052083336 0.75000012 0.075000003 0.72500014 0.1 0.7750001
		 0.052083336 0.80000019 0.075000003 0.7750001 0.1 0.82500011 0.052083336 0.85000014
		 0.075000003 0.82500017 0.1 0.87500018 0.052083336 0.90000015 0.075000003 0.87500012
		 0.1 0.92500019 0.052083336 0.95000017 0.075000003 0.92500019 0.1 0.97500014 0.052083336
		 0.97500014 0.1 0.050000001 0.125 0.025 0.15000001 0 0.125 1.000000119209 0.125 0.1
		 0.125 0.075000003 0.15000001 0.15000001 0.125 0.125 0.15000001 0.20000002 0.125 0.17500001
		 0.15000001 0.25 0.125 0.22499999 0.15000001 0.30000001 0.125 0.27500001 0.15000001
		 0.35000002 0.125 0.32499999 0.15000001 0.40000004 0.125 0.37500003 0.15000001 0.45000005
		 0.125 0.42500004 0.15000001 0.50000006 0.125 0.47500005 0.15000001 0.55000007 0.125
		 0.5250001 0.15000001 0.60000008 0.125 0.57500005 0.15000001 0.6500001 0.125 0.62500012
		 0.15000001 0.70000011 0.125 0.67500007 0.15000001 0.75000012 0.125 0.72500014 0.15000001
		 0.80000019 0.125 0.7750001 0.15000001 0.85000014 0.125 0.82500017 0.15000001 0.90000015
		 0.125 0.87500012 0.15000001 0.95000017 0.125 0.92500019 0.15000001 0.97500014 0.15000001
		 0.050000001 0.17500001 0.025 0.19999999 0 0.17500001 1.000000119209 0.17500001 0.1
		 0.17500001 0.075000003 0.19999999 0.15000001 0.17500001 0.125 0.19999999 0.20000002
		 0.17500001 0.17500001 0.19999999 0.25 0.17500001 0.22499999 0.19999999 0.30000001
		 0.17500001 0.27500001 0.19999999 0.35000002 0.17500001 0.32499999 0.19999999 0.40000004
		 0.17500001 0.37500003 0.19999999 0.45000005 0.17500001 0.42500004 0.19999999 0.50000006
		 0.17500001 0.47500005 0.19999999 0.55000007 0.17500001 0.5250001 0.19999999 0.60000008
		 0.17500001 0.57500005 0.19999999 0.6500001 0.17500001 0.62500012 0.19999999 0.70000011
		 0.17500001 0.67500007 0.19999999 0.75000012 0.17500001 0.72500014 0.19999999 0.80000019
		 0.17500001 0.7750001 0.19999999 0.85000014 0.17500001 0.82500017 0.19999999 0.90000015
		 0.17500001 0.87500012 0.19999999 0.95000017 0.17500001 0.92500019 0.19999999 0.97500014
		 0.19999999 0.050000001 0.22499999 0.025 0.25 0 0.22499999 1.000000119209 0.22499999
		 0.1 0.22499999 0.075000003 0.25 0.15000001 0.22499999 0.125 0.25 0.20000002 0.22499999
		 0.17500001 0.25 0.25 0.22499999 0.22499999 0.25 0.30000001 0.22499999 0.27500001
		 0.25 0.35000002 0.22499999 0.32499999 0.25 0.40000004 0.22499999 0.37500003 0.25;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.45000005 0.22499999 0.42500004 0.25 0.50000006
		 0.22499999 0.47500005 0.25 0.55000007 0.22499999 0.5250001 0.25 0.60000008 0.22499999
		 0.57500005 0.25 0.6500001 0.22499999 0.62500012 0.25 0.70000011 0.22499999 0.67500007
		 0.25 0.75000012 0.22499999 0.72500014 0.25 0.80000019 0.22499999 0.7750001 0.25 0.85000014
		 0.22499999 0.82500017 0.25 0.90000015 0.22499999 0.87500012 0.25 0.95000017 0.22499999
		 0.92500019 0.25 0.97500014 0.25 0.050000001 0.27500001 0.025 0.30000001 0 0.27500001
		 1.000000119209 0.27500001 0.1 0.27500001 0.075000003 0.30000001 0.15000001 0.27500001
		 0.125 0.30000001 0.20000002 0.27500001 0.17500001 0.30000001 0.25 0.27500001 0.22499999
		 0.30000001 0.30000001 0.27500001 0.27500001 0.30000001 0.35000002 0.27500001 0.32499999
		 0.30000001 0.40000004 0.27500001 0.37500003 0.30000001 0.45000005 0.27500001 0.42500004
		 0.30000001 0.50000006 0.27500001 0.47500005 0.30000001 0.55000007 0.27500001 0.5250001
		 0.30000001 0.60000008 0.27500001 0.57500005 0.30000001 0.6500001 0.27500001 0.62500012
		 0.30000001 0.70000011 0.27500001 0.67500007 0.30000001 0.75000012 0.27500001 0.72500014
		 0.30000001 0.80000019 0.27500001 0.7750001 0.30000001 0.85000014 0.27500001 0.82500017
		 0.30000001 0.90000015 0.27500001 0.87500012 0.30000001 0.95000017 0.27500001 0.92500019
		 0.30000001 0.97500014 0.30000001 0.050000001 0.32500002 0.025 0.35000002 0 0.32500002
		 1.000000119209 0.32500002 0.1 0.32500002 0.075000003 0.35000002 0.15000001 0.32500002
		 0.125 0.35000002 0.20000002 0.32500002 0.17500001 0.35000002 0.25 0.32500002 0.22499999
		 0.35000002 0.30000001 0.32500002 0.27500001 0.35000002 0.35000002 0.32500002 0.32499999
		 0.35000002 0.40000004 0.32500002 0.37500003 0.35000002 0.45000005 0.32500002 0.42500004
		 0.35000002 0.50000006 0.32500002 0.47500005 0.35000002 0.55000007 0.32500002 0.5250001
		 0.35000002 0.60000008 0.32500002 0.57500005 0.35000002 0.6500001 0.32500002 0.62500012
		 0.35000002 0.70000011 0.32500002 0.67500007 0.35000002 0.75000012 0.32500002 0.72500014
		 0.35000002 0.80000019 0.32500002 0.7750001 0.35000002 0.85000014 0.32500002 0.82500017
		 0.35000002 0.90000015 0.32500002 0.87500012 0.35000002 0.95000017 0.32500002 0.92500019
		 0.35000002 0.97500014 0.35000002 0.050000001 0.37500006 0.025 0.40000007 0 0.37500003
		 1.000000119209 0.37500003 0.1 0.37500006 0.075000003 0.40000007 0.15000001 0.37500006
		 0.125 0.40000007 0.20000002 0.37500006 0.17500001 0.40000007 0.25 0.37500006 0.22499999
		 0.40000007 0.30000001 0.37500006 0.27500001 0.40000007 0.35000002 0.37500006 0.32499999
		 0.40000007 0.40000004 0.37500006 0.37500003 0.40000007 0.45000005 0.37500006 0.42500004
		 0.40000007 0.50000006 0.37500006 0.47500005 0.40000007 0.55000007 0.37500006 0.5250001
		 0.40000007 0.60000008 0.37500006 0.57500005 0.40000007 0.6500001 0.37500006 0.62500012
		 0.40000007 0.70000011 0.37500006 0.67500007 0.40000007 0.75000012 0.37500006 0.72500014
		 0.40000007 0.80000019 0.37500006 0.7750001 0.40000007 0.85000014 0.37500006 0.82500017
		 0.40000007 0.90000015 0.37500006 0.87500012 0.40000007 0.95000017 0.37500006 0.92500019
		 0.40000007 0.97500014 0.40000007 0.050000001 0.42500004 0.025 0.45000005 0 0.42500004
		 1.000000119209 0.42500004 0.1 0.42500004 0.075000003 0.45000005 0.15000001 0.42500004
		 0.125 0.45000005 0.20000002 0.42500004 0.17500001 0.45000005 0.25 0.42500004 0.22499999
		 0.45000005 0.30000001 0.42500004 0.27500001 0.45000005 0.35000002 0.42500004 0.32499999
		 0.45000005 0.40000004 0.42500004 0.37500003 0.45000005 0.45000005 0.42500004 0.42500004
		 0.45000005 0.50000006 0.42500004 0.47500005 0.45000005 0.55000007 0.42500004 0.5250001
		 0.45000005 0.60000008 0.42500004 0.57500005 0.45000005 0.6500001 0.42500004 0.62500012
		 0.45000005 0.70000011 0.42500004 0.67500007 0.45000005 0.75000012 0.42500004 0.72500014
		 0.45000005 0.80000019 0.42500004 0.7750001 0.45000005 0.85000014 0.42500004 0.82500017
		 0.45000005 0.90000015 0.42500004 0.87500012 0.45000005 0.95000017 0.42500004 0.92500019
		 0.45000005 0.97500014 0.45000005 0.050000001 0.47500005 0.025 0.50000006 0 0.47500005
		 1.000000119209 0.47500005 0.1 0.47500005 0.075000003 0.50000006 0.15000001 0.47500005
		 0.125 0.50000006 0.20000002 0.47500005 0.17500001 0.50000006 0.25 0.47500005 0.22499999
		 0.50000006 0.30000001 0.47500005 0.27500001 0.50000006 0.35000002 0.47500005 0.32499999
		 0.50000006 0.40000004 0.47500005 0.37500003 0.50000006 0.45000005 0.47500005 0.42500004
		 0.50000006 0.50000006 0.47500005 0.47500005 0.50000006 0.55000007 0.47500005 0.5250001
		 0.50000006 0.60000008 0.47500005 0.57500005 0.50000006 0.6500001 0.47500005 0.62500012
		 0.50000006 0.70000011 0.47500005 0.67500007 0.50000006 0.75000012 0.47500005 0.72500014
		 0.50000006 0.80000019 0.47500005 0.7750001 0.50000006 0.85000014 0.47500005 0.82500017
		 0.50000006 0.90000015 0.47500005 0.87500012 0.50000006 0.95000017 0.47500005 0.92500019
		 0.50000006 0.97500014 0.50000006 0.050000001 0.5250001 0.025 0.55000007 0 0.5250001
		 1.000000119209 0.5250001 0.1 0.5250001 0.075000003 0.55000007 0.15000001 0.5250001
		 0.125 0.55000007 0.20000002 0.5250001 0.17500001 0.55000007 0.25 0.5250001 0.22499999
		 0.55000007 0.30000001 0.5250001 0.27500001 0.55000007 0.35000002 0.5250001 0.32499999
		 0.55000007 0.40000004 0.5250001 0.37500003 0.55000007 0.45000005 0.5250001 0.42500004
		 0.55000007 0.50000006 0.5250001 0.47500005 0.55000007;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.55000007 0.5250001 0.5250001 0.55000007
		 0.60000008 0.5250001 0.57500005 0.55000007 0.6500001 0.5250001 0.62500012 0.55000007
		 0.70000011 0.5250001 0.67500007 0.55000007 0.75000012 0.5250001 0.72500014 0.55000007
		 0.80000019 0.5250001 0.7750001 0.55000007 0.85000014 0.5250001 0.82500017 0.55000007
		 0.90000015 0.5250001 0.87500012 0.55000007 0.95000017 0.5250001 0.92500019 0.55000007
		 0.97500014 0.55000007 0.050000001 0.57500005 0.025 0.60000014 0 0.57500005 1.000000119209
		 0.57500005 0.1 0.57500005 0.075000003 0.60000014 0.15000001 0.57500005 0.125 0.60000014
		 0.20000002 0.57500005 0.17500001 0.60000014 0.25 0.57500005 0.22499999 0.60000014
		 0.30000001 0.57500005 0.27500001 0.60000014 0.35000002 0.57500005 0.32499999 0.60000014
		 0.40000004 0.57500005 0.37500003 0.60000014 0.45000005 0.57500005 0.42500004 0.60000014
		 0.50000006 0.57500005 0.47500005 0.60000014 0.55000007 0.57500005 0.5250001 0.60000014
		 0.60000008 0.57500005 0.57500005 0.60000014 0.6500001 0.57500005 0.62500012 0.60000014
		 0.70000011 0.57500005 0.67500007 0.60000014 0.75000012 0.57500005 0.72500014 0.60000014
		 0.80000019 0.57500005 0.7750001 0.60000014 0.85000014 0.57500005 0.82500017 0.60000014
		 0.90000015 0.57500005 0.87500012 0.60000014 0.95000017 0.57500005 0.92500019 0.60000014
		 0.97500014 0.60000014 0.050000001 0.62500012 0.025 0.6500001 0 0.62500012 1.000000119209
		 0.62500012 0.1 0.62500012 0.075000003 0.6500001 0.15000001 0.62500012 0.125 0.6500001
		 0.20000002 0.62500012 0.17500001 0.6500001 0.25 0.62500012 0.22499999 0.6500001 0.30000001
		 0.62500012 0.27500001 0.6500001 0.35000002 0.62500012 0.32499999 0.6500001 0.40000004
		 0.62500012 0.37500003 0.6500001 0.45000005 0.62500012 0.42500004 0.6500001 0.50000006
		 0.62500012 0.47500005 0.6500001 0.55000007 0.62500012 0.5250001 0.6500001 0.60000008
		 0.62500012 0.57500005 0.6500001 0.6500001 0.62500012 0.62500012 0.6500001 0.70000011
		 0.62500012 0.67500007 0.6500001 0.75000012 0.62500012 0.72500014 0.6500001 0.80000019
		 0.62500012 0.7750001 0.6500001 0.85000014 0.62500012 0.82500017 0.6500001 0.90000015
		 0.62500012 0.87500012 0.6500001 0.95000017 0.62500012 0.92500019 0.6500001 0.97500014
		 0.6500001 0.050000001 0.67500007 0.025 0.70000011 0 0.67500007 1.000000119209 0.67500007
		 0.1 0.67500007 0.075000003 0.70000011 0.15000001 0.67500007 0.125 0.70000011 0.20000002
		 0.67500007 0.17500001 0.70000011 0.25 0.67500007 0.22499999 0.70000011 0.30000001
		 0.67500007 0.27500001 0.70000011 0.35000002 0.67500007 0.32499999 0.70000011 0.40000004
		 0.67500007 0.37500003 0.70000011 0.45000005 0.67500007 0.42500004 0.70000011 0.50000006
		 0.67500007 0.47500005 0.70000011 0.55000007 0.67500007 0.5250001 0.70000011 0.60000008
		 0.67500007 0.57500005 0.70000011 0.6500001 0.67500007 0.62500012 0.70000011 0.70000011
		 0.67500007 0.67500007 0.70000011 0.75000012 0.67500007 0.72500014 0.70000011 0.80000019
		 0.67500007 0.7750001 0.70000011 0.85000014 0.67500007 0.82500017 0.70000011 0.90000015
		 0.67500007 0.87500012 0.70000011 0.95000017 0.67500007 0.92500019 0.70000011 0.97500014
		 0.70000011 0.050000001 0.72500014 0.025 0.75000012 0 0.72500014 1.000000119209 0.72500014
		 0.1 0.72500014 0.075000003 0.75000012 0.15000001 0.72500014 0.125 0.75000012 0.20000002
		 0.72500014 0.17500001 0.75000012 0.25 0.72500014 0.22499999 0.75000012 0.30000001
		 0.72500014 0.27500001 0.75000012 0.35000002 0.72500014 0.32499999 0.75000012 0.40000004
		 0.72500014 0.37500003 0.75000012 0.45000005 0.72500014 0.42500004 0.75000012 0.50000006
		 0.72500014 0.47500005 0.75000012 0.55000007 0.72500014 0.5250001 0.75000012 0.60000008
		 0.72500014 0.57500005 0.75000012 0.6500001 0.72500014 0.62500012 0.75000012 0.70000011
		 0.72500014 0.67500007 0.75000012 0.75000012 0.72500014 0.72500014 0.75000012 0.80000019
		 0.72500014 0.7750001 0.75000012 0.85000014 0.72500014 0.82500017 0.75000012 0.90000015
		 0.72500014 0.87500012 0.75000012 0.95000017 0.72500014 0.92500019 0.75000012 0.97500014
		 0.75000012 0.050000001 0.7750001 0.025 0.80000013 0 0.7750001 1.000000119209 0.7750001
		 0.1 0.7750001 0.075000003 0.80000013 0.15000001 0.7750001 0.125 0.80000013 0.20000002
		 0.7750001 0.17500001 0.80000013 0.25 0.7750001 0.22499999 0.80000013 0.30000001 0.7750001
		 0.27500001 0.80000013 0.35000002 0.7750001 0.32499999 0.80000013 0.40000004 0.7750001
		 0.37500003 0.80000013 0.45000005 0.7750001 0.42500004 0.80000013 0.50000006 0.7750001
		 0.47500005 0.80000013 0.55000007 0.7750001 0.5250001 0.80000013 0.60000008 0.7750001
		 0.57500005 0.80000013 0.6500001 0.7750001 0.62500012 0.80000013 0.70000011 0.7750001
		 0.67500007 0.80000013 0.75000012 0.7750001 0.72500014 0.80000013 0.80000019 0.7750001
		 0.7750001 0.80000013 0.85000014 0.7750001 0.82500017 0.80000013 0.90000015 0.7750001
		 0.87500012 0.80000013 0.95000017 0.7750001 0.92500019 0.80000013 0.97500014 0.80000013
		 0.050000001 0.82500011 0.025 0.85000014 0 0.82500017 1.000000119209 0.82500017 0.1
		 0.82500011 0.075000003 0.85000014 0.15000001 0.82500011 0.125 0.85000014 0.20000002
		 0.82500011 0.17500001 0.85000014 0.25 0.82500011 0.22499999 0.85000014 0.30000001
		 0.82500011 0.27500001 0.85000014 0.35000002 0.82500011 0.32499999 0.85000014 0.40000004
		 0.82500011 0.37500003 0.85000014 0.45000005 0.82500011 0.42500004 0.85000014 0.50000006
		 0.82500011 0.47500005 0.85000014 0.55000007 0.82500011 0.5250001 0.85000014 0.60000008
		 0.82500011 0.57500005 0.85000014;
	setAttr ".uvst[0].uvsp[1500:1676]" 0.6500001 0.82500011 0.62500012 0.85000014
		 0.70000011 0.82500011 0.67500007 0.85000014 0.75000012 0.82500011 0.72500014 0.85000014
		 0.80000019 0.82500011 0.7750001 0.85000014 0.85000014 0.82500011 0.82500017 0.85000014
		 0.90000015 0.82500011 0.87500012 0.85000014 0.95000017 0.82500011 0.92500019 0.85000014
		 0.97500014 0.85000014 0.050000001 0.87500012 0.025 0.90000015 0 0.87500012 1.000000119209
		 0.87500012 0.1 0.87500012 0.075000003 0.90000015 0.15000001 0.87500012 0.125 0.90000015
		 0.20000002 0.87500012 0.17500001 0.90000015 0.25 0.87500012 0.22499999 0.90000015
		 0.30000001 0.87500012 0.27500001 0.90000015 0.35000002 0.87500012 0.32499999 0.90000015
		 0.40000004 0.87500012 0.37500003 0.90000015 0.45000005 0.87500012 0.42500004 0.90000015
		 0.50000006 0.87500012 0.47500005 0.90000015 0.55000007 0.87500012 0.5250001 0.90000015
		 0.60000008 0.87500012 0.57500005 0.90000015 0.6500001 0.87500012 0.62500012 0.90000015
		 0.70000011 0.87500012 0.67500007 0.90000015 0.75000012 0.87500012 0.72500014 0.90000015
		 0.80000019 0.87500012 0.7750001 0.90000015 0.85000014 0.87500012 0.82500017 0.90000015
		 0.90000015 0.87500012 0.87500012 0.90000015 0.95000017 0.87500012 0.92500019 0.90000015
		 0.97500014 0.90000015 0.050000001 0.92500019 0.025000002 0.94791687 0 0.92500019
		 1.000000119209 0.92500019 0.1 0.92500019 0.075000003 0.94791687 0.15000001 0.92500019
		 0.125 0.94791687 0.20000002 0.92500019 0.17500001 0.94791687 0.25 0.92500019 0.22499999
		 0.94791687 0.30000001 0.92500019 0.27500001 0.94791687 0.35000002 0.92500019 0.32500002
		 0.94791687 0.40000004 0.92500019 0.37500003 0.94791687 0.45000005 0.92500019 0.42500004
		 0.94791687 0.50000006 0.92500019 0.47500008 0.94791687 0.55000007 0.92500019 0.5250001
		 0.94791687 0.60000008 0.92500019 0.57500005 0.94791687 0.6500001 0.92500019 0.62500012
		 0.94791687 0.70000011 0.92500019 0.67500007 0.94791687 0.75000012 0.92500019 0.72500014
		 0.94791687 0.80000019 0.92500019 0.7750001 0.94791687 0.85000014 0.92500019 0.82500011
		 0.94791687 0.90000015 0.92500019 0.87500018 0.94791687 0.95000017 0.92500019 0.92500019
		 0.94791687 0.97500014 0.94791687 0.0125 0.025 0.98750007 0.025 0.037500001 0.025
		 0.0625 0.025 0.087500006 0.025 0.1125 0.025 0.1375 0.025 0.16250001 0.025 0.1875
		 0.025 0.21250001 0.025 0.23750001 0.025 0.26249999 0.025 0.28750002 0.025 0.3125
		 0.025 0.33750004 0.025 0.36250001 0.025 0.38750002 0.025 0.41250002 0.025 0.43750003
		 0.025 0.46250004 0.025 0.48750004 0.025 0.51250005 0.025 0.53750002 0.025 0.5625
		 0.025 0.58750004 0.025 0.61250007 0.025 0.63750005 0.025 0.66250002 0.025 0.68750006
		 0.025 0.71250004 0.025 0.73750007 0.025 0.76250005 0.025 0.78750002 0.025 0.81250006
		 0.025 0.8375001 0.025 0.86250007 0.025 0.88750005 0.025 0.91250008 0.025 0.93750012
		 0.025 0.9625001 0.025 0.037500001 0.97500008 0.0625 0.97500008 0.0125 0.97500008
		 0.98750007 0.97500008 0.087500006 0.97500008 0.1125 0.97500008 0.1375 0.97500008
		 0.16250001 0.97500008 0.1875 0.97500008 0.21250001 0.97500008 0.23750001 0.97500008
		 0.26249999 0.97500008 0.28750002 0.97500008 0.3125 0.97500008 0.33750004 0.97500008
		 0.36250001 0.97500008 0.38750002 0.97500008 0.41250002 0.97500008 0.43750003 0.97500008
		 0.46250004 0.97500008 0.48750004 0.97500008 0.51250005 0.97500008 0.53750002 0.97500008
		 0.5625 0.97500008 0.58750004 0.97500008 0.61250007 0.97500008 0.63750005 0.97500008
		 0.66250002 0.97500008 0.68750006 0.97500008 0.71250004 0.97500008 0.73750007 0.97500008
		 0.76250005 0.97500008 0.78750002 0.97500008 0.81250006 0.97500008 0.8375001 0.97500008
		 0.86250007 0.97500008 0.88750005 0.97500008 0.91250008 0.97500008 0.93750012 0.97500008
		 0.9625001 0.97500008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1562 ".vt";
	setAttr ".vt[0:165]"  0.14952897 -0.98439193 -0.048584938 0.127197 -0.98439193 -0.092414036
		 0.092414126 -0.98439193 -0.12719701 0.048584975 -0.98439193 -0.14952905 1.8859282e-08 -0.98439193 -0.15722415
		 -0.048584934 -0.98439193 -0.14952904 -0.092414081 -0.98439193 -0.12719698 -0.12719692 -0.98439193 -0.092414007
		 -0.14952892 -0.98439193 -0.048584919 -0.157224 -0.98439193 0 -0.14952892 -0.98439193 0.048584919
		 -0.12719692 -0.98439193 0.092413999 -0.092414081 -0.98439193 0.12719697 -0.048584938 -0.98439193 0.149529
		 1.8510036e-08 -0.98439193 0.15722409 0.048584938 -0.98439193 0.14952898 0.092413895 -0.98439193 0.12719694
		 0.12719692 -0.98439193 0.092413992 0.14952897 -0.98439193 0.048584905 0.15722403 -0.98439193 -4.3073669e-09
		 0.28940329 -0.94812936 -0.094032824 0.24618122 -0.94812936 -0.17886107 0.17886111 -0.94812936 -0.24618113
		 0.094032891 -0.94812936 -0.28940329 1.792796e-08 -0.94812936 -0.30429655 -0.094032846 -0.94812936 -0.28940323
		 -0.17886102 -0.94812936 -0.24618107 -0.24618098 -0.94812936 -0.17886101 -0.2894032 -0.94812936 -0.094032794
		 -0.30429643 -0.94812936 0 -0.28940317 -0.94812936 0.094032787 -0.24618097 -0.94812936 0.17886099
		 -0.17886104 -0.94812936 0.24618103 -0.094032854 -0.94812936 0.28940314 1.1874363e-08 -0.94812936 0.30429646
		 0.094032839 -0.94812936 0.28940311 0.17886099 -0.94812936 0.24618098 0.24618097 -0.94812936 0.17886098
		 0.28940317 -0.94812936 0.094032779 0.30429643 -0.94812936 -6.7520887e-09 0.42517504 -0.88826406 -0.13814777
		 0.3616755 -0.88826406 -0.26277265 0.26277271 -0.88826406 -0.36167553 0.13814786 -0.88826406 -0.42517507
		 1.7229468e-08 -0.88826406 -0.44705552 -0.13814783 -0.88826406 -0.42517504 -0.26277265 -0.88826406 -0.36167544
		 -0.36167544 -0.88826406 -0.26277259 -0.42517504 -0.88826406 -0.13814771 -0.44705552 -0.88826406 0
		 -0.42517504 -0.88826406 0.13814771 -0.36167544 -0.88826406 0.26277253 -0.26277265 -0.88826406 0.36167538
		 -0.13814783 -0.88826406 0.42517495 -1.816079e-08 -0.88826406 0.44705534 0.13814761 -0.88826406 0.42517489
		 0.26277241 -0.88826406 0.36167535 0.36167538 -0.88826406 0.26277253 0.42517483 -0.88826406 0.1381477
		 0.44705522 -0.88826406 -1.0011718e-08 0.55047768 -0.80652702 -0.17886105 0.46826428 -0.80652702 -0.34021392
		 0.34021387 -0.80652702 -0.46826428 0.17886108 -0.80652702 -0.55047774 2.0954758e-08 -0.80652702 -0.57880646
		 -0.17886104 -0.80652702 -0.55047762 -0.34021381 -0.80652702 -0.46826419 -0.46826419 -0.80652702 -0.34021381
		 -0.55047762 -0.80652702 -0.17886098 -0.57880634 -0.80652702 0 -0.55047768 -0.80652702 0.17886098
		 -0.46826419 -0.80652702 0.34021381 -0.34021384 -0.80652702 0.46826413 -0.17886105 -0.80652702 0.55047745
		 7.21775e-09 -0.80652702 0.57880622 0.17886096 -0.80652702 0.5504775 0.34021375 -0.80652702 0.4682641
		 0.46826398 -0.80652702 0.34021375 0.55047739 -0.80652702 0.17886093 0.57880616 -0.80652702 -1.1175871e-08
		 0.66222572 -0.70493031 -0.21517017 0.56332296 -0.70493037 -0.40927798 0.40927795 -0.70493037 -0.56332284
		 0.21517022 -0.70493037 -0.66222566 1.3038516e-08 -0.70493037 -0.69630522 -0.2151702 -0.70493037 -0.66222566
		 -0.40927789 -0.70493037 -0.56332272 -0.5633226 -0.70493037 -0.40927786 -0.66222543 -0.70493037 -0.21517012
		 -0.69630516 -0.70493037 0 -0.66222543 -0.70493037 0.2151701 -0.5633226 -0.70493037 0.40927786
		 -0.40927789 -0.70493037 0.5633226 -0.21517017 -0.70493037 0.66222548 -1.816079e-08 -0.70493037 0.69630498
		 0.21516992 -0.70493037 0.66222543 0.40927765 -0.70493037 0.56332254 0.5633226 -0.70493037 0.40927783
		 0.66222548 -0.70493037 0.21517007 0.69630486 -0.70493037 -1.5366822e-08 0.75766754 -0.58597606 -0.24618112
		 0.64451057 -0.58597606 -0.46826431 0.46826431 -0.58597606 -0.64451045 0.246181 -0.58597606 -0.75766754
		 -2.3748726e-08 -0.58597606 -0.79665869 -0.24618122 -0.58597606 -0.75766748 -0.46826422 -0.58597606 -0.64451033
		 -0.64451015 -0.58597606 -0.46826413 -0.75766736 -0.58597606 -0.24618103 -0.79665852 -0.58597606 -1.8626451e-09
		 -0.75766736 -0.58597606 0.24618104 -0.64451021 -0.58597606 0.46826413 -0.46826419 -0.58597606 0.64451021
		 -0.24618095 -0.58597606 0.75766724 1.3969839e-08 -0.58597606 0.7966584 0.24618089 -0.58597606 0.75766718
		 0.46826398 -0.58597606 0.64451015 0.64451015 -0.58597606 0.4682641 0.75766718 -0.58597606 0.246181
		 0.79665846 -0.58597606 -1.9092113e-08 0.83445305 -0.45259321 -0.27113026 0.70982832 -0.45259321 -0.51572037
		 0.51572043 -0.45259321 -0.70982826 0.27113017 -0.45259321 -0.83445305 -2.0023435e-08 -0.45259321 -0.87739581
		 -0.27113032 -0.45259321 -0.83445311 -0.51572019 -0.45259321 -0.70982808 -0.70982784 -0.45259321 -0.51572019
		 -0.83445269 -0.45259321 -0.27113014 -0.87739557 -0.45259321 -1.8626451e-09 -0.83445275 -0.45259321 0.27113014
		 -0.7098279 -0.45259321 0.51572019 -0.51572013 -0.45259321 0.70982796 -0.27113006 -0.45259321 0.83445275
		 2.0954758e-08 -0.45259321 0.87739557 0.27113011 -0.45259321 0.83445263 0.51572013 -0.45259321 0.7098279
		 0.70982784 -0.45259321 0.51572013 0.83445269 -0.45259321 0.27113011 0.87739545 -0.45259321 -1.7229468e-08
		 0.89069158 -0.30806592 -0.28940326 0.75766748 -0.30806589 -0.55047774 0.55047768 -0.30806589 -0.75766748
		 0.28940323 -0.30806589 -0.89069152 9.778887e-09 -0.30806589 -0.93652844 -0.28940326 -0.30806589 -0.89069158
		 -0.55047762 -0.30806589 -0.75766736 -0.75766736 -0.30806589 -0.55047756 -0.89069146 -0.30806589 -0.28940317
		 -0.93652821 -0.30806589 0 -0.89069146 -0.30806589 0.28940317 -0.7576673 -0.30806589 0.55047756
		 -0.55047762 -0.30806589 0.75766724 -0.28940323 -0.30806589 0.89069134 1.1175871e-08 -0.30806589 0.93652821
		 0.28940317 -0.30806589 0.89069122 0.55047739 -0.30806589 0.75766718 0.75766712 -0.30806589 0.55047745
		 0.8906911 -0.30806589 0.28940311 0.93652815 -0.30806589 -1.5832484e-08 0.9249984 -0.15595295 -0.30055019
		 0.78685057 -0.15595295 -0.57168049 0.57168037 -0.15595295 -0.78685057 0.30055025 -0.15595295 -0.92499828
		 1.9092113e-08 -0.15595295 -0.97260076 -0.30055019 -0.15595295 -0.92499822;
	setAttr ".vt[166:331]" -0.57168037 -0.15595295 -0.78685039 -0.78685045 -0.15595295 -0.57168025
		 -0.92499816 -0.15595295 -0.3005501 -0.97260052 -0.15595295 0 -0.92499804 -0.15595295 0.3005501
		 -0.78685021 -0.15595295 0.57168019 -0.57168031 -0.15595295 0.78685033 -0.30055019 -0.15595295 0.92499804
		 -1.6298145e-08 -0.15595295 0.97260034 0.30054998 -0.15595295 0.92499793 0.57168001 -0.15595295 0.78685021
		 0.78685015 -0.15595295 0.57168013 0.92499787 -0.15595295 0.30055001 0.97260052 -0.15595295 -2.3283064e-08
		 0.93652856 -2.6775524e-08 -0.30429658 0.79665875 -2.4912879e-08 -0.57880658 0.57880646 -2.4912879e-08 -0.79665875
		 0.30429652 -2.4912879e-08 -0.93652856 1.5366822e-08 -2.4912879e-08 -0.98472422 -0.30429652 -2.4912879e-08 -0.9365285
		 -0.5788064 -2.4912879e-08 -0.79665858 -0.79665858 -2.4912879e-08 -0.57880634 -0.93652821 -2.4912879e-08 -0.30429652
		 -0.98472399 -2.4912879e-08 0 -0.93652821 -2.4912879e-08 0.30429649 -0.79665852 -2.4912879e-08 0.57880628
		 -0.5788064 -2.4912879e-08 0.7966584 -0.30429649 -2.4912879e-08 0.93652827 5.5879354e-09 -2.4912879e-08 0.98472393
		 0.3042964 -2.4912879e-08 0.93652827 0.57880616 -2.4912879e-08 0.7966584 0.79665834 -2.4912879e-08 0.57880622
		 0.93652815 -2.4912879e-08 0.30429646 0.98472387 -2.4912879e-08 -2.1420419e-08 0.92499846 0.15595292 -0.30055022
		 0.78685057 0.15595292 -0.57168043 0.57168037 0.15595292 -0.78685069 0.30055022 0.15595292 -0.92499834
		 2.0954758e-08 0.15595292 -0.97260076 -0.30055022 0.15595292 -0.92499828 -0.57168031 0.15595292 -0.78685045
		 -0.78685051 0.15595292 -0.57168025 -0.9249981 0.15595292 -0.3005501 -0.97260058 0.15595292 0
		 -0.92499804 0.15595292 0.3005501 -0.78685021 0.15595292 0.57168025 -0.57168031 0.15595292 0.78685033
		 -0.30055022 0.15595292 0.92499804 -1.816079e-08 0.15595292 0.9726004 0.30054998 0.15595292 0.92499793
		 0.57168001 0.15595292 0.78685021 0.78685015 0.15595292 0.57168019 0.92499793 0.15595292 0.30055001
		 0.97260052 0.15595292 -2.2817403e-08 0.89069158 0.30806586 -0.28940326 0.75766748 0.30806586 -0.55047774
		 0.55047768 0.30806586 -0.75766748 0.28940326 0.30806586 -0.89069158 1.1641532e-08 0.30806586 -0.9365285
		 -0.28940326 0.30806586 -0.89069152 -0.55047762 0.30806586 -0.75766742 -0.75766742 0.30806586 -0.55047756
		 -0.89069146 0.30806586 -0.28940317 -0.93652821 0.30806586 0 -0.89069146 0.30806586 0.28940314
		 -0.75766736 0.30806586 0.55047756 -0.55047762 0.30806586 0.75766724 -0.2894032 0.30806586 0.89069134
		 1.0244548e-08 0.30806586 0.93652815 0.28940317 0.30806586 0.89069122 0.55047739 0.30806586 0.75766718
		 0.75766718 0.30806586 0.55047745 0.89069122 0.30806586 0.28940311 0.93652809 0.30806586 -1.9092113e-08
		 0.83445305 0.45259321 -0.27113026 0.70982826 0.45259321 -0.51572037 0.51572049 0.45259321 -0.7098282
		 0.27113017 0.45259321 -0.83445311 -2.0256266e-08 0.45259321 -0.87739581 -0.27113032 0.45259321 -0.83445305
		 -0.51572025 0.45259321 -0.70982802 -0.7098279 0.45259321 -0.51572025 -0.83445269 0.45259321 -0.27113014
		 -0.87739551 0.45259321 0 -0.83445269 0.45259321 0.27113014 -0.70982784 0.45259321 0.51572019
		 -0.51572013 0.45259321 0.7098279 -0.27113006 0.45259321 0.83445287 2.0954758e-08 0.45259321 0.87739545
		 0.27113011 0.45259321 0.83445269 0.51572019 0.45259321 0.70982784 0.70982784 0.45259321 0.51572013
		 0.83445275 0.45259321 0.27113014 0.87739551 0.45259321 -1.9092113e-08 0.75766748 0.58597618 -0.24618112
		 0.64451063 0.58597624 -0.46826431 0.46826428 0.58597624 -0.64451051 0.246181 0.58597624 -0.75766754
		 -2.1886081e-08 0.58597624 -0.79665869 -0.24618122 0.58597624 -0.75766748 -0.46826422 0.58597624 -0.64451039
		 -0.64451021 0.58597624 -0.46826413 -0.75766736 0.58597624 -0.24618103 -0.79665852 0.58597624 1.8626451e-09
		 -0.75766736 0.58597624 0.24618104 -0.64451021 0.58597624 0.46826413 -0.46826419 0.58597624 0.64451027
		 -0.24618098 0.58597624 0.75766724 1.2805685e-08 0.58597624 0.79665834 0.24618089 0.58597624 0.75766724
		 0.46826395 0.58597624 0.64451009 0.64451015 0.58597624 0.46826407 0.75766718 0.58597624 0.24618098
		 0.79665846 0.58597624 -2.0489097e-08 0.66222566 0.70493037 -0.21517016 0.56332296 0.70493037 -0.40927798
		 0.40927798 0.70493037 -0.56332284 0.2151702 0.70493037 -0.6622256 1.1641532e-08 0.70493037 -0.69630527
		 -0.21517022 0.70493037 -0.6622256 -0.40927789 0.70493037 -0.56332272 -0.56332266 0.70493037 -0.40927786
		 -0.66222543 0.70493037 -0.2151701 -0.69630516 0.70493037 -1.8626451e-09 -0.66222543 0.70493037 0.2151701
		 -0.56332266 0.70493037 0.40927783 -0.40927789 0.70493037 0.5633226 -0.21517016 0.70493037 0.66222543
		 -1.816079e-08 0.70493037 0.69630498 0.21516992 0.70493037 0.66222537 0.40927765 0.70493037 0.5633226
		 0.5633226 0.70493037 0.4092778 0.66222543 0.70493037 0.21517007 0.69630486 0.70493037 -1.4668331e-08
		 0.55047768 0.80652696 -0.17886105 0.46826428 0.80652702 -0.34021395 0.34021389 0.80652702 -0.46826431
		 0.17886108 0.80652702 -0.55047774 2.0721927e-08 0.80652702 -0.57880646 -0.17886105 0.80652702 -0.55047762
		 -0.34021384 0.80652702 -0.46826416 -0.46826419 0.80652702 -0.34021381 -0.55047762 0.80652702 -0.17886098
		 -0.57880646 0.80652702 0 -0.55047762 0.80652702 0.17886096 -0.46826419 0.80652702 0.34021381
		 -0.34021384 0.80652702 0.46826413 -0.17886105 0.80652702 0.5504775 9.0803951e-09 0.80652702 0.57880622
		 0.17886098 0.80652702 0.55047745 0.34021375 0.80652702 0.4682641 0.46826398 0.80652702 0.34021375
		 0.55047733 0.80652702 0.17886095 0.5788061 0.80652702 -1.2340024e-08 0.42517507 0.88826412 -0.13814777
		 0.36167553 0.88826412 -0.26277268 0.26277271 0.88826412 -0.36167553 0.13814786 0.88826412 -0.42517507
		 1.7229468e-08 0.88826412 -0.44705552 -0.13814783 0.88826412 -0.42517504 -0.26277265 0.88826412 -0.36167544
		 -0.36167544 0.88826412 -0.26277262 -0.42517507 0.88826412 -0.13814773 -0.44705549 0.88826412 9.3132257e-10
		 -0.42517507 0.88826412 0.13814773 -0.36167544 0.88826412 0.26277256;
	setAttr ".vt[332:497]" -0.26277268 0.88826412 0.36167535 -0.13814783 0.88826412 0.42517492
		 -1.816079e-08 0.88826412 0.44705534 0.13814761 0.88826412 0.42517486 0.26277244 0.88826412 0.36167535
		 0.36167538 0.88826412 0.26277253 0.42517483 0.88826412 0.13814771 0.44705522 0.88826412 -1.0244548e-08
		 0.28940329 0.94812912 -0.094032831 0.24618122 0.94812912 -0.17886105 0.1788611 0.94812912 -0.24618113
		 0.094032884 0.94812912 -0.28940326 1.816079e-08 0.94812912 -0.30429661 -0.094032854 0.94812912 -0.28940323
		 -0.17886104 0.94812912 -0.24618104 -0.24618097 0.94812912 -0.17886101 -0.2894032 0.94812912 -0.094032794
		 -0.30429643 0.94812912 0 -0.2894032 0.94812912 0.094032794 -0.24618098 0.94812912 0.17886098
		 -0.17886105 0.94812912 0.24618101 -0.094032854 0.94812912 0.28940314 1.1641532e-08 0.94812912 0.30429643
		 0.094032831 0.94812912 0.28940311 0.17886099 0.94812912 0.246181 0.24618097 0.94812912 0.17886098
		 0.28940317 0.94812912 0.094032764 0.30429646 0.94812912 -6.9849193e-09 0.14952897 0.98439187 -0.048584938
		 0.127197 0.98439193 -0.092414044 0.092414126 0.98439193 -0.12719703 0.048584972 0.98439193 -0.14952905
		 1.8692559e-08 0.98439193 -0.15722415 -0.048584938 0.98439193 -0.14952904 -0.092414081 0.98439193 -0.127197
		 -0.12719694 0.98439193 -0.092414007 -0.14952894 0.98439193 -0.048584923 -0.15722401 0.98439193 0
		 -0.14952892 0.98439193 0.048584919 -0.12719694 0.98439193 0.092413999 -0.092414074 0.98439193 0.12719697
		 -0.048584938 0.98439193 0.149529 1.8692559e-08 0.98439193 0.15722407 0.048584938 0.98439193 0.14952898
		 0.092413895 0.98439193 0.12719694 0.12719691 0.98439193 0.092413992 0.14952895 0.98439193 0.048584908
		 0.15722403 0.98439193 -4.1909516e-09 1.6734703e-08 -0.99897355 -1.6880222e-09 1.6647391e-08 0.99897343 -1.0913936e-09
		 0.79419923 0.078217179 -0.57701951 0.86652732 0.1559529 -0.44151768 0.93363702 0.078217179 -0.30335712
		 0.57701951 0.078217179 -0.79419929 0.68767983 0.1559529 -0.68767995 0.30335706 0.078217179 -0.93363708
		 0.44151768 0.1559529 -0.8665272 1.8626451e-08 0.078217179 -0.98168415 0.15213667 0.1559529 -0.96055281
		 -0.30335706 0.078217179 -0.93363696 -0.15213664 0.1559529 -0.96055275 -0.57701945 0.078217179 -0.79419905
		 -0.44151765 0.1559529 -0.86652708 -0.79419905 0.078217179 -0.57701933 -0.68767983 0.1559529 -0.68767977
		 -0.93363684 0.078217179 -0.30335698 -0.86652702 0.1559529 -0.44151756 -0.98168373 0.078217179 0
		 -0.96055245 0.1559529 -0.15213656 -0.93363684 0.078217179 0.30335698 -0.96055245 0.1559529 0.15213656
		 -0.79419887 0.078217179 0.57701927 -0.86652684 0.1559529 0.44151753 -0.57701945 0.078217179 0.79419887
		 -0.68767971 0.1559529 0.68767965 -0.30335706 0.078217179 0.93363672 -0.44151765 0.1559529 0.86652678
		 -9.3132257e-09 0.078217179 0.98168367 -0.15213664 0.1559529 0.96055233 0.30335689 0.078217179 0.93363672
		 0.15213652 0.1559529 0.96055233 0.5770191 0.078217179 0.79419875 0.44151735 0.1559529 0.86652678
		 0.79419869 0.078217179 0.57701921 0.68767947 0.1559529 0.68767953 0.93363667 0.078217179 0.30335695
		 0.86652678 0.1559529 0.44151747 0.98168373 0.078217179 -2.2351742e-08 0.96055233 0.1559529 0.15213653
		 0.96055263 0.1559529 -0.15213662 0.7746433 0.23272566 -0.56281137 0.83438903 0.30806583 -0.42514247
		 0.91064787 0.23272566 -0.29588744 0.56281137 0.23272566 -0.77464342 0.66217488 0.30806583 -0.66217488
		 0.29588747 0.23272566 -0.91064787 0.42514247 0.30806583 -0.83438897 1.6763806e-08 0.23272566 -0.95751178
		 0.14649412 0.30806583 -0.92492741 -0.29588744 0.23272566 -0.91064787 -0.14649411 0.30806583 -0.92492735
		 -0.56281132 0.23272566 -0.7746433 -0.42514244 0.30806583 -0.83438897 -0.77464324 0.23272566 -0.56281126
		 -0.66217488 0.30806583 -0.66217482 -0.91064769 0.23272566 -0.29588735 -0.83438891 0.30806583 -0.42514235
		 -0.95751143 0.23272566 1.8626451e-09 -0.92492712 0.30806583 -0.14649406 -0.91064769 0.23272566 0.29588735
		 -0.92492712 0.30806583 0.14649406 -0.77464312 0.23272566 0.56281114 -0.83438891 0.30806583 0.42514232
		 -0.56281132 0.23272566 0.774643 -0.66217488 0.30806583 0.6621747 -0.29588744 0.23272566 0.91064751
		 -0.42514241 0.30806583 0.83438879 -7.4505806e-09 0.23272566 0.95751137 -0.14649408 0.30806583 0.924927
		 0.29588729 0.23272566 0.91064745 0.14649409 0.30806583 0.92492694 0.56281096 0.23272566 0.77464294
		 0.42514229 0.30806583 0.83438867 0.77464294 0.23272566 0.56281108 0.66217458 0.30806583 0.66217458
		 0.91064739 0.23272566 0.29588729 0.83438867 0.30806583 0.42514229 0.95751143 0.23272566 -2.2351742e-08
		 0.92492688 0.30806583 0.14649405 0.92492712 0.30806583 -0.14649411 0.73601317 0.38150376 -0.53474492
		 0.7817055 0.45259321 -0.39829886 0.86523539 0.38150376 -0.28113207 0.53474498 0.38150376 -0.73601317
		 0.62036508 0.45259321 -0.62036502 0.28113201 0.38150376 -0.86523545 0.39829886 0.45259321 -0.7817055
		 -7.4505806e-09 0.38150376 -0.90976226 0.13724436 0.45259321 -0.86652714 -0.2811321 0.38150376 -0.86523545
		 -0.13724448 0.45259321 -0.86652714 -0.5347448 0.38150376 -0.73601311 -0.39829883 0.45259321 -0.78170538
		 -0.73601305 0.38150376 -0.53474474 -0.62036479 0.45259321 -0.62036484 -0.86523521 0.38150376 -0.28113195
		 -0.78170514 0.45259321 -0.39829871 -0.90976202 0.38150376 1.8626451e-09 -0.86652684 0.45259321 -0.13724437
		 -0.86523521 0.38150376 0.28113195 -0.86652684 0.45259321 0.13724437 -0.73601305 0.38150376 0.5347448
		 -0.78170514 0.45259321 0.39829871 -0.5347448 0.38150376 0.736013 -0.62036473 0.45259321 0.62036479
		 -0.28113195 0.38150376 0.86523509 -0.39829868 0.45259321 0.78170514 1.8626451e-08 0.38150376 0.90976202
		 -0.13724431 0.45259321 0.86652678 0.28113195 0.38150376 0.86523503 0.13724436 0.45259321 0.86652678
		 0.53474474 0.38150376 0.73601294 0.39829865 0.45259321 0.78170508 0.73601294 0.38150376 0.53474468
		 0.62036467 0.45259321 0.62036473 0.86523497 0.38150376 0.28113192;
	setAttr ".vt[498:663]" 0.78170508 0.45259321 0.39829868 0.90976197 0.38150376 -1.8626451e-08
		 0.86652678 0.45259321 0.13724436 0.86652702 0.45259321 -0.13724443 0.67926013 0.52088791 -0.49351135
		 0.70977366 0.58597618 -0.36164778 0.798518 0.52088791 -0.25945428 0.49351141 0.52088791 -0.67926008
		 0.56327969 0.58597618 -0.56327963 0.25945413 0.52088791 -0.79851806 0.36164773 0.58597618 -0.70977366
		 -2.7939677e-08 0.52088791 -0.83961153 0.12461527 0.58597618 -0.78679013 -0.25945434 0.52088791 -0.798518
		 -0.1246154 0.58597618 -0.78679019 -0.4935112 0.52088791 -0.67925996 -0.36164781 0.58597618 -0.7097736
		 -0.67925978 0.52088791 -0.49351114 -0.56327945 0.58597618 -0.56327951 -0.79851782 0.52088791 -0.25945416
		 -0.70977354 0.58597618 -0.36164767 -0.83961141 0.52088791 0 -0.78679001 0.58597618 -0.12461528
		 -0.79851782 0.52088791 0.25945416 -0.78679001 0.58597618 0.12461528 -0.67925978 0.52088791 0.49351114
		 -0.70977354 0.58597618 0.36164767 -0.49351117 0.52088791 0.67925978 -0.56327945 0.58597618 0.56327945
		 -0.25945407 0.52088791 0.79851776 -0.36164767 0.58597618 0.70977342 1.9557774e-08 0.52088791 0.83961117
		 -0.12461524 0.58597618 0.78678989 0.2594541 0.52088791 0.7985177 0.12461524 0.58597618 0.78678989
		 0.49351108 0.52088791 0.67925978 0.36164749 0.58597618 0.70977342 0.67925972 0.52088791 0.49351111
		 0.56327927 0.58597618 0.56327933 0.7985177 0.52088791 0.25945413 0.70977342 0.58597618 0.36164764
		 0.83961123 0.52088791 -2.0489097e-08 0.78678983 0.58597618 0.12461526 0.78678995 0.58597618 -0.12461533
		 0.60578132 0.6474461 -0.44012582 0.62036508 0.70493042 -0.31609178 0.71213847 0.6474461 -0.23138784
		 0.44012585 0.6474461 -0.60578126 0.4923245 0.70493042 -0.49232447 0.23138779 0.6474461 -0.71213847
		 0.31609175 0.70493042 -0.62036496 -3.7252903e-09 0.6474461 -0.74878669 0.10891782 0.70493042 -0.68767983
		 -0.2313879 0.6474461 -0.71213847 -0.10891781 0.70493042 -0.68767983 -0.44012576 0.6474461 -0.60578114
		 -0.31609172 0.70493042 -0.6203649 -0.60578102 0.6474461 -0.44012567 -0.49232429 0.70493042 -0.49232429
		 -0.7121383 0.6474461 -0.23138776 -0.62036473 0.70493042 -0.31609166 -0.74878663 0.6474461 0
		 -0.68767971 0.70493042 -0.10891776 -0.7121383 0.6474461 0.23138776 -0.68767971 0.70493042 0.10891776
		 -0.60578102 0.6474461 0.44012567 -0.62036473 0.70493042 0.31609163 -0.44012573 0.6474461 0.60578096
		 -0.49232429 0.70493042 0.49232423 -0.23138775 0.6474461 0.71213818 -0.31609172 0.70493042 0.62036467
		 -6.519258e-09 0.6474461 0.74878639 -0.10891779 0.70493042 0.68767953 0.2313876 0.6474461 0.71213818
		 0.10891768 0.70493042 0.68767953 0.44012547 0.6474461 0.6057809 0.31609142 0.70493042 0.62036467
		 0.60578096 0.6474461 0.44012558 0.49232411 0.70493042 0.49232417 0.71213818 0.6474461 0.2313877
		 0.62036467 0.70493042 0.3160916 0.74878639 0.6474461 -1.6763806e-08 0.68767947 0.70493042 0.10891773
		 0.68767965 0.70493042 -0.10891779 0.51738608 0.75806189 -0.37590298 0.51568085 0.8065269 -0.2627525
		 0.60822374 0.75806189 -0.19762388 0.37590295 0.75806189 -0.51738602 0.40924656 0.8065269 -0.40924659
		 0.19762392 0.75806189 -0.6082238 0.26275247 0.8065269 -0.51568079 2.0489097e-08 0.75806189 -0.63952428
		 0.090538368 0.8065269 -0.57163662 -0.19762385 0.75806189 -0.60822374 -0.090538323 0.8065269 -0.57163656
		 -0.37590283 0.75806189 -0.5173859 -0.26275244 0.8065269 -0.51568073 -0.5173859 0.75806189 -0.37590286
		 -0.40924647 0.8065269 -0.40924647 -0.60822362 0.75806189 -0.1976238 -0.51568073 0.8065269 -0.26275238
		 -0.63952416 0.75806189 -9.3132257e-10 -0.57163656 0.8065269 -0.090538301 -0.60822362 0.75806189 0.1976238
		 -0.57163656 0.8065269 0.090538301 -0.5173859 0.75806189 0.37590283 -0.51568073 0.8065269 0.26275238
		 -0.37590286 0.75806189 0.51738578 -0.40924647 0.8065269 0.40924644 -0.19762385 0.75806189 0.6082235
		 -0.26275241 0.8065269 0.51568061 -6.519258e-09 0.75806189 0.63952404 -0.090538323 0.8065269 0.57163632
		 0.19762374 0.75806189 0.6082235 0.090538315 0.8065269 0.57163632 0.37590268 0.75806189 0.51738584
		 0.26275238 0.8065269 0.51568061 0.51738572 0.75806189 0.37590277 0.40924633 0.8065269 0.40924641
		 0.60822338 0.75806189 0.19762376 0.51568043 0.8065269 0.26275235 0.63952392 0.75806189 -1.4901161e-08
		 0.57163614 0.8065269 0.090538293 0.57163638 0.8065269 -0.090538338 0.41625106 0.85001183 -0.30242416
		 0.39829889 0.88826412 -0.2029434 0.48933253 0.85001183 -0.15899378 0.30242413 0.85001183 -0.41625112
		 0.31609178 0.88826412 -0.31609181 0.15899384 0.85001183 -0.48933253 0.2029435 0.88826412 -0.39829886
		 1.9557774e-08 0.85001183 -0.51451463 0.0699296 0.88826412 -0.44151765 -0.1589938 0.85001183 -0.4893325
		 -0.069929577 0.88826412 -0.44151765 -0.30242407 0.85001183 -0.416251 -0.20294344 0.88826412 -0.39829877
		 -0.416251 0.85001183 -0.30242404 -0.31609172 0.88826412 -0.31609166 -0.4893325 0.85001183 -0.15899372
		 -0.3982988 0.88826412 -0.20294334 -0.51451463 0.85001183 0 -0.44151765 0.88826412 -0.069929503
		 -0.48933253 0.85001183 0.15899372 -0.44151765 0.88826412 0.069929503 -0.416251 0.85001183 0.30242401
		 -0.3982988 0.88826412 0.20294333 -0.3024241 0.85001183 0.41625094 -0.31609172 0.88826412 0.31609163
		 -0.1589938 0.85001183 0.48933232 -0.20294343 0.88826412 0.39829871 -5.5879354e-09 0.85001183 0.51451445
		 -0.069929577 0.88826412 0.4415175 0.15899368 0.85001183 0.48933226 0.069929458 0.88826412 0.4415175
		 0.30242392 0.85001183 0.41625094 0.20294321 0.88826412 0.39829865 0.41625082 0.85001183 0.30242401
		 0.3160916 0.88826412 0.31609163 0.4893322 0.85001183 0.15899369 0.39829862 0.88826412 0.2029433
		 0.51451433 0.85001183 -1.2107193e-08 0.44151738 0.88826412 0.069929495 0.4415175 0.88826412 -0.069929533
		 0.30486673 0.92103148 -0.22149862 0.27110949 0.94812912 -0.13813718;
	setAttr ".vt[664:829]" 0.3583923 0.92103148 -0.11644872 0.22149865 0.92103148 -0.3048667
		 0.21515375 0.94812912 -0.21515368 0.1164488 0.92103148 -0.35839227 0.13813724 0.94812912 -0.27110943
		 1.8626451e-08 0.92103148 -0.37683591 0.047598872 0.94812912 -0.30052713 -0.11644878 0.92103148 -0.35839227
		 -0.047598839 0.94812912 -0.3005271 -0.22149861 0.92103148 -0.30486664 -0.13813718 0.94812912 -0.2711094
		 -0.30486655 0.92103148 -0.22149855 -0.21515356 0.94812912 -0.21515363 -0.35839224 0.92103148 -0.11644868
		 -0.27110934 0.94812912 -0.13813713 -0.37683585 0.92103148 0 -0.30052707 0.94812912 -0.047598805
		 -0.35839227 0.92103148 0.11644867 -0.30052704 0.94812912 0.047598805 -0.30486655 0.92103148 0.22149852
		 -0.27110934 0.94812912 0.13813713 -0.22149861 0.92103148 0.30486661 -0.21515356 0.94812912 0.2151536
		 -0.11644878 0.92103148 0.35839215 -0.13813719 0.94812912 0.27110934 -6.0535967e-09 0.92103148 0.37683582
		 -0.047598839 0.94812912 0.30052701 0.11644863 0.92103148 0.35839212 0.047598846 0.94812912 0.30052701
		 0.22149847 0.92103148 0.30486658 0.13813715 0.94812912 0.27110931 0.30486655 0.92103148 0.22149849
		 0.21515356 0.94812912 0.21515359 0.35839212 0.92103148 0.11644865 0.27110934 0.94812912 0.13813709
		 0.3768357 0.92103148 -8.8475645e-09 0.30052701 0.94812912 0.047598798 0.30052704 0.94812912 -0.047598824
		 0.18597548 0.96937239 -0.13511907 0.14298055 0.98413539 -0.072852269 0.21862715 0.96937239 -0.071036294
		 0.13511914 0.96937239 -0.18597545 0.11347011 0.98413539 -0.11347006 0.071036339 0.96937239 -0.21862723
		 0.072852336 0.98413539 -0.14298061 1.9092113e-08 0.96937239 -0.22987828 0.025103204 0.98413539 -0.15849522
		 -0.071036309 0.96937239 -0.21862721 -0.025103165 0.98413539 -0.15849522 -0.13511907 0.96937239 -0.1859754
		 -0.072852299 0.98413539 -0.14298059 -0.1859753 0.96937239 -0.13511904 -0.11347005 0.98413539 -0.11347003
		 -0.21862711 0.96937239 -0.071036272 -0.14298049 0.98413539 -0.072852239 -0.22987813 0.96937239 4.6566129e-10
		 -0.15849508 0.98413539 -0.02510317 -0.21862711 0.96937239 0.071036272 -0.15849508 0.98413539 0.02510317
		 -0.1859753 0.96937239 0.13511901 -0.1429805 0.98413539 0.072852239 -0.13511907 0.96937239 0.18597534
		 -0.11347005 0.98413539 0.11347 -0.071036309 0.96937239 0.21862713 -0.072852306 0.98413539 0.14298055
		 1.9092113e-08 0.96937239 0.22987814 -0.025103163 0.98413539 0.15849516 0.071036316 0.96937239 0.21862711
		 0.025103204 0.98413539 0.15849514 0.13511895 0.96937239 0.18597533 0.072852179 0.98413539 0.14298053
		 0.18597531 0.96937239 0.13511898 0.11346992 0.98413539 0.11347 0.21862713 0.96937239 0.071036257
		 0.14298053 0.98413539 0.072852224 0.22987814 0.96937239 -5.8207661e-09 0.15849511 0.98413539 0.025103163
		 0.15849511 0.98413539 -0.02510318 0.085573547 -0.99281824 -0.027804554 0.072793245 -0.99281824 -0.052887406
		 0.05288747 -0.99281824 -0.072793268 0.027804585 -0.99281824 -0.085573614 1.816079e-08 -0.99281824 -0.089977421
		 -0.027804546 -0.99281824 -0.085573599 -0.052887432 -0.99281824 -0.072793253 -0.072793216 -0.99281824 -0.052887388
		 -0.085573517 -0.99281824 -0.027804544 -0.089977309 -0.99281824 0 -0.085573517 -0.99281824 0.027804544
		 -0.072793216 -0.99281824 0.05288738 -0.052887432 -0.99281824 0.07279323 -0.027804548 -0.99281824 0.085573576
		 1.816079e-08 -0.99281824 0.089977376 0.027804554 -0.99281824 0.085573569 0.052887306 -0.99281824 0.07279323
		 0.072793216 -0.99281824 0.052887376 0.085573547 -0.99281824 0.027804539 0.089977354 -0.99281824 -2.3283064e-09
		 0.072793245 0.99281824 -0.052887406 0.085573547 0.99281824 -0.027804554 0.05288747 0.99281824 -0.072793268
		 0.027804585 0.99281824 -0.085573614 1.816079e-08 0.99281824 -0.089977421 -0.027804546 0.99281824 -0.085573599
		 -0.052887432 0.99281824 -0.072793253 -0.072793216 0.99281824 -0.052887388 -0.085573517 0.99281824 -0.027804544
		 -0.089977309 0.99281824 0 -0.085573517 0.99281824 0.027804544 -0.072793216 0.99281824 0.05288738
		 -0.052887432 0.99281824 0.07279323 -0.027804548 0.99281824 0.085573576 1.816079e-08 0.99281824 0.089977376
		 0.027804554 0.99281824 0.085573569 0.052887306 0.99281824 0.07279323 0.072793216 0.99281824 0.052887376
		 0.085573547 0.99281824 0.027804539 0.089977354 0.99281824 -2.3283064e-09 0.14298055 -0.98413533 -0.072852261
		 0.18597548 -0.96937239 -0.13511905 0.27110949 -0.94812924 -0.13813718 0.21862714 -0.96937239 -0.071036294
		 0.11347011 -0.98413533 -0.11347006 0.13511914 -0.96937239 -0.18597545 0.21515375 -0.94812924 -0.21515368
		 0.072852336 -0.98413533 -0.14298062 0.071036339 -0.96937239 -0.21862723 0.13813722 -0.94812924 -0.27110946
		 0.025103204 -0.98413533 -0.15849522 1.9092113e-08 -0.96937239 -0.22987828 0.047598872 -0.94812924 -0.30052713
		 -0.025103163 -0.98413533 -0.15849522 -0.071036309 -0.96937239 -0.21862721 -0.047598839 -0.94812924 -0.30052713
		 -0.072852306 -0.98413533 -0.14298059 -0.13511907 -0.96937239 -0.1859754 -0.13813718 -0.94812924 -0.27110943
		 -0.11347005 -0.98413533 -0.11347003 -0.1859753 -0.96937239 -0.13511902 -0.21515356 -0.94812924 -0.21515363
		 -0.1429805 -0.98413533 -0.072852239 -0.21862711 -0.96937239 -0.071036272 -0.27110931 -0.94812924 -0.13813713
		 -0.15849508 -0.98413533 -0.02510317 -0.22987813 -0.96937239 4.6566129e-10 -0.30052704 -0.94812924 -0.047598805
		 -0.15849508 -0.98413533 0.02510317 -0.21862711 -0.96937239 0.071036264 -0.30052704 -0.94812924 0.047598805
		 -0.14298049 -0.98413533 0.072852232 -0.1859753 -0.96937239 0.13511901 -0.27110934 -0.94812924 0.13813712
		 -0.11347005 -0.98413533 0.11347 -0.13511908 -0.96937239 0.18597534 -0.21515356 -0.94812924 0.2151536
		 -0.072852299 -0.98413533 0.14298055 -0.071036309 -0.96937239 0.21862713 -0.13813718 -0.94812924 0.27110934
		 -0.025103165 -0.98413533 0.15849516 1.9092113e-08 -0.96937239 0.22987814 -0.047598839 -0.94812924 0.30052701
		 0.025103204 -0.98413533 0.15849514 0.071036316 -0.96937239 0.21862711 0.047598846 -0.94812924 0.30052698
		 0.072852179 -0.98413533 0.14298053 0.13511896 -0.96937239 0.18597533;
	setAttr ".vt[830:995]" 0.13813715 -0.94812924 0.27110931 0.11346992 -0.98413533 0.11347
		 0.18597531 -0.96937239 0.13511899 0.21515356 -0.94812924 0.21515357 0.14298053 -0.98413533 0.072852224
		 0.21862714 -0.96937239 0.071036257 0.27110934 -0.94812924 0.1381371 0.15849511 -0.98413533 0.025103163
		 0.22987814 -0.96937239 -6.0535967e-09 0.30052701 -0.94812924 0.047598798 0.15849511 -0.98413533 -0.02510318
		 0.30052704 -0.94812924 -0.047598824 0.30486673 -0.92103148 -0.22149862 0.39829889 -0.88826406 -0.20294341
		 0.3583923 -0.92103148 -0.11644872 0.22149865 -0.92103148 -0.3048667 0.31609178 -0.88826406 -0.31609181
		 0.1164488 -0.92103148 -0.35839227 0.2029435 -0.88826406 -0.39829886 1.8626451e-08 -0.92103148 -0.37683591
		 0.0699296 -0.88826406 -0.44151765 -0.11644878 -0.92103148 -0.35839227 -0.06992957 -0.88826406 -0.44151765
		 -0.22149861 -0.92103148 -0.30486664 -0.20294343 -0.88826406 -0.39829877 -0.30486655 -0.92103148 -0.22149855
		 -0.31609166 -0.88826406 -0.31609166 -0.35839224 -0.92103148 -0.11644868 -0.3982988 -0.88826406 -0.20294333
		 -0.37683585 -0.92103148 0 -0.44151765 -0.88826406 -0.069929503 -0.35839227 -0.92103148 0.11644867
		 -0.44151765 -0.88826406 0.069929503 -0.30486655 -0.92103148 0.22149852 -0.3982988 -0.88826406 0.20294331
		 -0.22149861 -0.92103148 0.30486658 -0.31609172 -0.88826406 0.31609163 -0.11644878 -0.92103148 0.35839215
		 -0.20294344 -0.88826406 0.39829871 -6.519258e-09 -0.92103148 0.37683582 -0.06992957 -0.88826406 0.4415175
		 0.11644863 -0.92103148 0.35839212 0.069929458 -0.88826406 0.4415175 0.22149847 -0.92103148 0.30486655
		 0.20294321 -0.88826406 0.39829865 0.30486655 -0.92103148 0.22149849 0.31609157 -0.88826406 0.31609163
		 0.35839212 -0.92103148 0.11644865 0.39829865 -0.88826406 0.2029433 0.3768357 -0.92103148 -8.3819032e-09
		 0.44151735 -0.88826406 0.069929495 0.4415175 -0.88826406 -0.06992954 0.41625106 -0.85001177 -0.30242416
		 0.51568085 -0.8065269 -0.2627525 0.48933253 -0.85001177 -0.15899378 0.30242413 -0.85001177 -0.41625112
		 0.40924656 -0.8065269 -0.40924659 0.15899384 -0.85001177 -0.48933253 0.26275247 -0.8065269 -0.51568079
		 1.9557774e-08 -0.85001177 -0.51451463 0.090538368 -0.8065269 -0.57163656 -0.15899381 -0.85001177 -0.4893325
		 -0.090538323 -0.8065269 -0.57163656 -0.30242407 -0.85001177 -0.416251 -0.26275241 -0.8065269 -0.51568073
		 -0.416251 -0.85001177 -0.30242401 -0.40924647 -0.8065269 -0.40924647 -0.4893325 -0.85001177 -0.15899372
		 -0.51568073 -0.8065269 -0.26275238 -0.51451463 -0.85001177 0 -0.5716365 -0.8065269 -0.090538308
		 -0.4893325 -0.85001177 0.15899372 -0.5716365 -0.8065269 0.090538308 -0.416251 -0.85001177 0.30242398
		 -0.51568073 -0.8065269 0.26275238 -0.30242407 -0.85001177 0.41625094 -0.40924647 -0.8065269 0.40924644
		 -0.15899381 -0.85001177 0.48933232 -0.26275241 -0.8065269 0.51568061 -5.5879354e-09 -0.85001177 0.51451445
		 -0.090538323 -0.8065269 0.57163632 0.15899368 -0.85001177 0.48933226 0.090538323 -0.8065269 0.57163632
		 0.30242392 -0.85001177 0.41625094 0.26275238 -0.8065269 0.51568061 0.41625082 -0.85001177 0.30242398
		 0.40924633 -0.8065269 0.40924641 0.4893322 -0.85001177 0.15899369 0.51568043 -0.8065269 0.26275235
		 0.51451433 -0.85001177 -1.2107193e-08 0.5716362 -0.8065269 0.090538293 0.57163638 -0.8065269 -0.090538338
		 0.51738608 -0.75806189 -0.37590298 0.62036508 -0.70493037 -0.31609175 0.60822374 -0.75806189 -0.19762388
		 0.37590295 -0.75806189 -0.51738602 0.4923245 -0.70493037 -0.49232447 0.19762391 -0.75806189 -0.6082238
		 0.31609175 -0.70493037 -0.62036496 2.0489097e-08 -0.75806189 -0.63952428 0.10891782 -0.70493037 -0.68767983
		 -0.19762385 -0.75806189 -0.60822374 -0.10891782 -0.70493037 -0.68767983 -0.37590283 -0.75806189 -0.5173859
		 -0.31609175 -0.70493037 -0.62036496 -0.51738584 -0.75806189 -0.37590286 -0.49232429 -0.70493037 -0.49232429
		 -0.60822362 -0.75806189 -0.1976238 -0.62036473 -0.70493037 -0.31609166 -0.63952422 -0.75806189 -9.3132257e-10
		 -0.68767971 -0.70493037 -0.10891776 -0.60822362 -0.75806189 0.1976238 -0.68767971 -0.70493037 0.10891776
		 -0.5173859 -0.75806189 0.37590283 -0.62036479 -0.70493037 0.31609163 -0.37590286 -0.75806189 0.51738578
		 -0.49232429 -0.70493037 0.49232423 -0.19762385 -0.75806189 0.60822344 -0.31609172 -0.70493037 0.62036467
		 -6.519258e-09 -0.75806189 0.63952404 -0.10891779 -0.70493037 0.68767953 0.19762374 -0.75806189 0.6082235
		 0.10891768 -0.70493037 0.68767953 0.37590268 -0.75806189 0.51738578 0.31609142 -0.70493037 0.62036467
		 0.51738572 -0.75806189 0.37590277 0.49232411 -0.70493037 0.49232417 0.60822338 -0.75806189 0.19762376
		 0.62036467 -0.70493037 0.3160916 0.63952392 -0.75806189 -1.4901161e-08 0.68767947 -0.70493037 0.10891773
		 0.68767965 -0.70493037 -0.10891779 0.60578138 -0.64744592 -0.44012582 0.70977366 -0.58597606 -0.36164778
		 0.71213847 -0.64744592 -0.23138784 0.44012585 -0.64744592 -0.6057812 0.56327963 -0.58597606 -0.56327963
		 0.23138778 -0.64744592 -0.71213847 0.36164773 -0.58597606 -0.70977366 -3.7252903e-09 -0.64744592 -0.74878669
		 0.12461527 -0.58597606 -0.78679019 -0.2313879 -0.64744592 -0.71213847 -0.1246154 -0.58597606 -0.78679013
		 -0.44012576 -0.64744592 -0.6057812 -0.36164781 -0.58597606 -0.7097736 -0.60578096 -0.64744592 -0.44012567
		 -0.56327939 -0.58597606 -0.56327945 -0.7121383 -0.64744592 -0.23138776 -0.70977354 -0.58597606 -0.36164767
		 -0.74878663 -0.64744592 0 -0.78679001 -0.58597606 -0.1246153 -0.7121383 -0.64744592 0.23138776
		 -0.78679001 -0.58597606 0.1246153 -0.60578102 -0.64744592 0.44012567 -0.70977354 -0.58597606 0.36164767
		 -0.44012573 -0.64744592 0.60578096 -0.56327939 -0.58597606 0.56327945 -0.23138775 -0.64744592 0.71213818
		 -0.36164767 -0.58597606 0.70977342 -6.519258e-09 -0.64744592 0.74878639 -0.12461522 -0.58597606 0.78678989
		 0.2313876 -0.64744592 0.71213818 0.12461524 -0.58597606 0.78678989 0.44012547 -0.64744592 0.6057809
		 0.36164749 -0.58597606 0.70977342 0.6057809 -0.64744592 0.44012558;
	setAttr ".vt[996:1161]" 0.56327933 -0.58597606 0.56327933 0.71213818 -0.64744592 0.2313877
		 0.70977342 -0.58597606 0.36164761 0.74878639 -0.64744592 -1.6763806e-08 0.78678983 -0.58597606 0.12461526
		 0.78678995 -0.58597606 -0.12461534 0.67926013 -0.52088785 -0.49351135 0.7817055 -0.45259321 -0.39829886
		 0.798518 -0.52088785 -0.25945428 0.49351141 -0.52088785 -0.67926008 0.62036508 -0.45259321 -0.62036502
		 0.25945413 -0.52088785 -0.79851806 0.39829886 -0.45259321 -0.7817055 -2.7939677e-08 -0.52088785 -0.83961153
		 0.13724436 -0.45259321 -0.86652714 -0.25945434 -0.52088785 -0.798518 -0.13724449 -0.45259321 -0.86652714
		 -0.4935112 -0.52088785 -0.67925996 -0.3982988 -0.45259321 -0.78170538 -0.67925978 -0.52088785 -0.49351114
		 -0.62036473 -0.45259321 -0.62036484 -0.79851782 -0.52088785 -0.25945416 -0.78170514 -0.45259321 -0.39829871
		 -0.83961141 -0.52088785 0 -0.86652684 -0.45259321 -0.13724437 -0.79851782 -0.52088785 0.25945416
		 -0.86652684 -0.45259321 0.13724437 -0.67925978 -0.52088785 0.49351114 -0.78170514 -0.45259321 0.39829871
		 -0.49351117 -0.52088785 0.67925978 -0.62036473 -0.45259321 0.62036479 -0.25945407 -0.52088785 0.79851776
		 -0.39829868 -0.45259321 0.78170514 1.8626451e-08 -0.52088785 0.83961117 -0.13724431 -0.45259321 0.86652678
		 0.2594541 -0.52088785 0.7985177 0.13724436 -0.45259321 0.86652678 0.49351108 -0.52088785 0.67925978
		 0.39829868 -0.45259321 0.78170508 0.67925972 -0.52088785 0.49351111 0.62036467 -0.45259321 0.62036473
		 0.7985177 -0.52088785 0.25945413 0.78170508 -0.45259321 0.39829868 0.83961123 -0.52088785 -2.0489097e-08
		 0.86652678 -0.45259321 0.13724436 0.86652702 -0.45259321 -0.13724443 0.73601323 -0.38150379 -0.53474498
		 0.83438903 -0.30806589 -0.42514244 0.86523539 -0.38150379 -0.28113204 0.53474498 -0.38150379 -0.73601317
		 0.66217488 -0.30806589 -0.66217494 0.28113201 -0.38150379 -0.86523545 0.4251425 -0.30806589 -0.83438897
		 -7.4505806e-09 -0.38150379 -0.90976226 0.14649411 -0.30806589 -0.92492741 -0.28113207 -0.38150379 -0.86523545
		 -0.14649411 -0.30806589 -0.92492735 -0.53474486 -0.38150379 -0.73601311 -0.42514241 -0.30806589 -0.83438897
		 -0.73601305 -0.38150379 -0.53474474 -0.66217488 -0.30806589 -0.66217482 -0.86523521 -0.38150379 -0.28113195
		 -0.83438891 -0.30806589 -0.42514235 -0.90976202 -0.38150379 1.8626451e-09 -0.92492712 -0.30806589 -0.14649406
		 -0.86523521 -0.38150379 0.28113195 -0.92492712 -0.30806589 0.14649406 -0.73601305 -0.38150379 0.53474474
		 -0.83438891 -0.30806589 0.42514232 -0.5347448 -0.38150379 0.736013 -0.66217488 -0.30806589 0.6621747
		 -0.28113195 -0.38150379 0.86523509 -0.42514244 -0.30806589 0.83438879 1.8626451e-08 -0.38150379 0.90976202
		 -0.14649409 -0.30806589 0.924927 0.28113198 -0.38150379 0.86523503 0.14649409 -0.30806589 0.92492694
		 0.53474468 -0.38150379 0.73601294 0.42514226 -0.30806589 0.83438867 0.73601294 -0.38150379 0.53474468
		 0.66217452 -0.30806589 0.66217458 0.86523497 -0.38150379 0.28113192 0.83438867 -0.30806589 0.42514229
		 0.90976202 -0.38150379 -1.8626451e-08 0.92492688 -0.30806589 0.14649405 0.92492712 -0.30806589 -0.14649412
		 0.7746433 -0.23272574 -0.56281137 0.86652726 -0.15595295 -0.44151768 0.91064787 -0.23272574 -0.29588747
		 0.56281137 -0.23272574 -0.77464342 0.68767983 -0.15595295 -0.68767995 0.29588747 -0.23272574 -0.91064787
		 0.44151768 -0.15595295 -0.8665272 1.6763806e-08 -0.23272574 -0.95751178 0.15213665 -0.15595295 -0.96055281
		 -0.29588744 -0.23272574 -0.91064787 -0.15213662 -0.15595295 -0.96055269 -0.56281132 -0.23272574 -0.7746433
		 -0.44151765 -0.15595295 -0.86652708 -0.77464324 -0.23272574 -0.56281126 -0.68767983 -0.15595295 -0.68767977
		 -0.91064769 -0.23272574 -0.29588735 -0.86652702 -0.15595295 -0.44151756 -0.95751143 -0.23272574 1.8626451e-09
		 -0.96055245 -0.15595295 -0.15213656 -0.91064769 -0.23272574 0.29588735 -0.96055245 -0.15595295 0.15213656
		 -0.77464312 -0.23272574 0.56281114 -0.86652684 -0.15595295 0.44151753 -0.56281132 -0.23272574 0.774643
		 -0.68767971 -0.15595295 0.68767965 -0.29588744 -0.23272574 0.91064751 -0.44151765 -0.15595295 0.86652678
		 -7.4505806e-09 -0.23272574 0.95751137 -0.15213662 -0.15595295 0.96055233 0.29588729 -0.23272574 0.91064745
		 0.1521365 -0.15595295 0.96055233 0.56281102 -0.23272574 0.77464294 0.44151738 -0.15595295 0.86652678
		 0.77464294 -0.23272574 0.56281114 0.68767947 -0.15595295 0.68767953 0.91064739 -0.23272574 0.29588729
		 0.86652678 -0.15595295 0.44151747 0.95751143 -0.23272574 -2.2351742e-08 0.96055233 -0.15595295 0.15213653
		 0.96055269 -0.15595295 -0.15213662 0.79419923 -0.078217231 -0.57701951 0.87732863 -2.7939677e-08 -0.44702122
		 0.93363702 -0.078217231 -0.30335712 0.57701945 -0.078217231 -0.79419929 0.69625193 -2.7939677e-08 -0.69625193
		 0.30335709 -0.078217231 -0.93363714 0.44702119 -2.7939677e-08 -0.87732863 1.8626451e-08 -0.078217231 -0.98168415
		 0.15403299 -2.7939677e-08 -0.97252619 -0.30335706 -0.078217231 -0.93363702 -0.15403296 -2.7939677e-08 -0.97252619
		 -0.57701945 -0.078217231 -0.79419905 -0.44702119 -2.7939677e-08 -0.87732852 -0.79419905 -0.078217231 -0.57701939
		 -0.69625187 -2.7939677e-08 -0.69625181 -0.93363684 -0.078217231 -0.30335698 -0.87732828 -2.7939677e-08 -0.44702107
		 -0.98168373 -0.078217231 0 -0.97252584 -2.7939677e-08 -0.15403296 -0.93363684 -0.078217231 0.30335698
		 -0.97252584 -2.7939677e-08 0.15403296 -0.79419887 -0.078217231 0.57701927 -0.87732828 -2.7939677e-08 0.44702107
		 -0.57701945 -0.078217231 0.79419887 -0.69625187 -2.7939677e-08 0.69625163 -0.30335706 -0.078217231 0.93363672
		 -0.44702116 -2.7939677e-08 0.87732816 -9.3132257e-09 -0.078217231 0.98168367 -0.15403296 -2.7939677e-08 0.97252572
		 0.30335689 -0.078217231 0.93363672 0.15403295 -2.7939677e-08 0.97252572 0.5770191 -0.078217231 0.79419875
		 0.44702092 -2.7939677e-08 0.87732816 0.79419869 -0.078217231 0.57701921 0.69625151 -2.7939677e-08 0.69625151
		 0.93363667 -0.078217231 0.30335695 0.8773281 -2.7939677e-08 0.44702104 0.98168373 -0.078217231 -2.2351742e-08
		 0.9725256 -2.7939677e-08 0.15403295 0.97252589 -2.7939677e-08 -0.15403304;
	setAttr ".vt[1162:1327]" 0.20480733 -0.96937245 -0.10435454 0.16253608 -0.96937245 -0.16253601
		 0.10435461 -0.96937245 -0.20480731 0.03595816 -0.96937245 -0.22703065 -0.035958122 -0.96937245 -0.22703063
		 -0.10435458 -0.96937245 -0.20480728 -0.16253594 -0.96937245 -0.16253597 -0.20480719 -0.96937245 -0.10435452
		 -0.22703052 -0.96937245 -0.035958111 -0.22703053 -0.96937245 0.035958111 -0.20480719 -0.96937245 0.10435451
		 -0.16253594 -0.96937245 0.16253595 -0.10435458 -0.96937245 0.20480724 -0.035958122 -0.96937245 0.22703056
		 0.03595816 -0.96937245 0.22703055 0.10435452 -0.96937245 0.20480722 0.16253589 -0.96937245 0.16253594
		 0.20480722 -0.96937245 0.10435449 0.22703056 -0.96937245 0.035958104 0.22703058 -0.96937245 -0.035958126
		 0.33573756 -0.92103148 -0.17106682 0.26644287 -0.92103148 -0.26644284 0.1710669 -0.92103148 -0.33573753
		 0.058945671 -0.92103148 -0.37216789 -0.058945641 -0.92103148 -0.37216789 -0.17106685 -0.92103148 -0.33573747
		 -0.26644272 -0.92103148 -0.26644275 -0.33573741 -0.92103148 -0.17106676 -0.37216786 -0.92103148 -0.058945585
		 -0.37216786 -0.92103148 0.058945585 -0.33573744 -0.92103148 0.17106675 -0.26644272 -0.92103148 0.26644272
		 -0.17106685 -0.92103148 0.33573738 -0.058945641 -0.92103148 0.37216774 0.058945578 -0.92103148 0.37216774
		 0.1710667 -0.92103148 0.33573735 0.26644269 -0.92103148 0.26644269 0.33573738 -0.92103148 0.17106673
		 0.37216768 -0.92103148 0.058945574 0.37216777 -0.92103148 -0.058945611 0.45840079 -0.85001183 -0.23356685
		 0.36378884 -0.85001183 -0.3637889 0.23356688 -0.85001183 -0.45840076 0.080481701 -0.85001183 -0.50814116
		 -0.080481663 -0.85001183 -0.5081411 -0.23356685 -0.85001183 -0.45840067 -0.36378881 -0.85001183 -0.36378878
		 -0.4584007 -0.85001183 -0.23356678 -0.50814116 -0.85001183 -0.080481619 -0.5081411 -0.85001183 0.080481619
		 -0.4584007 -0.85001183 0.23356675 -0.36378881 -0.85001183 0.36378875 -0.23356685 -0.85001183 0.45840058
		 -0.080481663 -0.85001183 0.50814092 0.080481611 -0.85001183 0.50814092 0.23356667 -0.85001183 0.45840055
		 0.36378866 -0.85001183 0.36378872 0.45840046 -0.85001183 0.23356673 0.50814074 -0.85001183 0.080481604
		 0.50814098 -0.85001183 -0.080481648 0.56977665 -0.75806195 -0.29031569 0.45217729 -0.75806195 -0.45217726
		 0.29031569 -0.75806195 -0.56977665 0.100036 -0.75806195 -0.63160223 -0.10003596 -0.75806195 -0.63160217
		 -0.29031563 -0.75806195 -0.56977654 -0.45217714 -0.75806195 -0.45217717 -0.56977648 -0.75806195 -0.2903156
		 -0.63160211 -0.75806195 -0.10003594 -0.63160211 -0.75806195 0.10003594 -0.56977642 -0.75806195 0.29031557
		 -0.45217717 -0.75806195 0.45217711 -0.29031563 -0.75806195 0.56977636 -0.10003597 -0.75806195 0.63160193
		 0.10003591 -0.75806195 0.63160193 0.29031545 -0.75806195 0.56977636 0.45217699 -0.75806195 0.45217708
		 0.5697763 -0.75806195 0.29031554 0.63160181 -0.75806195 0.10003591 0.63160205 -0.75806195 -0.10003597
		 0.66712278 -0.64744604 -0.33991599 0.52943158 -0.64744604 -0.52943158 0.33991596 -0.64744604 -0.66712266
		 0.11712705 -0.64744604 -0.73951119 -0.11712711 -0.64744604 -0.73951119 -0.33991599 -0.64744604 -0.6671226
		 -0.5294314 -0.64744604 -0.52943146 -0.66712248 -0.64744604 -0.33991587 -0.73951101 -0.64744604 -0.11712703
		 -0.73951101 -0.64744604 0.11712703 -0.66712248 -0.64744604 0.33991587 -0.5294314 -0.64744604 0.52943134
		 -0.3399159 -0.64744604 0.66712236 -0.11712702 -0.64744604 0.73951089 0.11712696 -0.64744604 0.73951089
		 0.33991566 -0.64744604 0.66712236 0.52943128 -0.64744604 0.52943134 0.66712242 -0.64744604 0.33991584
		 0.73951083 -0.64744604 0.117127 0.73951101 -0.64744604 -0.11712707 0.74804205 -0.52088785 -0.38114643
		 0.59364963 -0.52088785 -0.59364951 0.3811464 -0.52088785 -0.74804199 0.13133404 -0.52088785 -0.82921094
		 -0.13133419 -0.52088785 -0.82921088 -0.38114646 -0.52088785 -0.74804193 -0.59364927 -0.52088785 -0.59364933
		 -0.74804175 -0.52088785 -0.38114631 -0.8292107 -0.52088785 -0.13133407 -0.8292107 -0.52088785 0.13133407
		 -0.74804169 -0.52088785 0.38114631 -0.59364927 -0.52088785 0.59364927 -0.38114625 -0.52088785 0.74804169
		 -0.13133399 -0.52088785 0.82921064 0.13133404 -0.52088785 0.82921058 0.38114622 -0.52088785 0.74804163
		 0.59364921 -0.52088785 0.59364921 0.74804163 -0.52088785 0.38114625 0.82921058 -0.52088785 0.13133404
		 0.82921076 -0.52088785 -0.13133413 0.81054211 -0.38150379 -0.41299182 0.64324993 -0.38150379 -0.64324987
		 0.41299182 -0.38150379 -0.81054205 0.14230725 -0.38150379 -0.89849269 -0.14230731 -0.38150379 -0.89849269
		 -0.41299176 -0.38150379 -0.81054199 -0.64324963 -0.38150379 -0.64324963 -0.81054181 -0.38150379 -0.41299167
		 -0.8984924 -0.38150379 -0.14230722 -0.89849246 -0.38150379 0.14230722 -0.81054181 -0.38150379 0.41299167
		 -0.64324963 -0.38150379 0.64324963 -0.41299167 -0.38150379 0.81054175 -0.14230719 -0.38150379 0.89849246
		 0.14230725 -0.38150379 0.8984924 0.41299164 -0.38150379 0.81054163 0.64324951 -0.38150379 0.64324951
		 0.81054163 -0.38150379 0.41299161 0.89849234 -0.38150379 0.14230721 0.89849257 -0.38150379 -0.14230728
		 0.85308385 -0.23272572 -0.43466794 0.67701113 -0.23272572 -0.67701119 0.43466794 -0.23272572 -0.85308385
		 0.1497764 -0.23272572 -0.9456507 -0.14977637 -0.23272572 -0.94565064 -0.43466792 -0.23272572 -0.85308373
		 -0.67701113 -0.23272572 -0.67701107 -0.85308373 -0.23272572 -0.43466783 -0.94565046 -0.23272572 -0.14977631
		 -0.94565046 -0.23272572 0.14977631 -0.85308361 -0.23272572 0.43466777 -0.67701101 -0.23272572 0.67701089
		 -0.43466792 -0.23272572 0.85308349 -0.14977637 -0.23272572 0.94565028 0.14977631 -0.23272572 0.94565034
		 0.43466768 -0.23272572 0.85308343 0.67701077 -0.23272572 0.67701089 0.85308343 -0.23272572 0.43466771
		 0.94565028 -0.23272572 0.14977628 0.94565058 -0.23272572 -0.14977637 0.8746199 -0.078217231 -0.4456411
		 0.69410229 -0.078217231 -0.69410229 0.44564107 -0.078217231 -0.87461984 0.15355746 -0.078217231 -0.96952355
		 -0.15355742 -0.078217231 -0.96952355 -0.44564104 -0.078217231 -0.87461972;
	setAttr ".vt[1328:1493]" -0.69410217 -0.078217231 -0.69410217 -0.8746196 -0.078217231 -0.44564098
		 -0.96952319 -0.078217231 -0.1535574 -0.96952319 -0.078217231 0.1535574 -0.87461948 -0.078217231 0.44564095
		 -0.69410205 -0.078217231 0.69410205 -0.44564104 -0.078217231 0.87461954 -0.15355742 -0.078217231 0.96952325
		 0.15355736 -0.078217231 0.96952319 0.44564077 -0.078217231 0.87461954 0.69410193 -0.078217231 0.69410193
		 0.87461948 -0.078217231 0.44564086 0.96952313 -0.078217231 0.15355738 0.96952337 -0.078217231 -0.15355746
		 0.87461996 0.078217171 -0.4456411 0.69410229 0.078217171 -0.69410235 0.44564107 0.078217171 -0.87461984
		 0.15355746 0.078217171 -0.96952355 -0.15355742 0.078217171 -0.96952349 -0.44564104 0.078217171 -0.87461972
		 -0.69410217 0.078217171 -0.69410211 -0.87461966 0.078217171 -0.44564098 -0.96952325 0.078217171 -0.1535574
		 -0.96952325 0.078217171 0.1535574 -0.8746196 0.078217171 0.44564092 -0.69410205 0.078217171 0.69410199
		 -0.44564104 0.078217171 0.87461954 -0.15355742 0.078217171 0.96952313 0.15355736 0.078217171 0.96952319
		 0.44564077 0.078217171 0.87461948 0.69410187 0.078217171 0.69410199 0.87461942 0.078217171 0.44564086
		 0.96952313 0.078217171 0.15355738 0.96952343 0.078217171 -0.15355746 0.85308391 0.23272568 -0.43466794
		 0.67701119 0.23272568 -0.67701119 0.43466794 0.23272568 -0.85308379 0.1497764 0.23272568 -0.9456507
		 -0.14977637 0.23272568 -0.9456507 -0.43466792 0.23272568 -0.85308373 -0.67701113 0.23272568 -0.67701101
		 -0.85308373 0.23272568 -0.43466783 -0.9456504 0.23272568 -0.14977631 -0.94565046 0.23272568 0.14977631
		 -0.85308361 0.23272568 0.4346678 -0.67701101 0.23272568 0.67701095 -0.43466792 0.23272568 0.85308349
		 -0.14977637 0.23272568 0.94565034 0.14977631 0.23272568 0.94565034 0.43466765 0.23272568 0.85308349
		 0.67701077 0.23272568 0.67701089 0.85308343 0.23272568 0.43466774 0.94565028 0.23272568 0.14977628
		 0.94565052 0.23272568 -0.14977637 0.81054211 0.38150376 -0.41299182 0.64324987 0.38150376 -0.64324987
		 0.41299182 0.38150376 -0.81054211 0.14230725 0.38150376 -0.89849275 -0.14230731 0.38150376 -0.89849275
		 -0.41299176 0.38150376 -0.81054199 -0.64324963 0.38150376 -0.64324969 -0.81054181 0.38150376 -0.41299167
		 -0.89849246 0.38150376 -0.14230722 -0.89849246 0.38150376 0.14230722 -0.81054181 0.38150376 0.41299164
		 -0.64324963 0.38150376 0.64324963 -0.41299164 0.38150376 0.81054175 -0.14230719 0.38150376 0.89849246
		 0.14230725 0.38150376 0.8984924 0.41299161 0.38150376 0.81054169 0.64324951 0.38150376 0.64324951
		 0.81054163 0.38150376 0.41299158 0.89849228 0.38150376 0.14230721 0.89849257 0.38150376 -0.14230728
		 0.74804205 0.52088797 -0.38114646 0.59364963 0.52088797 -0.59364951 0.38114643 0.52088797 -0.74804199
		 0.13133404 0.52088797 -0.82921094 -0.13133419 0.52088797 -0.82921094 -0.38114643 0.52088797 -0.74804199
		 -0.59364927 0.52088797 -0.59364933 -0.74804175 0.52088797 -0.38114631 -0.8292107 0.52088797 -0.13133407
		 -0.8292107 0.52088797 0.13133407 -0.74804175 0.52088797 0.38114631 -0.59364927 0.52088797 0.59364927
		 -0.38114625 0.52088797 0.74804175 -0.13133398 0.52088797 0.82921064 0.13133404 0.52088797 0.82921064
		 0.38114622 0.52088797 0.74804163 0.59364921 0.52088797 0.59364921 0.74804163 0.52088797 0.38114628
		 0.82921058 0.52088797 0.13133404 0.82921076 0.52088797 -0.13133413 0.66712272 0.6474461 -0.33991599
		 0.52943164 0.6474461 -0.52943158 0.33991596 0.6474461 -0.66712272 0.11712705 0.6474461 -0.73951119
		 -0.11712711 0.6474461 -0.73951113 -0.33991599 0.6474461 -0.6671226 -0.5294314 0.6474461 -0.5294314
		 -0.66712248 0.6474461 -0.33991587 -0.73951101 0.6474461 -0.11712703 -0.73951101 0.6474461 0.11712703
		 -0.66712242 0.6474461 0.33991587 -0.5294314 0.6474461 0.52943134 -0.3399159 0.6474461 0.66712242
		 -0.11712702 0.6474461 0.73951089 0.11712696 0.6474461 0.73951083 0.33991569 0.6474461 0.66712236
		 0.52943122 0.6474461 0.52943134 0.66712236 0.6474461 0.33991584 0.73951077 0.6474461 0.117127
		 0.73951095 0.6474461 -0.11712707 0.56977671 0.75806189 -0.29031569 0.45217729 0.75806189 -0.45217729
		 0.29031566 0.75806189 -0.56977659 0.100036 0.75806189 -0.63160217 -0.10003596 0.75806189 -0.63160217
		 -0.29031563 0.75806189 -0.56977654 -0.45217714 0.75806189 -0.45217717 -0.56977642 0.75806189 -0.2903156
		 -0.63160205 0.75806189 -0.10003594 -0.63160211 0.75806189 0.10003594 -0.56977642 0.75806189 0.29031557
		 -0.45217714 0.75806189 0.45217711 -0.29031563 0.75806189 0.56977636 -0.10003597 0.75806189 0.63160193
		 0.10003591 0.75806189 0.63160193 0.29031545 0.75806189 0.56977636 0.45217699 0.75806189 0.45217708
		 0.5697763 0.75806189 0.29031554 0.63160187 0.75806189 0.10003591 0.63160205 0.75806189 -0.10003597
		 0.45840076 0.85001177 -0.23356685 0.36378887 0.85001177 -0.3637889 0.23356688 0.85001177 -0.45840073
		 0.080481701 0.85001177 -0.5081411 -0.080481663 0.85001177 -0.5081411 -0.23356685 0.85001177 -0.45840067
		 -0.36378881 0.85001177 -0.36378881 -0.45840073 0.85001177 -0.23356676 -0.5081411 0.85001177 -0.080481619
		 -0.50814116 0.85001177 0.080481619 -0.4584007 0.85001177 0.23356675 -0.36378884 0.85001177 0.36378872
		 -0.23356685 0.85001177 0.45840055 -0.080481663 0.85001177 0.50814092 0.080481611 0.85001177 0.50814092
		 0.23356667 0.85001177 0.45840055 0.36378866 0.85001177 0.36378872 0.45840046 0.85001177 0.23356673
		 0.50814074 0.85001177 0.080481604 0.50814098 0.85001177 -0.080481648 0.33573759 0.92103148 -0.17106682
		 0.26644287 0.92103148 -0.26644281 0.1710669 0.92103148 -0.3357375 0.058945671 0.92103148 -0.37216789
		 -0.058945641 0.92103148 -0.37216789 -0.17106687 0.92103148 -0.33573747 -0.26644272 0.92103148 -0.26644275
		 -0.33573741 0.92103148 -0.17106676 -0.37216786 0.92103148 -0.058945585 -0.37216783 0.92103148 0.058945585
		 -0.33573741 0.92103148 0.17106675 -0.26644272 0.92103148 0.26644272;
	setAttr ".vt[1494:1561]" -0.17106685 0.92103148 0.33573741 -0.058945641 0.92103148 0.37216777
		 0.058945578 0.92103148 0.37216774 0.1710667 0.92103148 0.33573735 0.26644269 0.92103148 0.26644266
		 0.33573741 0.92103148 0.17106673 0.37216771 0.92103148 0.058945574 0.3721678 0.92103148 -0.058945611
		 0.20480731 0.96937239 -0.10435455 0.16253608 0.96937239 -0.16253601 0.10435461 0.96937239 -0.20480733
		 0.035958156 0.96937239 -0.22703063 -0.035958122 0.96937239 -0.22703063 -0.10435458 0.96937239 -0.20480728
		 -0.16253595 0.96937239 -0.16253597 -0.20480719 0.96937239 -0.10435451 -0.22703055 0.96937239 -0.035958111
		 -0.22703055 0.96937239 0.035958111 -0.20480719 0.96937239 0.1043545 -0.16253595 0.96937239 0.16253595
		 -0.10435458 0.96937239 0.20480725 -0.035958126 0.96937239 0.22703055 0.03595816 0.96937239 0.22703055
		 0.10435452 0.96937239 0.20480721 0.16253589 0.96937239 0.16253594 0.20480722 0.96937239 0.10435449
		 0.22703055 0.96937239 0.035958104 0.22703055 0.96937239 -0.035958126 0.091778725 -0.99179232 -0.046763629
		 0.072836086 -0.99179232 -0.072836056 0.046763688 -0.99179232 -0.091778785 0.016113665 -0.99179232 -0.10173756
		 -0.016113631 -0.99179232 -0.10173755 -0.046763651 -0.99179232 -0.09177877 -0.072836049 -0.99179232 -0.072836034
		 -0.091778688 -0.99179232 -0.04676361 -0.10173744 -0.99179232 -0.016113643 -0.10173744 -0.99179232 0.016113643
		 -0.091778688 -0.99179232 0.046763606 -0.072836049 -0.99179232 0.072836027 -0.046763651 -0.99179232 0.09177874
		 -0.016113631 -0.99179232 0.10173751 0.016113665 -0.99179232 0.10173751 0.046763558 -0.99179232 0.091778733
		 0.072835959 -0.99179232 0.072836012 0.091778725 -0.99179232 0.046763603 0.10173748 -0.99179232 0.016113639
		 0.10173748 -0.99179232 -0.016113648 0.091778725 0.99179226 -0.046763629 0.072836086 0.99179226 -0.072836056
		 0.046763688 0.99179226 -0.091778785 0.016113665 0.99179226 -0.10173756 -0.016113631 0.99179226 -0.10173755
		 -0.046763651 0.99179226 -0.09177877 -0.072836049 0.99179226 -0.072836034 -0.091778688 0.99179226 -0.04676361
		 -0.10173744 0.99179226 -0.016113643 -0.10173744 0.99179226 0.016113643 -0.091778688 0.99179226 0.046763606
		 -0.072836049 0.99179226 0.072836027 -0.046763651 0.99179226 0.09177874 -0.016113631 0.99179226 0.10173751
		 0.016113665 0.99179226 0.10173751 0.046763558 0.99179226 0.091778733 0.072835959 0.99179226 0.072836012
		 0.091778725 0.99179226 0.046763603 0.10173748 0.99179226 0.016113639 0.10173748 0.99179226 -0.016113648;
	setAttr -s 3120 ".ed";
	setAttr ".ed[0:165]"  0 782 1 782 1 1 1 786 1 786 2 1 2 789 1 789 3 1 3 792 1
		 792 4 1 4 795 1 795 5 1 5 798 1 798 6 1 6 801 1 801 7 1 7 804 1 804 8 1 8 807 1 807 9 1
		 9 810 1 810 10 1 10 813 1 813 11 1 11 816 1 816 12 1 12 819 1 819 13 1 13 822 1 822 14 1
		 14 825 1 825 15 1 15 828 1 828 16 1 16 831 1 831 17 1 17 834 1 834 18 1 18 837 1
		 837 19 1 19 840 1 840 0 1 20 784 1 784 21 1 21 788 1 788 22 1 22 791 1 791 23 1 23 794 1
		 794 24 1 24 797 1 797 25 1 25 800 1 800 26 1 26 803 1 803 27 1 27 806 1 806 28 1
		 28 809 1 809 29 1 29 812 1 812 30 1 30 815 1 815 31 1 31 818 1 818 32 1 32 821 1
		 821 33 1 33 824 1 824 34 1 34 827 1 827 35 1 35 830 1 830 36 1 36 833 1 833 37 1
		 37 836 1 836 38 1 38 839 1 839 39 1 39 841 1 841 20 1 40 843 1 843 41 1 41 846 1
		 846 42 1 42 848 1 848 43 1 43 850 1 850 44 1 44 852 1 852 45 1 45 854 1 854 46 1
		 46 856 1 856 47 1 47 858 1 858 48 1 48 860 1 860 49 1 49 862 1 862 50 1 50 864 1
		 864 51 1 51 866 1 866 52 1 52 868 1 868 53 1 53 870 1 870 54 1 54 872 1 872 55 1
		 55 874 1 874 56 1 56 876 1 876 57 1 57 878 1 878 58 1 58 880 1 880 59 1 59 881 1
		 881 40 1 60 883 1 883 61 1 61 886 1 886 62 1 62 888 1 888 63 1 63 890 1 890 64 1
		 64 892 1 892 65 1 65 894 1 894 66 1 66 896 1 896 67 1 67 898 1 898 68 1 68 900 1
		 900 69 1 69 902 1 902 70 1 70 904 1 904 71 1 71 906 1 906 72 1 72 908 1 908 73 1
		 73 910 1 910 74 1 74 912 1 912 75 1 75 914 1 914 76 1 76 916 1 916 77 1 77 918 1
		 918 78 1 78 920 1 920 79 1 79 921 1 921 60 1 80 923 1 923 81 1 81 926 1 926 82 1
		 82 928 1 928 83 1;
	setAttr ".ed[166:331]" 83 930 1 930 84 1 84 932 1 932 85 1 85 934 1 934 86 1
		 86 936 1 936 87 1 87 938 1 938 88 1 88 940 1 940 89 1 89 942 1 942 90 1 90 944 1
		 944 91 1 91 946 1 946 92 1 92 948 1 948 93 1 93 950 1 950 94 1 94 952 1 952 95 1
		 95 954 1 954 96 1 96 956 1 956 97 1 97 958 1 958 98 1 98 960 1 960 99 1 99 961 1
		 961 80 1 100 963 1 963 101 1 101 966 1 966 102 1 102 968 1 968 103 1 103 970 1 970 104 1
		 104 972 1 972 105 1 105 974 1 974 106 1 106 976 1 976 107 1 107 978 1 978 108 1 108 980 1
		 980 109 1 109 982 1 982 110 1 110 984 1 984 111 1 111 986 1 986 112 1 112 988 1 988 113 1
		 113 990 1 990 114 1 114 992 1 992 115 1 115 994 1 994 116 1 116 996 1 996 117 1 117 998 1
		 998 118 1 118 1000 1 1000 119 1 119 1001 1 1001 100 1 120 1003 1 1003 121 1 121 1006 1
		 1006 122 1 122 1008 1 1008 123 1 123 1010 1 1010 124 1 124 1012 1 1012 125 1 125 1014 1
		 1014 126 1 126 1016 1 1016 127 1 127 1018 1 1018 128 1 128 1020 1 1020 129 1 129 1022 1
		 1022 130 1 130 1024 1 1024 131 1 131 1026 1 1026 132 1 132 1028 1 1028 133 1 133 1030 1
		 1030 134 1 134 1032 1 1032 135 1 135 1034 1 1034 136 1 136 1036 1 1036 137 1 137 1038 1
		 1038 138 1 138 1040 1 1040 139 1 139 1041 1 1041 120 1 140 1043 1 1043 141 1 141 1046 1
		 1046 142 1 142 1048 1 1048 143 1 143 1050 1 1050 144 1 144 1052 1 1052 145 1 145 1054 1
		 1054 146 1 146 1056 1 1056 147 1 147 1058 1 1058 148 1 148 1060 1 1060 149 1 149 1062 1
		 1062 150 1 150 1064 1 1064 151 1 151 1066 1 1066 152 1 152 1068 1 1068 153 1 153 1070 1
		 1070 154 1 154 1072 1 1072 155 1 155 1074 1 1074 156 1 156 1076 1 1076 157 1 157 1078 1
		 1078 158 1 158 1080 1 1080 159 1 159 1081 1 1081 140 1 160 1083 1 1083 161 1 161 1086 1
		 1086 162 1 162 1088 1 1088 163 1 163 1090 1 1090 164 1 164 1092 1 1092 165 1 165 1094 1
		 1094 166 1;
	setAttr ".ed[332:497]" 166 1096 1 1096 167 1 167 1098 1 1098 168 1 168 1100 1
		 1100 169 1 169 1102 1 1102 170 1 170 1104 1 1104 171 1 171 1106 1 1106 172 1 172 1108 1
		 1108 173 1 173 1110 1 1110 174 1 174 1112 1 1112 175 1 175 1114 1 1114 176 1 176 1116 1
		 1116 177 1 177 1118 1 1118 178 1 178 1120 1 1120 179 1 179 1121 1 1121 160 1 180 1123 1
		 1123 181 1 181 1126 1 1126 182 1 182 1128 1 1128 183 1 183 1130 1 1130 184 1 184 1132 1
		 1132 185 1 185 1134 1 1134 186 1 186 1136 1 1136 187 1 187 1138 1 1138 188 1 188 1140 1
		 1140 189 1 189 1142 1 1142 190 1 190 1144 1 1144 191 1 191 1146 1 1146 192 1 192 1148 1
		 1148 193 1 193 1150 1 1150 194 1 194 1152 1 1152 195 1 195 1154 1 1154 196 1 196 1156 1
		 1156 197 1 197 1158 1 1158 198 1 198 1160 1 1160 199 1 199 1161 1 1161 180 1 200 383 1
		 383 201 1 201 386 1 386 202 1 202 388 1 388 203 1 203 390 1 390 204 1 204 392 1 392 205 1
		 205 394 1 394 206 1 206 396 1 396 207 1 207 398 1 398 208 1 208 400 1 400 209 1 209 402 1
		 402 210 1 210 404 1 404 211 1 211 406 1 406 212 1 212 408 1 408 213 1 213 410 1 410 214 1
		 214 412 1 412 215 1 215 414 1 414 216 1 216 416 1 416 217 1 217 418 1 418 218 1 218 420 1
		 420 219 1 219 421 1 421 200 1 220 423 1 423 221 1 221 426 1 426 222 1 222 428 1 428 223 1
		 223 430 1 430 224 1 224 432 1 432 225 1 225 434 1 434 226 1 226 436 1 436 227 1 227 438 1
		 438 228 1 228 440 1 440 229 1 229 442 1 442 230 1 230 444 1 444 231 1 231 446 1 446 232 1
		 232 448 1 448 233 1 233 450 1 450 234 1 234 452 1 452 235 1 235 454 1 454 236 1 236 456 1
		 456 237 1 237 458 1 458 238 1 238 460 1 460 239 1 239 461 1 461 220 1 240 463 1 463 241 1
		 241 466 1 466 242 1 242 468 1 468 243 1 243 470 1 470 244 1 244 472 1 472 245 1 245 474 1
		 474 246 1 246 476 1 476 247 1 247 478 1 478 248 1 248 480 1 480 249 1;
	setAttr ".ed[498:663]" 249 482 1 482 250 1 250 484 1 484 251 1 251 486 1 486 252 1
		 252 488 1 488 253 1 253 490 1 490 254 1 254 492 1 492 255 1 255 494 1 494 256 1 256 496 1
		 496 257 1 257 498 1 498 258 1 258 500 1 500 259 1 259 501 1 501 240 1 260 503 1 503 261 1
		 261 506 1 506 262 1 262 508 1 508 263 1 263 510 1 510 264 1 264 512 1 512 265 1 265 514 1
		 514 266 1 266 516 1 516 267 1 267 518 1 518 268 1 268 520 1 520 269 1 269 522 1 522 270 1
		 270 524 1 524 271 1 271 526 1 526 272 1 272 528 1 528 273 1 273 530 1 530 274 1 274 532 1
		 532 275 1 275 534 1 534 276 1 276 536 1 536 277 1 277 538 1 538 278 1 278 540 1 540 279 1
		 279 541 1 541 260 1 280 543 1 543 281 1 281 546 1 546 282 1 282 548 1 548 283 1 283 550 1
		 550 284 1 284 552 1 552 285 1 285 554 1 554 286 1 286 556 1 556 287 1 287 558 1 558 288 1
		 288 560 1 560 289 1 289 562 1 562 290 1 290 564 1 564 291 1 291 566 1 566 292 1 292 568 1
		 568 293 1 293 570 1 570 294 1 294 572 1 572 295 1 295 574 1 574 296 1 296 576 1 576 297 1
		 297 578 1 578 298 1 298 580 1 580 299 1 299 581 1 581 280 1 300 583 1 583 301 1 301 586 1
		 586 302 1 302 588 1 588 303 1 303 590 1 590 304 1 304 592 1 592 305 1 305 594 1 594 306 1
		 306 596 1 596 307 1 307 598 1 598 308 1 308 600 1 600 309 1 309 602 1 602 310 1 310 604 1
		 604 311 1 311 606 1 606 312 1 312 608 1 608 313 1 313 610 1 610 314 1 314 612 1 612 315 1
		 315 614 1 614 316 1 316 616 1 616 317 1 317 618 1 618 318 1 318 620 1 620 319 1 319 621 1
		 621 300 1 320 623 1 623 321 1 321 626 1 626 322 1 322 628 1 628 323 1 323 630 1 630 324 1
		 324 632 1 632 325 1 325 634 1 634 326 1 326 636 1 636 327 1 327 638 1 638 328 1 328 640 1
		 640 329 1 329 642 1 642 330 1 330 644 1 644 331 1 331 646 1 646 332 1;
	setAttr ".ed[664:829]" 332 648 1 648 333 1 333 650 1 650 334 1 334 652 1 652 335 1
		 335 654 1 654 336 1 336 656 1 656 337 1 337 658 1 658 338 1 338 660 1 660 339 1 339 661 1
		 661 320 1 340 663 1 663 341 1 341 666 1 666 342 1 342 668 1 668 343 1 343 670 1 670 344 1
		 344 672 1 672 345 1 345 674 1 674 346 1 346 676 1 676 347 1 347 678 1 678 348 1 348 680 1
		 680 349 1 349 682 1 682 350 1 350 684 1 684 351 1 351 686 1 686 352 1 352 688 1 688 353 1
		 353 690 1 690 354 1 354 692 1 692 355 1 355 694 1 694 356 1 356 696 1 696 357 1 357 698 1
		 698 358 1 358 700 1 700 359 1 359 701 1 701 340 1 360 703 1 703 361 1 361 706 1 706 362 1
		 362 708 1 708 363 1 363 710 1 710 364 1 364 712 1 712 365 1 365 714 1 714 366 1 366 716 1
		 716 367 1 367 718 1 718 368 1 368 720 1 720 369 1 369 722 1 722 370 1 370 724 1 724 371 1
		 371 726 1 726 372 1 372 728 1 728 373 1 373 730 1 730 374 1 374 732 1 732 375 1 375 734 1
		 734 376 1 376 736 1 736 377 1 377 738 1 738 378 1 378 740 1 740 379 1 379 741 1 741 360 1
		 0 785 1 785 20 1 1 783 1 783 21 1 2 787 1 787 22 1 3 790 1 790 23 1 4 793 1 793 24 1
		 5 796 1 796 25 1 6 799 1 799 26 1 7 802 1 802 27 1 8 805 1 805 28 1 9 808 1 808 29 1
		 10 811 1 811 30 1 11 814 1 814 31 1 12 817 1 817 32 1 13 820 1 820 33 1 14 823 1
		 823 34 1 15 826 1 826 35 1 16 829 1 829 36 1 17 832 1 832 37 1 18 835 1 835 38 1
		 19 838 1 838 39 1 20 844 1 844 40 1 21 842 1 842 41 1 22 845 1 845 42 1 23 847 1
		 847 43 1 24 849 1 849 44 1 25 851 1 851 45 1 26 853 1 853 46 1 27 855 1 855 47 1
		 28 857 1 857 48 1 29 859 1 859 49 1 30 861 1 861 50 1 31 863 1 863 51 1 32 865 1
		 865 52 1 33 867 1 867 53 1 34 869 1 869 54 1;
	setAttr ".ed[830:995]" 35 871 1 871 55 1 36 873 1 873 56 1 37 875 1 875 57 1
		 38 877 1 877 58 1 39 879 1 879 59 1 40 884 1 884 60 1 41 882 1 882 61 1 42 885 1
		 885 62 1 43 887 1 887 63 1 44 889 1 889 64 1 45 891 1 891 65 1 46 893 1 893 66 1
		 47 895 1 895 67 1 48 897 1 897 68 1 49 899 1 899 69 1 50 901 1 901 70 1 51 903 1
		 903 71 1 52 905 1 905 72 1 53 907 1 907 73 1 54 909 1 909 74 1 55 911 1 911 75 1
		 56 913 1 913 76 1 57 915 1 915 77 1 58 917 1 917 78 1 59 919 1 919 79 1 60 924 1
		 924 80 1 61 922 1 922 81 1 62 925 1 925 82 1 63 927 1 927 83 1 64 929 1 929 84 1
		 65 931 1 931 85 1 66 933 1 933 86 1 67 935 1 935 87 1 68 937 1 937 88 1 69 939 1
		 939 89 1 70 941 1 941 90 1 71 943 1 943 91 1 72 945 1 945 92 1 73 947 1 947 93 1
		 74 949 1 949 94 1 75 951 1 951 95 1 76 953 1 953 96 1 77 955 1 955 97 1 78 957 1
		 957 98 1 79 959 1 959 99 1 80 964 1 964 100 1 81 962 1 962 101 1 82 965 1 965 102 1
		 83 967 1 967 103 1 84 969 1 969 104 1 85 971 1 971 105 1 86 973 1 973 106 1 87 975 1
		 975 107 1 88 977 1 977 108 1 89 979 1 979 109 1 90 981 1 981 110 1 91 983 1 983 111 1
		 92 985 1 985 112 1 93 987 1 987 113 1 94 989 1 989 114 1 95 991 1 991 115 1 96 993 1
		 993 116 1 97 995 1 995 117 1 98 997 1 997 118 1 99 999 1 999 119 1 100 1004 1 1004 120 1
		 101 1002 1 1002 121 1 102 1005 1 1005 122 1 103 1007 1 1007 123 1 104 1009 1 1009 124 1
		 105 1011 1 1011 125 1 106 1013 1 1013 126 1 107 1015 1 1015 127 1 108 1017 1 1017 128 1
		 109 1019 1 1019 129 1 110 1021 1 1021 130 1 111 1023 1 1023 131 1 112 1025 1 1025 132 1
		 113 1027 1 1027 133 1 114 1029 1 1029 134 1 115 1031 1 1031 135 1 116 1033 1 1033 136 1
		 117 1035 1 1035 137 1;
	setAttr ".ed[996:1161]" 118 1037 1 1037 138 1 119 1039 1 1039 139 1 120 1044 1
		 1044 140 1 121 1042 1 1042 141 1 122 1045 1 1045 142 1 123 1047 1 1047 143 1 124 1049 1
		 1049 144 1 125 1051 1 1051 145 1 126 1053 1 1053 146 1 127 1055 1 1055 147 1 128 1057 1
		 1057 148 1 129 1059 1 1059 149 1 130 1061 1 1061 150 1 131 1063 1 1063 151 1 132 1065 1
		 1065 152 1 133 1067 1 1067 153 1 134 1069 1 1069 154 1 135 1071 1 1071 155 1 136 1073 1
		 1073 156 1 137 1075 1 1075 157 1 138 1077 1 1077 158 1 139 1079 1 1079 159 1 140 1084 1
		 1084 160 1 141 1082 1 1082 161 1 142 1085 1 1085 162 1 143 1087 1 1087 163 1 144 1089 1
		 1089 164 1 145 1091 1 1091 165 1 146 1093 1 1093 166 1 147 1095 1 1095 167 1 148 1097 1
		 1097 168 1 149 1099 1 1099 169 1 150 1101 1 1101 170 1 151 1103 1 1103 171 1 152 1105 1
		 1105 172 1 153 1107 1 1107 173 1 154 1109 1 1109 174 1 155 1111 1 1111 175 1 156 1113 1
		 1113 176 1 157 1115 1 1115 177 1 158 1117 1 1117 178 1 159 1119 1 1119 179 1 160 1124 1
		 1124 180 1 161 1122 1 1122 181 1 162 1125 1 1125 182 1 163 1127 1 1127 183 1 164 1129 1
		 1129 184 1 165 1131 1 1131 185 1 166 1133 1 1133 186 1 167 1135 1 1135 187 1 168 1137 1
		 1137 188 1 169 1139 1 1139 189 1 170 1141 1 1141 190 1 171 1143 1 1143 191 1 172 1145 1
		 1145 192 1 173 1147 1 1147 193 1 174 1149 1 1149 194 1 175 1151 1 1151 195 1 176 1153 1
		 1153 196 1 177 1155 1 1155 197 1 178 1157 1 1157 198 1 179 1159 1 1159 199 1 180 384 1
		 384 200 1 181 382 1 382 201 1 182 385 1 385 202 1 183 387 1 387 203 1 184 389 1 389 204 1
		 185 391 1 391 205 1 186 393 1 393 206 1 187 395 1 395 207 1 188 397 1 397 208 1 189 399 1
		 399 209 1 190 401 1 401 210 1 191 403 1 403 211 1 192 405 1 405 212 1 193 407 1 407 213 1
		 194 409 1 409 214 1 195 411 1 411 215 1 196 413 1 413 216 1 197 415 1 415 217 1 198 417 1
		 417 218 1 199 419 1 419 219 1 200 424 1 424 220 1;
	setAttr ".ed[1162:1327]" 201 422 1 422 221 1 202 425 1 425 222 1 203 427 1 427 223 1
		 204 429 1 429 224 1 205 431 1 431 225 1 206 433 1 433 226 1 207 435 1 435 227 1 208 437 1
		 437 228 1 209 439 1 439 229 1 210 441 1 441 230 1 211 443 1 443 231 1 212 445 1 445 232 1
		 213 447 1 447 233 1 214 449 1 449 234 1 215 451 1 451 235 1 216 453 1 453 236 1 217 455 1
		 455 237 1 218 457 1 457 238 1 219 459 1 459 239 1 220 464 1 464 240 1 221 462 1 462 241 1
		 222 465 1 465 242 1 223 467 1 467 243 1 224 469 1 469 244 1 225 471 1 471 245 1 226 473 1
		 473 246 1 227 475 1 475 247 1 228 477 1 477 248 1 229 479 1 479 249 1 230 481 1 481 250 1
		 231 483 1 483 251 1 232 485 1 485 252 1 233 487 1 487 253 1 234 489 1 489 254 1 235 491 1
		 491 255 1 236 493 1 493 256 1 237 495 1 495 257 1 238 497 1 497 258 1 239 499 1 499 259 1
		 240 504 1 504 260 1 241 502 1 502 261 1 242 505 1 505 262 1 243 507 1 507 263 1 244 509 1
		 509 264 1 245 511 1 511 265 1 246 513 1 513 266 1 247 515 1 515 267 1 248 517 1 517 268 1
		 249 519 1 519 269 1 250 521 1 521 270 1 251 523 1 523 271 1 252 525 1 525 272 1 253 527 1
		 527 273 1 254 529 1 529 274 1 255 531 1 531 275 1 256 533 1 533 276 1 257 535 1 535 277 1
		 258 537 1 537 278 1 259 539 1 539 279 1 260 544 1 544 280 1 261 542 1 542 281 1 262 545 1
		 545 282 1 263 547 1 547 283 1 264 549 1 549 284 1 265 551 1 551 285 1 266 553 1 553 286 1
		 267 555 1 555 287 1 268 557 1 557 288 1 269 559 1 559 289 1 270 561 1 561 290 1 271 563 1
		 563 291 1 272 565 1 565 292 1 273 567 1 567 293 1 274 569 1 569 294 1 275 571 1 571 295 1
		 276 573 1 573 296 1 277 575 1 575 297 1 278 577 1 577 298 1 279 579 1 579 299 1 280 584 1
		 584 300 1 281 582 1 582 301 1 282 585 1 585 302 1 283 587 1 587 303 1;
	setAttr ".ed[1328:1493]" 284 589 1 589 304 1 285 591 1 591 305 1 286 593 1 593 306 1
		 287 595 1 595 307 1 288 597 1 597 308 1 289 599 1 599 309 1 290 601 1 601 310 1 291 603 1
		 603 311 1 292 605 1 605 312 1 293 607 1 607 313 1 294 609 1 609 314 1 295 611 1 611 315 1
		 296 613 1 613 316 1 297 615 1 615 317 1 298 617 1 617 318 1 299 619 1 619 319 1 300 624 1
		 624 320 1 301 622 1 622 321 1 302 625 1 625 322 1 303 627 1 627 323 1 304 629 1 629 324 1
		 305 631 1 631 325 1 306 633 1 633 326 1 307 635 1 635 327 1 308 637 1 637 328 1 309 639 1
		 639 329 1 310 641 1 641 330 1 311 643 1 643 331 1 312 645 1 645 332 1 313 647 1 647 333 1
		 314 649 1 649 334 1 315 651 1 651 335 1 316 653 1 653 336 1 317 655 1 655 337 1 318 657 1
		 657 338 1 319 659 1 659 339 1 320 664 1 664 340 1 321 662 1 662 341 1 322 665 1 665 342 1
		 323 667 1 667 343 1 324 669 1 669 344 1 325 671 1 671 345 1 326 673 1 673 346 1 327 675 1
		 675 347 1 328 677 1 677 348 1 329 679 1 679 349 1 330 681 1 681 350 1 331 683 1 683 351 1
		 332 685 1 685 352 1 333 687 1 687 353 1 334 689 1 689 354 1 335 691 1 691 355 1 336 693 1
		 693 356 1 337 695 1 695 357 1 338 697 1 697 358 1 339 699 1 699 359 1 340 704 1 704 360 1
		 341 702 1 702 361 1 342 705 1 705 362 1 343 707 1 707 363 1 344 709 1 709 364 1 345 711 1
		 711 365 1 346 713 1 713 366 1 347 715 1 715 367 1 348 717 1 717 368 1 349 719 1 719 369 1
		 350 721 1 721 370 1 351 723 1 723 371 1 352 725 1 725 372 1 353 727 1 727 373 1 354 729 1
		 729 374 1 355 731 1 731 375 1 356 733 1 733 376 1 357 735 1 735 377 1 358 737 1 737 378 1
		 359 739 1 739 379 1 380 742 1 742 0 1 380 743 1 743 1 1 380 744 1 744 2 1 380 745 1
		 745 3 1 380 746 1 746 4 1 380 747 1 747 5 1 380 748 1 748 6 1;
	setAttr ".ed[1494:1659]" 380 749 1 749 7 1 380 750 1 750 8 1 380 751 1 751 9 1
		 380 752 1 752 10 1 380 753 1 753 11 1 380 754 1 754 12 1 380 755 1 755 13 1 380 756 1
		 756 14 1 380 757 1 757 15 1 380 758 1 758 16 1 380 759 1 759 17 1 380 760 1 760 18 1
		 380 761 1 761 19 1 360 763 1 763 381 1 361 762 1 762 381 1 362 764 1 764 381 1 363 765 1
		 765 381 1 364 766 1 766 381 1 365 767 1 767 381 1 366 768 1 768 381 1 367 769 1 769 381 1
		 368 770 1 770 381 1 369 771 1 771 381 1 370 772 1 772 381 1 371 773 1 773 381 1 372 774 1
		 774 381 1 373 775 1 775 381 1 374 776 1 776 381 1 375 777 1 777 381 1 376 778 1 778 381 1
		 377 779 1 779 381 1 378 780 1 780 381 1 379 781 1 781 381 1 782 1162 1 1162 785 1
		 783 1162 1 784 1162 1 786 1163 1 1163 783 1 787 1163 1 788 1163 1 789 1164 1 1164 787 1
		 790 1164 1 791 1164 1 792 1165 1 1165 790 1 793 1165 1 794 1165 1 795 1166 1 1166 793 1
		 796 1166 1 797 1166 1 798 1167 1 1167 796 1 799 1167 1 800 1167 1 801 1168 1 1168 799 1
		 802 1168 1 803 1168 1 804 1169 1 1169 802 1 805 1169 1 806 1169 1 807 1170 1 1170 805 1
		 808 1170 1 809 1170 1 810 1171 1 1171 808 1 811 1171 1 812 1171 1 813 1172 1 1172 811 1
		 814 1172 1 815 1172 1 816 1173 1 1173 814 1 817 1173 1 818 1173 1 819 1174 1 1174 817 1
		 820 1174 1 821 1174 1 822 1175 1 1175 820 1 823 1175 1 824 1175 1 825 1176 1 1176 823 1
		 826 1176 1 827 1176 1 828 1177 1 1177 826 1 829 1177 1 830 1177 1 831 1178 1 1178 829 1
		 832 1178 1 833 1178 1 834 1179 1 1179 832 1 835 1179 1 836 1179 1 837 1180 1 1180 835 1
		 838 1180 1 839 1180 1 840 1181 1 1181 838 1 785 1181 1 841 1181 1 784 1182 1 1182 844 1
		 842 1182 1 843 1182 1 788 1183 1 1183 842 1 845 1183 1 846 1183 1 791 1184 1 1184 845 1
		 847 1184 1 848 1184 1 794 1185 1 1185 847 1 849 1185 1 850 1185 1 797 1186 1 1186 849 1
		 851 1186 1 852 1186 1;
	setAttr ".ed[1660:1825]" 800 1187 1 1187 851 1 853 1187 1 854 1187 1 803 1188 1
		 1188 853 1 855 1188 1 856 1188 1 806 1189 1 1189 855 1 857 1189 1 858 1189 1 809 1190 1
		 1190 857 1 859 1190 1 860 1190 1 812 1191 1 1191 859 1 861 1191 1 862 1191 1 815 1192 1
		 1192 861 1 863 1192 1 864 1192 1 818 1193 1 1193 863 1 865 1193 1 866 1193 1 821 1194 1
		 1194 865 1 867 1194 1 868 1194 1 824 1195 1 1195 867 1 869 1195 1 870 1195 1 827 1196 1
		 1196 869 1 871 1196 1 872 1196 1 830 1197 1 1197 871 1 873 1197 1 874 1197 1 833 1198 1
		 1198 873 1 875 1198 1 876 1198 1 836 1199 1 1199 875 1 877 1199 1 878 1199 1 839 1200 1
		 1200 877 1 879 1200 1 880 1200 1 841 1201 1 1201 879 1 844 1201 1 881 1201 1 843 1202 1
		 1202 884 1 882 1202 1 883 1202 1 846 1203 1 1203 882 1 885 1203 1 886 1203 1 848 1204 1
		 1204 885 1 887 1204 1 888 1204 1 850 1205 1 1205 887 1 889 1205 1 890 1205 1 852 1206 1
		 1206 889 1 891 1206 1 892 1206 1 854 1207 1 1207 891 1 893 1207 1 894 1207 1 856 1208 1
		 1208 893 1 895 1208 1 896 1208 1 858 1209 1 1209 895 1 897 1209 1 898 1209 1 860 1210 1
		 1210 897 1 899 1210 1 900 1210 1 862 1211 1 1211 899 1 901 1211 1 902 1211 1 864 1212 1
		 1212 901 1 903 1212 1 904 1212 1 866 1213 1 1213 903 1 905 1213 1 906 1213 1 868 1214 1
		 1214 905 1 907 1214 1 908 1214 1 870 1215 1 1215 907 1 909 1215 1 910 1215 1 872 1216 1
		 1216 909 1 911 1216 1 912 1216 1 874 1217 1 1217 911 1 913 1217 1 914 1217 1 876 1218 1
		 1218 913 1 915 1218 1 916 1218 1 878 1219 1 1219 915 1 917 1219 1 918 1219 1 880 1220 1
		 1220 917 1 919 1220 1 920 1220 1 881 1221 1 1221 919 1 884 1221 1 921 1221 1 883 1222 1
		 1222 924 1 922 1222 1 923 1222 1 886 1223 1 1223 922 1 925 1223 1 926 1223 1 888 1224 1
		 1224 925 1 927 1224 1 928 1224 1 890 1225 1 1225 927 1 929 1225 1 930 1225 1 892 1226 1
		 1226 929 1 931 1226 1 932 1226 1 894 1227 1 1227 931 1 933 1227 1 934 1227 1 896 1228 1
		 1228 933 1;
	setAttr ".ed[1826:1991]" 935 1228 1 936 1228 1 898 1229 1 1229 935 1 937 1229 1
		 938 1229 1 900 1230 1 1230 937 1 939 1230 1 940 1230 1 902 1231 1 1231 939 1 941 1231 1
		 942 1231 1 904 1232 1 1232 941 1 943 1232 1 944 1232 1 906 1233 1 1233 943 1 945 1233 1
		 946 1233 1 908 1234 1 1234 945 1 947 1234 1 948 1234 1 910 1235 1 1235 947 1 949 1235 1
		 950 1235 1 912 1236 1 1236 949 1 951 1236 1 952 1236 1 914 1237 1 1237 951 1 953 1237 1
		 954 1237 1 916 1238 1 1238 953 1 955 1238 1 956 1238 1 918 1239 1 1239 955 1 957 1239 1
		 958 1239 1 920 1240 1 1240 957 1 959 1240 1 960 1240 1 921 1241 1 1241 959 1 924 1241 1
		 961 1241 1 923 1242 1 1242 964 1 962 1242 1 963 1242 1 926 1243 1 1243 962 1 965 1243 1
		 966 1243 1 928 1244 1 1244 965 1 967 1244 1 968 1244 1 930 1245 1 1245 967 1 969 1245 1
		 970 1245 1 932 1246 1 1246 969 1 971 1246 1 972 1246 1 934 1247 1 1247 971 1 973 1247 1
		 974 1247 1 936 1248 1 1248 973 1 975 1248 1 976 1248 1 938 1249 1 1249 975 1 977 1249 1
		 978 1249 1 940 1250 1 1250 977 1 979 1250 1 980 1250 1 942 1251 1 1251 979 1 981 1251 1
		 982 1251 1 944 1252 1 1252 981 1 983 1252 1 984 1252 1 946 1253 1 1253 983 1 985 1253 1
		 986 1253 1 948 1254 1 1254 985 1 987 1254 1 988 1254 1 950 1255 1 1255 987 1 989 1255 1
		 990 1255 1 952 1256 1 1256 989 1 991 1256 1 992 1256 1 954 1257 1 1257 991 1 993 1257 1
		 994 1257 1 956 1258 1 1258 993 1 995 1258 1 996 1258 1 958 1259 1 1259 995 1 997 1259 1
		 998 1259 1 960 1260 1 1260 997 1 999 1260 1 1000 1260 1 961 1261 1 1261 999 1 964 1261 1
		 1001 1261 1 963 1262 1 1262 1004 1 1002 1262 1 1003 1262 1 966 1263 1 1263 1002 1
		 1005 1263 1 1006 1263 1 968 1264 1 1264 1005 1 1007 1264 1 1008 1264 1 970 1265 1
		 1265 1007 1 1009 1265 1 1010 1265 1 972 1266 1 1266 1009 1 1011 1266 1 1012 1266 1
		 974 1267 1 1267 1011 1 1013 1267 1 1014 1267 1 976 1268 1 1268 1013 1 1015 1268 1
		 1016 1268 1 978 1269 1 1269 1015 1 1017 1269 1 1018 1269 1;
	setAttr ".ed[1992:2157]" 980 1270 1 1270 1017 1 1019 1270 1 1020 1270 1 982 1271 1
		 1271 1019 1 1021 1271 1 1022 1271 1 984 1272 1 1272 1021 1 1023 1272 1 1024 1272 1
		 986 1273 1 1273 1023 1 1025 1273 1 1026 1273 1 988 1274 1 1274 1025 1 1027 1274 1
		 1028 1274 1 990 1275 1 1275 1027 1 1029 1275 1 1030 1275 1 992 1276 1 1276 1029 1
		 1031 1276 1 1032 1276 1 994 1277 1 1277 1031 1 1033 1277 1 1034 1277 1 996 1278 1
		 1278 1033 1 1035 1278 1 1036 1278 1 998 1279 1 1279 1035 1 1037 1279 1 1038 1279 1
		 1000 1280 1 1280 1037 1 1039 1280 1 1040 1280 1 1001 1281 1 1281 1039 1 1004 1281 1
		 1041 1281 1 1003 1282 1 1282 1044 1 1042 1282 1 1043 1282 1 1006 1283 1 1283 1042 1
		 1045 1283 1 1046 1283 1 1008 1284 1 1284 1045 1 1047 1284 1 1048 1284 1 1010 1285 1
		 1285 1047 1 1049 1285 1 1050 1285 1 1012 1286 1 1286 1049 1 1051 1286 1 1052 1286 1
		 1014 1287 1 1287 1051 1 1053 1287 1 1054 1287 1 1016 1288 1 1288 1053 1 1055 1288 1
		 1056 1288 1 1018 1289 1 1289 1055 1 1057 1289 1 1058 1289 1 1020 1290 1 1290 1057 1
		 1059 1290 1 1060 1290 1 1022 1291 1 1291 1059 1 1061 1291 1 1062 1291 1 1024 1292 1
		 1292 1061 1 1063 1292 1 1064 1292 1 1026 1293 1 1293 1063 1 1065 1293 1 1066 1293 1
		 1028 1294 1 1294 1065 1 1067 1294 1 1068 1294 1 1030 1295 1 1295 1067 1 1069 1295 1
		 1070 1295 1 1032 1296 1 1296 1069 1 1071 1296 1 1072 1296 1 1034 1297 1 1297 1071 1
		 1073 1297 1 1074 1297 1 1036 1298 1 1298 1073 1 1075 1298 1 1076 1298 1 1038 1299 1
		 1299 1075 1 1077 1299 1 1078 1299 1 1040 1300 1 1300 1077 1 1079 1300 1 1080 1300 1
		 1041 1301 1 1301 1079 1 1044 1301 1 1081 1301 1 1043 1302 1 1302 1084 1 1082 1302 1
		 1083 1302 1 1046 1303 1 1303 1082 1 1085 1303 1 1086 1303 1 1048 1304 1 1304 1085 1
		 1087 1304 1 1088 1304 1 1050 1305 1 1305 1087 1 1089 1305 1 1090 1305 1 1052 1306 1
		 1306 1089 1 1091 1306 1 1092 1306 1 1054 1307 1 1307 1091 1 1093 1307 1 1094 1307 1
		 1056 1308 1 1308 1093 1 1095 1308 1 1096 1308 1 1058 1309 1 1309 1095 1 1097 1309 1
		 1098 1309 1 1060 1310 1 1310 1097 1 1099 1310 1 1100 1310 1 1062 1311 1 1311 1099 1;
	setAttr ".ed[2158:2323]" 1101 1311 1 1102 1311 1 1064 1312 1 1312 1101 1 1103 1312 1
		 1104 1312 1 1066 1313 1 1313 1103 1 1105 1313 1 1106 1313 1 1068 1314 1 1314 1105 1
		 1107 1314 1 1108 1314 1 1070 1315 1 1315 1107 1 1109 1315 1 1110 1315 1 1072 1316 1
		 1316 1109 1 1111 1316 1 1112 1316 1 1074 1317 1 1317 1111 1 1113 1317 1 1114 1317 1
		 1076 1318 1 1318 1113 1 1115 1318 1 1116 1318 1 1078 1319 1 1319 1115 1 1117 1319 1
		 1118 1319 1 1080 1320 1 1320 1117 1 1119 1320 1 1120 1320 1 1081 1321 1 1321 1119 1
		 1084 1321 1 1121 1321 1 1083 1322 1 1322 1124 1 1122 1322 1 1123 1322 1 1086 1323 1
		 1323 1122 1 1125 1323 1 1126 1323 1 1088 1324 1 1324 1125 1 1127 1324 1 1128 1324 1
		 1090 1325 1 1325 1127 1 1129 1325 1 1130 1325 1 1092 1326 1 1326 1129 1 1131 1326 1
		 1132 1326 1 1094 1327 1 1327 1131 1 1133 1327 1 1134 1327 1 1096 1328 1 1328 1133 1
		 1135 1328 1 1136 1328 1 1098 1329 1 1329 1135 1 1137 1329 1 1138 1329 1 1100 1330 1
		 1330 1137 1 1139 1330 1 1140 1330 1 1102 1331 1 1331 1139 1 1141 1331 1 1142 1331 1
		 1104 1332 1 1332 1141 1 1143 1332 1 1144 1332 1 1106 1333 1 1333 1143 1 1145 1333 1
		 1146 1333 1 1108 1334 1 1334 1145 1 1147 1334 1 1148 1334 1 1110 1335 1 1335 1147 1
		 1149 1335 1 1150 1335 1 1112 1336 1 1336 1149 1 1151 1336 1 1152 1336 1 1114 1337 1
		 1337 1151 1 1153 1337 1 1154 1337 1 1116 1338 1 1338 1153 1 1155 1338 1 1156 1338 1
		 1118 1339 1 1339 1155 1 1157 1339 1 1158 1339 1 1120 1340 1 1340 1157 1 1159 1340 1
		 1160 1340 1 1121 1341 1 1341 1159 1 1124 1341 1 1161 1341 1 1123 1342 1 1342 384 1
		 382 1342 1 383 1342 1 1126 1343 1 1343 382 1 385 1343 1 386 1343 1 1128 1344 1 1344 385 1
		 387 1344 1 388 1344 1 1130 1345 1 1345 387 1 389 1345 1 390 1345 1 1132 1346 1 1346 389 1
		 391 1346 1 392 1346 1 1134 1347 1 1347 391 1 393 1347 1 394 1347 1 1136 1348 1 1348 393 1
		 395 1348 1 396 1348 1 1138 1349 1 1349 395 1 397 1349 1 398 1349 1 1140 1350 1 1350 397 1
		 399 1350 1 400 1350 1 1142 1351 1 1351 399 1 401 1351 1 402 1351 1 1144 1352 1 1352 401 1
		 403 1352 1 404 1352 1;
	setAttr ".ed[2324:2489]" 1146 1353 1 1353 403 1 405 1353 1 406 1353 1 1148 1354 1
		 1354 405 1 407 1354 1 408 1354 1 1150 1355 1 1355 407 1 409 1355 1 410 1355 1 1152 1356 1
		 1356 409 1 411 1356 1 412 1356 1 1154 1357 1 1357 411 1 413 1357 1 414 1357 1 1156 1358 1
		 1358 413 1 415 1358 1 416 1358 1 1158 1359 1 1359 415 1 417 1359 1 418 1359 1 1160 1360 1
		 1360 417 1 419 1360 1 420 1360 1 1161 1361 1 1361 419 1 384 1361 1 421 1361 1 383 1362 1
		 1362 424 1 422 1362 1 423 1362 1 386 1363 1 1363 422 1 425 1363 1 426 1363 1 388 1364 1
		 1364 425 1 427 1364 1 428 1364 1 390 1365 1 1365 427 1 429 1365 1 430 1365 1 392 1366 1
		 1366 429 1 431 1366 1 432 1366 1 394 1367 1 1367 431 1 433 1367 1 434 1367 1 396 1368 1
		 1368 433 1 435 1368 1 436 1368 1 398 1369 1 1369 435 1 437 1369 1 438 1369 1 400 1370 1
		 1370 437 1 439 1370 1 440 1370 1 402 1371 1 1371 439 1 441 1371 1 442 1371 1 404 1372 1
		 1372 441 1 443 1372 1 444 1372 1 406 1373 1 1373 443 1 445 1373 1 446 1373 1 408 1374 1
		 1374 445 1 447 1374 1 448 1374 1 410 1375 1 1375 447 1 449 1375 1 450 1375 1 412 1376 1
		 1376 449 1 451 1376 1 452 1376 1 414 1377 1 1377 451 1 453 1377 1 454 1377 1 416 1378 1
		 1378 453 1 455 1378 1 456 1378 1 418 1379 1 1379 455 1 457 1379 1 458 1379 1 420 1380 1
		 1380 457 1 459 1380 1 460 1380 1 421 1381 1 1381 459 1 424 1381 1 461 1381 1 423 1382 1
		 1382 464 1 462 1382 1 463 1382 1 426 1383 1 1383 462 1 465 1383 1 466 1383 1 428 1384 1
		 1384 465 1 467 1384 1 468 1384 1 430 1385 1 1385 467 1 469 1385 1 470 1385 1 432 1386 1
		 1386 469 1 471 1386 1 472 1386 1 434 1387 1 1387 471 1 473 1387 1 474 1387 1 436 1388 1
		 1388 473 1 475 1388 1 476 1388 1 438 1389 1 1389 475 1 477 1389 1 478 1389 1 440 1390 1
		 1390 477 1 479 1390 1 480 1390 1 442 1391 1 1391 479 1 481 1391 1 482 1391 1 444 1392 1
		 1392 481 1 483 1392 1 484 1392 1 446 1393 1 1393 483 1 485 1393 1 486 1393 1 448 1394 1
		 1394 485 1;
	setAttr ".ed[2490:2655]" 487 1394 1 488 1394 1 450 1395 1 1395 487 1 489 1395 1
		 490 1395 1 452 1396 1 1396 489 1 491 1396 1 492 1396 1 454 1397 1 1397 491 1 493 1397 1
		 494 1397 1 456 1398 1 1398 493 1 495 1398 1 496 1398 1 458 1399 1 1399 495 1 497 1399 1
		 498 1399 1 460 1400 1 1400 497 1 499 1400 1 500 1400 1 461 1401 1 1401 499 1 464 1401 1
		 501 1401 1 463 1402 1 1402 504 1 502 1402 1 503 1402 1 466 1403 1 1403 502 1 505 1403 1
		 506 1403 1 468 1404 1 1404 505 1 507 1404 1 508 1404 1 470 1405 1 1405 507 1 509 1405 1
		 510 1405 1 472 1406 1 1406 509 1 511 1406 1 512 1406 1 474 1407 1 1407 511 1 513 1407 1
		 514 1407 1 476 1408 1 1408 513 1 515 1408 1 516 1408 1 478 1409 1 1409 515 1 517 1409 1
		 518 1409 1 480 1410 1 1410 517 1 519 1410 1 520 1410 1 482 1411 1 1411 519 1 521 1411 1
		 522 1411 1 484 1412 1 1412 521 1 523 1412 1 524 1412 1 486 1413 1 1413 523 1 525 1413 1
		 526 1413 1 488 1414 1 1414 525 1 527 1414 1 528 1414 1 490 1415 1 1415 527 1 529 1415 1
		 530 1415 1 492 1416 1 1416 529 1 531 1416 1 532 1416 1 494 1417 1 1417 531 1 533 1417 1
		 534 1417 1 496 1418 1 1418 533 1 535 1418 1 536 1418 1 498 1419 1 1419 535 1 537 1419 1
		 538 1419 1 500 1420 1 1420 537 1 539 1420 1 540 1420 1 501 1421 1 1421 539 1 504 1421 1
		 541 1421 1 503 1422 1 1422 544 1 542 1422 1 543 1422 1 506 1423 1 1423 542 1 545 1423 1
		 546 1423 1 508 1424 1 1424 545 1 547 1424 1 548 1424 1 510 1425 1 1425 547 1 549 1425 1
		 550 1425 1 512 1426 1 1426 549 1 551 1426 1 552 1426 1 514 1427 1 1427 551 1 553 1427 1
		 554 1427 1 516 1428 1 1428 553 1 555 1428 1 556 1428 1 518 1429 1 1429 555 1 557 1429 1
		 558 1429 1 520 1430 1 1430 557 1 559 1430 1 560 1430 1 522 1431 1 1431 559 1 561 1431 1
		 562 1431 1 524 1432 1 1432 561 1 563 1432 1 564 1432 1 526 1433 1 1433 563 1 565 1433 1
		 566 1433 1 528 1434 1 1434 565 1 567 1434 1 568 1434 1 530 1435 1 1435 567 1 569 1435 1
		 570 1435 1;
	setAttr ".ed[2656:2821]" 532 1436 1 1436 569 1 571 1436 1 572 1436 1 534 1437 1
		 1437 571 1 573 1437 1 574 1437 1 536 1438 1 1438 573 1 575 1438 1 576 1438 1 538 1439 1
		 1439 575 1 577 1439 1 578 1439 1 540 1440 1 1440 577 1 579 1440 1 580 1440 1 541 1441 1
		 1441 579 1 544 1441 1 581 1441 1 543 1442 1 1442 584 1 582 1442 1 583 1442 1 546 1443 1
		 1443 582 1 585 1443 1 586 1443 1 548 1444 1 1444 585 1 587 1444 1 588 1444 1 550 1445 1
		 1445 587 1 589 1445 1 590 1445 1 552 1446 1 1446 589 1 591 1446 1 592 1446 1 554 1447 1
		 1447 591 1 593 1447 1 594 1447 1 556 1448 1 1448 593 1 595 1448 1 596 1448 1 558 1449 1
		 1449 595 1 597 1449 1 598 1449 1 560 1450 1 1450 597 1 599 1450 1 600 1450 1 562 1451 1
		 1451 599 1 601 1451 1 602 1451 1 564 1452 1 1452 601 1 603 1452 1 604 1452 1 566 1453 1
		 1453 603 1 605 1453 1 606 1453 1 568 1454 1 1454 605 1 607 1454 1 608 1454 1 570 1455 1
		 1455 607 1 609 1455 1 610 1455 1 572 1456 1 1456 609 1 611 1456 1 612 1456 1 574 1457 1
		 1457 611 1 613 1457 1 614 1457 1 576 1458 1 1458 613 1 615 1458 1 616 1458 1 578 1459 1
		 1459 615 1 617 1459 1 618 1459 1 580 1460 1 1460 617 1 619 1460 1 620 1460 1 581 1461 1
		 1461 619 1 584 1461 1 621 1461 1 583 1462 1 1462 624 1 622 1462 1 623 1462 1 586 1463 1
		 1463 622 1 625 1463 1 626 1463 1 588 1464 1 1464 625 1 627 1464 1 628 1464 1 590 1465 1
		 1465 627 1 629 1465 1 630 1465 1 592 1466 1 1466 629 1 631 1466 1 632 1466 1 594 1467 1
		 1467 631 1 633 1467 1 634 1467 1 596 1468 1 1468 633 1 635 1468 1 636 1468 1 598 1469 1
		 1469 635 1 637 1469 1 638 1469 1 600 1470 1 1470 637 1 639 1470 1 640 1470 1 602 1471 1
		 1471 639 1 641 1471 1 642 1471 1 604 1472 1 1472 641 1 643 1472 1 644 1472 1 606 1473 1
		 1473 643 1 645 1473 1 646 1473 1 608 1474 1 1474 645 1 647 1474 1 648 1474 1 610 1475 1
		 1475 647 1 649 1475 1 650 1475 1 612 1476 1 1476 649 1 651 1476 1 652 1476 1 614 1477 1
		 1477 651 1;
	setAttr ".ed[2822:2987]" 653 1477 1 654 1477 1 616 1478 1 1478 653 1 655 1478 1
		 656 1478 1 618 1479 1 1479 655 1 657 1479 1 658 1479 1 620 1480 1 1480 657 1 659 1480 1
		 660 1480 1 621 1481 1 1481 659 1 624 1481 1 661 1481 1 623 1482 1 1482 664 1 662 1482 1
		 663 1482 1 626 1483 1 1483 662 1 665 1483 1 666 1483 1 628 1484 1 1484 665 1 667 1484 1
		 668 1484 1 630 1485 1 1485 667 1 669 1485 1 670 1485 1 632 1486 1 1486 669 1 671 1486 1
		 672 1486 1 634 1487 1 1487 671 1 673 1487 1 674 1487 1 636 1488 1 1488 673 1 675 1488 1
		 676 1488 1 638 1489 1 1489 675 1 677 1489 1 678 1489 1 640 1490 1 1490 677 1 679 1490 1
		 680 1490 1 642 1491 1 1491 679 1 681 1491 1 682 1491 1 644 1492 1 1492 681 1 683 1492 1
		 684 1492 1 646 1493 1 1493 683 1 685 1493 1 686 1493 1 648 1494 1 1494 685 1 687 1494 1
		 688 1494 1 650 1495 1 1495 687 1 689 1495 1 690 1495 1 652 1496 1 1496 689 1 691 1496 1
		 692 1496 1 654 1497 1 1497 691 1 693 1497 1 694 1497 1 656 1498 1 1498 693 1 695 1498 1
		 696 1498 1 658 1499 1 1499 695 1 697 1499 1 698 1499 1 660 1500 1 1500 697 1 699 1500 1
		 700 1500 1 661 1501 1 1501 699 1 664 1501 1 701 1501 1 663 1502 1 1502 704 1 702 1502 1
		 703 1502 1 666 1503 1 1503 702 1 705 1503 1 706 1503 1 668 1504 1 1504 705 1 707 1504 1
		 708 1504 1 670 1505 1 1505 707 1 709 1505 1 710 1505 1 672 1506 1 1506 709 1 711 1506 1
		 712 1506 1 674 1507 1 1507 711 1 713 1507 1 714 1507 1 676 1508 1 1508 713 1 715 1508 1
		 716 1508 1 678 1509 1 1509 715 1 717 1509 1 718 1509 1 680 1510 1 1510 717 1 719 1510 1
		 720 1510 1 682 1511 1 1511 719 1 721 1511 1 722 1511 1 684 1512 1 1512 721 1 723 1512 1
		 724 1512 1 686 1513 1 1513 723 1 725 1513 1 726 1513 1 688 1514 1 1514 725 1 727 1514 1
		 728 1514 1 690 1515 1 1515 727 1 729 1515 1 730 1515 1 692 1516 1 1516 729 1 731 1516 1
		 732 1516 1 694 1517 1 1517 731 1 733 1517 1 734 1517 1 696 1518 1 1518 733 1 735 1518 1
		 736 1518 1;
	setAttr ".ed[2988:3119]" 698 1519 1 1519 735 1 737 1519 1 738 1519 1 700 1520 1
		 1520 737 1 739 1520 1 740 1520 1 701 1521 1 1521 739 1 704 1521 1 741 1521 1 782 1522 1
		 1522 743 1 742 1522 1 786 1523 1 1523 744 1 743 1523 1 789 1524 1 1524 745 1 744 1524 1
		 792 1525 1 1525 746 1 745 1525 1 795 1526 1 1526 747 1 746 1526 1 798 1527 1 1527 748 1
		 747 1527 1 801 1528 1 1528 749 1 748 1528 1 804 1529 1 1529 750 1 749 1529 1 807 1530 1
		 1530 751 1 750 1530 1 810 1531 1 1531 752 1 751 1531 1 813 1532 1 1532 753 1 752 1532 1
		 816 1533 1 1533 754 1 753 1533 1 819 1534 1 1534 755 1 754 1534 1 822 1535 1 1535 756 1
		 755 1535 1 825 1536 1 1536 757 1 756 1536 1 828 1537 1 1537 758 1 757 1537 1 831 1538 1
		 1538 759 1 758 1538 1 834 1539 1 1539 760 1 759 1539 1 837 1540 1 1540 761 1 760 1540 1
		 840 1541 1 1541 742 1 761 1541 1 703 1542 1 1542 763 1 762 1542 1 706 1543 1 1543 762 1
		 764 1543 1 708 1544 1 1544 764 1 765 1544 1 710 1545 1 1545 765 1 766 1545 1 712 1546 1
		 1546 766 1 767 1546 1 714 1547 1 1547 767 1 768 1547 1 716 1548 1 1548 768 1 769 1548 1
		 718 1549 1 1549 769 1 770 1549 1 720 1550 1 1550 770 1 771 1550 1 722 1551 1 1551 771 1
		 772 1551 1 724 1552 1 1552 772 1 773 1552 1 726 1553 1 1553 773 1 774 1553 1 728 1554 1
		 1554 774 1 775 1554 1 730 1555 1 1555 775 1 776 1555 1 732 1556 1 1556 776 1 777 1556 1
		 734 1557 1 1557 777 1 778 1557 1 736 1558 1 1558 778 1 779 1558 1 738 1559 1 1559 779 1
		 780 1559 1 740 1560 1 1560 780 1 781 1560 1 741 1561 1 1561 781 1 763 1561 1;
	setAttr -s 1560 -ch 6240 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1560 1561 -761
		mu 0 4 0 839 439 842
		f 4 1 762 1562 -1561
		mu 0 4 839 2 840 439
		f 4 -1563 763 -42 1563
		mu 0 4 439 840 23 841
		f 4 -1562 -1564 -41 -762
		mu 0 4 842 439 841 21
		f 4 2 1564 1565 -763
		mu 0 4 2 844 440 840
		f 4 3 764 1566 -1565
		mu 0 4 844 3 845 440
		f 4 -1567 765 -44 1567
		mu 0 4 440 845 24 846
		f 4 -1566 -1568 -43 -764
		mu 0 4 840 440 846 23
		f 4 4 1568 1569 -765
		mu 0 4 3 847 441 845
		f 4 5 766 1570 -1569
		mu 0 4 847 4 848 441
		f 4 -1571 767 -46 1571
		mu 0 4 441 848 25 849
		f 4 -1570 -1572 -45 -766
		mu 0 4 845 441 849 24
		f 4 6 1572 1573 -767
		mu 0 4 4 850 442 848
		f 4 7 768 1574 -1573
		mu 0 4 850 5 851 442
		f 4 -1575 769 -48 1575
		mu 0 4 442 851 26 852
		f 4 -1574 -1576 -47 -768
		mu 0 4 848 442 852 25
		f 4 8 1576 1577 -769
		mu 0 4 5 853 443 851
		f 4 9 770 1578 -1577
		mu 0 4 853 6 854 443
		f 4 -1579 771 -50 1579
		mu 0 4 443 854 27 855
		f 4 -1578 -1580 -49 -770
		mu 0 4 851 443 855 26
		f 4 10 1580 1581 -771
		mu 0 4 6 856 444 854
		f 4 11 772 1582 -1581
		mu 0 4 856 7 857 444
		f 4 -1583 773 -52 1583
		mu 0 4 444 857 28 858
		f 4 -1582 -1584 -51 -772
		mu 0 4 854 444 858 27
		f 4 12 1584 1585 -773
		mu 0 4 7 859 445 857
		f 4 13 774 1586 -1585
		mu 0 4 859 8 860 445
		f 4 -1587 775 -54 1587
		mu 0 4 445 860 29 861
		f 4 -1586 -1588 -53 -774
		mu 0 4 857 445 861 28
		f 4 14 1588 1589 -775
		mu 0 4 8 862 446 860
		f 4 15 776 1590 -1589
		mu 0 4 862 9 863 446
		f 4 -1591 777 -56 1591
		mu 0 4 446 863 30 864
		f 4 -1590 -1592 -55 -776
		mu 0 4 860 446 864 29
		f 4 16 1592 1593 -777
		mu 0 4 9 865 447 863
		f 4 17 778 1594 -1593
		mu 0 4 865 10 866 447
		f 4 -1595 779 -58 1595
		mu 0 4 447 866 31 867
		f 4 -1594 -1596 -57 -778
		mu 0 4 863 447 867 30
		f 4 18 1596 1597 -779
		mu 0 4 10 868 448 866
		f 4 19 780 1598 -1597
		mu 0 4 868 11 869 448
		f 4 -1599 781 -60 1599
		mu 0 4 448 869 32 870
		f 4 -1598 -1600 -59 -780
		mu 0 4 866 448 870 31
		f 4 20 1600 1601 -781
		mu 0 4 11 871 449 869
		f 4 21 782 1602 -1601
		mu 0 4 871 12 872 449
		f 4 -1603 783 -62 1603
		mu 0 4 449 872 33 873
		f 4 -1602 -1604 -61 -782
		mu 0 4 869 449 873 32
		f 4 22 1604 1605 -783
		mu 0 4 12 874 450 872
		f 4 23 784 1606 -1605
		mu 0 4 874 13 875 450
		f 4 -1607 785 -64 1607
		mu 0 4 450 875 34 876
		f 4 -1606 -1608 -63 -784
		mu 0 4 872 450 876 33
		f 4 24 1608 1609 -785
		mu 0 4 13 877 451 875
		f 4 25 786 1610 -1609
		mu 0 4 877 14 878 451
		f 4 -1611 787 -66 1611
		mu 0 4 451 878 35 879
		f 4 -1610 -1612 -65 -786
		mu 0 4 875 451 879 34
		f 4 26 1612 1613 -787
		mu 0 4 14 880 452 878
		f 4 27 788 1614 -1613
		mu 0 4 880 15 881 452
		f 4 -1615 789 -68 1615
		mu 0 4 452 881 36 882
		f 4 -1614 -1616 -67 -788
		mu 0 4 878 452 882 35
		f 4 28 1616 1617 -789
		mu 0 4 15 883 453 881
		f 4 29 790 1618 -1617
		mu 0 4 883 16 884 453
		f 4 -1619 791 -70 1619
		mu 0 4 453 884 37 885
		f 4 -1618 -1620 -69 -790
		mu 0 4 881 453 885 36
		f 4 30 1620 1621 -791
		mu 0 4 16 886 454 884
		f 4 31 792 1622 -1621
		mu 0 4 886 17 887 454
		f 4 -1623 793 -72 1623
		mu 0 4 454 887 38 888
		f 4 -1622 -1624 -71 -792
		mu 0 4 884 454 888 37
		f 4 32 1624 1625 -793
		mu 0 4 17 889 455 887
		f 4 33 794 1626 -1625
		mu 0 4 889 18 890 455
		f 4 -1627 795 -74 1627
		mu 0 4 455 890 39 891
		f 4 -1626 -1628 -73 -794
		mu 0 4 887 455 891 38
		f 4 34 1628 1629 -795
		mu 0 4 18 892 456 890
		f 4 35 796 1630 -1629
		mu 0 4 892 19 893 456
		f 4 -1631 797 -76 1631
		mu 0 4 456 893 40 894
		f 4 -1630 -1632 -75 -796
		mu 0 4 890 456 894 39
		f 4 36 1632 1633 -797
		mu 0 4 19 895 457 893
		f 4 37 798 1634 -1633
		mu 0 4 895 20 896 457
		f 4 -1635 799 -78 1635
		mu 0 4 457 896 41 897
		f 4 -1634 -1636 -77 -798
		mu 0 4 893 457 897 40
		f 4 38 1636 1637 -799
		mu 0 4 20 898 458 896
		f 4 39 760 1638 -1637
		mu 0 4 898 1 843 458
		f 4 -1639 761 -80 1639
		mu 0 4 458 843 22 899
		f 4 -1638 -1640 -79 -800
		mu 0 4 896 458 899 41
		f 4 40 1640 1641 -801
		mu 0 4 21 841 459 902
		f 4 41 802 1642 -1641
		mu 0 4 841 23 900 459
		f 4 -1643 803 -82 1643
		mu 0 4 459 900 44 901
		f 4 -1642 -1644 -81 -802
		mu 0 4 902 459 901 42
		f 4 42 1644 1645 -803
		mu 0 4 23 846 460 900
		f 4 43 804 1646 -1645
		mu 0 4 846 24 904 460
		f 4 -1647 805 -84 1647
		mu 0 4 460 904 45 905
		f 4 -1646 -1648 -83 -804
		mu 0 4 900 460 905 44
		f 4 44 1648 1649 -805
		mu 0 4 24 849 461 904
		f 4 45 806 1650 -1649
		mu 0 4 849 25 906 461
		f 4 -1651 807 -86 1651
		mu 0 4 461 906 46 907
		f 4 -1650 -1652 -85 -806
		mu 0 4 904 461 907 45
		f 4 46 1652 1653 -807
		mu 0 4 25 852 462 906
		f 4 47 808 1654 -1653
		mu 0 4 852 26 908 462
		f 4 -1655 809 -88 1655
		mu 0 4 462 908 47 909
		f 4 -1654 -1656 -87 -808
		mu 0 4 906 462 909 46
		f 4 48 1656 1657 -809
		mu 0 4 26 855 463 908
		f 4 49 810 1658 -1657
		mu 0 4 855 27 910 463
		f 4 -1659 811 -90 1659
		mu 0 4 463 910 48 911
		f 4 -1658 -1660 -89 -810
		mu 0 4 908 463 911 47
		f 4 50 1660 1661 -811
		mu 0 4 27 858 464 910
		f 4 51 812 1662 -1661
		mu 0 4 858 28 912 464
		f 4 -1663 813 -92 1663
		mu 0 4 464 912 49 913
		f 4 -1662 -1664 -91 -812
		mu 0 4 910 464 913 48
		f 4 52 1664 1665 -813
		mu 0 4 28 861 465 912
		f 4 53 814 1666 -1665
		mu 0 4 861 29 914 465
		f 4 -1667 815 -94 1667
		mu 0 4 465 914 50 915
		f 4 -1666 -1668 -93 -814
		mu 0 4 912 465 915 49
		f 4 54 1668 1669 -815
		mu 0 4 29 864 466 914
		f 4 55 816 1670 -1669
		mu 0 4 864 30 916 466
		f 4 -1671 817 -96 1671
		mu 0 4 466 916 51 917
		f 4 -1670 -1672 -95 -816
		mu 0 4 914 466 917 50
		f 4 56 1672 1673 -817
		mu 0 4 30 867 467 916
		f 4 57 818 1674 -1673
		mu 0 4 867 31 918 467
		f 4 -1675 819 -98 1675
		mu 0 4 467 918 52 919
		f 4 -1674 -1676 -97 -818
		mu 0 4 916 467 919 51
		f 4 58 1676 1677 -819
		mu 0 4 31 870 468 918
		f 4 59 820 1678 -1677
		mu 0 4 870 32 920 468
		f 4 -1679 821 -100 1679
		mu 0 4 468 920 53 921
		f 4 -1678 -1680 -99 -820
		mu 0 4 918 468 921 52
		f 4 60 1680 1681 -821
		mu 0 4 32 873 469 920
		f 4 61 822 1682 -1681
		mu 0 4 873 33 922 469
		f 4 -1683 823 -102 1683
		mu 0 4 469 922 54 923
		f 4 -1682 -1684 -101 -822
		mu 0 4 920 469 923 53
		f 4 62 1684 1685 -823
		mu 0 4 33 876 470 922
		f 4 63 824 1686 -1685
		mu 0 4 876 34 924 470
		f 4 -1687 825 -104 1687
		mu 0 4 470 924 55 925
		f 4 -1686 -1688 -103 -824
		mu 0 4 922 470 925 54
		f 4 64 1688 1689 -825
		mu 0 4 34 879 471 924
		f 4 65 826 1690 -1689
		mu 0 4 879 35 926 471
		f 4 -1691 827 -106 1691
		mu 0 4 471 926 56 927
		f 4 -1690 -1692 -105 -826
		mu 0 4 924 471 927 55
		f 4 66 1692 1693 -827
		mu 0 4 35 882 472 926
		f 4 67 828 1694 -1693
		mu 0 4 882 36 928 472
		f 4 -1695 829 -108 1695
		mu 0 4 472 928 57 929
		f 4 -1694 -1696 -107 -828
		mu 0 4 926 472 929 56
		f 4 68 1696 1697 -829
		mu 0 4 36 885 473 928
		f 4 69 830 1698 -1697
		mu 0 4 885 37 930 473
		f 4 -1699 831 -110 1699
		mu 0 4 473 930 58 931
		f 4 -1698 -1700 -109 -830
		mu 0 4 928 473 931 57
		f 4 70 1700 1701 -831
		mu 0 4 37 888 474 930
		f 4 71 832 1702 -1701
		mu 0 4 888 38 932 474
		f 4 -1703 833 -112 1703
		mu 0 4 474 932 59 933
		f 4 -1702 -1704 -111 -832
		mu 0 4 930 474 933 58
		f 4 72 1704 1705 -833
		mu 0 4 38 891 475 932
		f 4 73 834 1706 -1705
		mu 0 4 891 39 934 475
		f 4 -1707 835 -114 1707
		mu 0 4 475 934 60 935
		f 4 -1706 -1708 -113 -834
		mu 0 4 932 475 935 59
		f 4 74 1708 1709 -835
		mu 0 4 39 894 476 934
		f 4 75 836 1710 -1709
		mu 0 4 894 40 936 476
		f 4 -1711 837 -116 1711
		mu 0 4 476 936 61 937
		f 4 -1710 -1712 -115 -836
		mu 0 4 934 476 937 60
		f 4 76 1712 1713 -837
		mu 0 4 40 897 477 936
		f 4 77 838 1714 -1713
		mu 0 4 897 41 938 477
		f 4 -1715 839 -118 1715
		mu 0 4 477 938 62 939
		f 4 -1714 -1716 -117 -838
		mu 0 4 936 477 939 61
		f 4 78 1716 1717 -839
		mu 0 4 41 899 478 938
		f 4 79 800 1718 -1717
		mu 0 4 899 22 903 478
		f 4 -1719 801 -120 1719
		mu 0 4 478 903 43 940
		f 4 -1718 -1720 -119 -840
		mu 0 4 938 478 940 62
		f 4 80 1720 1721 -841
		mu 0 4 42 901 479 943
		f 4 81 842 1722 -1721
		mu 0 4 901 44 941 479
		f 4 -1723 843 -122 1723
		mu 0 4 479 941 65 942
		f 4 -1722 -1724 -121 -842
		mu 0 4 943 479 942 63
		f 4 82 1724 1725 -843
		mu 0 4 44 905 480 941
		f 4 83 844 1726 -1725
		mu 0 4 905 45 945 480
		f 4 -1727 845 -124 1727
		mu 0 4 480 945 66 946
		f 4 -1726 -1728 -123 -844
		mu 0 4 941 480 946 65
		f 4 84 1728 1729 -845
		mu 0 4 45 907 481 945
		f 4 85 846 1730 -1729
		mu 0 4 907 46 947 481
		f 4 -1731 847 -126 1731
		mu 0 4 481 947 67 948
		f 4 -1730 -1732 -125 -846
		mu 0 4 945 481 948 66
		f 4 86 1732 1733 -847
		mu 0 4 46 909 482 947
		f 4 87 848 1734 -1733
		mu 0 4 909 47 949 482
		f 4 -1735 849 -128 1735
		mu 0 4 482 949 68 950
		f 4 -1734 -1736 -127 -848
		mu 0 4 947 482 950 67
		f 4 88 1736 1737 -849
		mu 0 4 47 911 483 949
		f 4 89 850 1738 -1737
		mu 0 4 911 48 951 483
		f 4 -1739 851 -130 1739
		mu 0 4 483 951 69 952
		f 4 -1738 -1740 -129 -850
		mu 0 4 949 483 952 68
		f 4 90 1740 1741 -851
		mu 0 4 48 913 484 951
		f 4 91 852 1742 -1741
		mu 0 4 913 49 953 484
		f 4 -1743 853 -132 1743
		mu 0 4 484 953 70 954
		f 4 -1742 -1744 -131 -852
		mu 0 4 951 484 954 69
		f 4 92 1744 1745 -853
		mu 0 4 49 915 485 953
		f 4 93 854 1746 -1745
		mu 0 4 915 50 955 485
		f 4 -1747 855 -134 1747
		mu 0 4 485 955 71 956
		f 4 -1746 -1748 -133 -854
		mu 0 4 953 485 956 70
		f 4 94 1748 1749 -855
		mu 0 4 50 917 486 955
		f 4 95 856 1750 -1749
		mu 0 4 917 51 957 486
		f 4 -1751 857 -136 1751
		mu 0 4 486 957 72 958
		f 4 -1750 -1752 -135 -856
		mu 0 4 955 486 958 71
		f 4 96 1752 1753 -857
		mu 0 4 51 919 487 957
		f 4 97 858 1754 -1753
		mu 0 4 919 52 959 487
		f 4 -1755 859 -138 1755
		mu 0 4 487 959 73 960
		f 4 -1754 -1756 -137 -858
		mu 0 4 957 487 960 72
		f 4 98 1756 1757 -859
		mu 0 4 52 921 488 959
		f 4 99 860 1758 -1757
		mu 0 4 921 53 961 488
		f 4 -1759 861 -140 1759
		mu 0 4 488 961 74 962
		f 4 -1758 -1760 -139 -860
		mu 0 4 959 488 962 73
		f 4 100 1760 1761 -861
		mu 0 4 53 923 489 961
		f 4 101 862 1762 -1761
		mu 0 4 923 54 963 489
		f 4 -1763 863 -142 1763
		mu 0 4 489 963 75 964
		f 4 -1762 -1764 -141 -862
		mu 0 4 961 489 964 74
		f 4 102 1764 1765 -863
		mu 0 4 54 925 490 963
		f 4 103 864 1766 -1765
		mu 0 4 925 55 965 490
		f 4 -1767 865 -144 1767
		mu 0 4 490 965 76 966
		f 4 -1766 -1768 -143 -864
		mu 0 4 963 490 966 75
		f 4 104 1768 1769 -865
		mu 0 4 55 927 491 965
		f 4 105 866 1770 -1769
		mu 0 4 927 56 967 491
		f 4 -1771 867 -146 1771
		mu 0 4 491 967 77 968
		f 4 -1770 -1772 -145 -866
		mu 0 4 965 491 968 76
		f 4 106 1772 1773 -867
		mu 0 4 56 929 492 967
		f 4 107 868 1774 -1773
		mu 0 4 929 57 969 492
		f 4 -1775 869 -148 1775
		mu 0 4 492 969 78 970
		f 4 -1774 -1776 -147 -868
		mu 0 4 967 492 970 77
		f 4 108 1776 1777 -869
		mu 0 4 57 931 493 969
		f 4 109 870 1778 -1777
		mu 0 4 931 58 971 493
		f 4 -1779 871 -150 1779
		mu 0 4 493 971 79 972
		f 4 -1778 -1780 -149 -870
		mu 0 4 969 493 972 78
		f 4 110 1780 1781 -871
		mu 0 4 58 933 494 971
		f 4 111 872 1782 -1781
		mu 0 4 933 59 973 494
		f 4 -1783 873 -152 1783
		mu 0 4 494 973 80 974
		f 4 -1782 -1784 -151 -872
		mu 0 4 971 494 974 79
		f 4 112 1784 1785 -873
		mu 0 4 59 935 495 973
		f 4 113 874 1786 -1785
		mu 0 4 935 60 975 495
		f 4 -1787 875 -154 1787
		mu 0 4 495 975 81 976
		f 4 -1786 -1788 -153 -874
		mu 0 4 973 495 976 80
		f 4 114 1788 1789 -875
		mu 0 4 60 937 496 975
		f 4 115 876 1790 -1789
		mu 0 4 937 61 977 496
		f 4 -1791 877 -156 1791
		mu 0 4 496 977 82 978
		f 4 -1790 -1792 -155 -876
		mu 0 4 975 496 978 81
		f 4 116 1792 1793 -877
		mu 0 4 61 939 497 977
		f 4 117 878 1794 -1793
		mu 0 4 939 62 979 497
		f 4 -1795 879 -158 1795
		mu 0 4 497 979 83 980
		f 4 -1794 -1796 -157 -878
		mu 0 4 977 497 980 82
		f 4 118 1796 1797 -879
		mu 0 4 62 940 498 979
		f 4 119 840 1798 -1797
		mu 0 4 940 43 944 498
		f 4 -1799 841 -160 1799
		mu 0 4 498 944 64 981
		f 4 -1798 -1800 -159 -880
		mu 0 4 979 498 981 83
		f 4 120 1800 1801 -881
		mu 0 4 63 942 499 984
		f 4 121 882 1802 -1801
		mu 0 4 942 65 982 499
		f 4 -1803 883 -162 1803
		mu 0 4 499 982 86 983
		f 4 -1802 -1804 -161 -882
		mu 0 4 984 499 983 84
		f 4 122 1804 1805 -883
		mu 0 4 65 946 500 982
		f 4 123 884 1806 -1805
		mu 0 4 946 66 986 500
		f 4 -1807 885 -164 1807
		mu 0 4 500 986 87 987
		f 4 -1806 -1808 -163 -884
		mu 0 4 982 500 987 86
		f 4 124 1808 1809 -885
		mu 0 4 66 948 501 986
		f 4 125 886 1810 -1809
		mu 0 4 948 67 988 501
		f 4 -1811 887 -166 1811
		mu 0 4 501 988 88 989
		f 4 -1810 -1812 -165 -886
		mu 0 4 986 501 989 87
		f 4 126 1812 1813 -887
		mu 0 4 67 950 502 988
		f 4 127 888 1814 -1813
		mu 0 4 950 68 990 502
		f 4 -1815 889 -168 1815
		mu 0 4 502 990 89 991
		f 4 -1814 -1816 -167 -888
		mu 0 4 988 502 991 88
		f 4 128 1816 1817 -889
		mu 0 4 68 952 503 990
		f 4 129 890 1818 -1817
		mu 0 4 952 69 992 503
		f 4 -1819 891 -170 1819
		mu 0 4 503 992 90 993
		f 4 -1818 -1820 -169 -890
		mu 0 4 990 503 993 89
		f 4 130 1820 1821 -891
		mu 0 4 69 954 504 992
		f 4 131 892 1822 -1821
		mu 0 4 954 70 994 504
		f 4 -1823 893 -172 1823
		mu 0 4 504 994 91 995
		f 4 -1822 -1824 -171 -892
		mu 0 4 992 504 995 90
		f 4 132 1824 1825 -893
		mu 0 4 70 956 505 994
		f 4 133 894 1826 -1825
		mu 0 4 956 71 996 505
		f 4 -1827 895 -174 1827
		mu 0 4 505 996 92 997
		f 4 -1826 -1828 -173 -894
		mu 0 4 994 505 997 91
		f 4 134 1828 1829 -895
		mu 0 4 71 958 506 996
		f 4 135 896 1830 -1829
		mu 0 4 958 72 998 506
		f 4 -1831 897 -176 1831
		mu 0 4 506 998 93 999
		f 4 -1830 -1832 -175 -896
		mu 0 4 996 506 999 92
		f 4 136 1832 1833 -897
		mu 0 4 72 960 507 998
		f 4 137 898 1834 -1833
		mu 0 4 960 73 1000 507
		f 4 -1835 899 -178 1835
		mu 0 4 507 1000 94 1001
		f 4 -1834 -1836 -177 -898
		mu 0 4 998 507 1001 93
		f 4 138 1836 1837 -899
		mu 0 4 73 962 508 1000
		f 4 139 900 1838 -1837
		mu 0 4 962 74 1002 508
		f 4 -1839 901 -180 1839
		mu 0 4 508 1002 95 1003
		f 4 -1838 -1840 -179 -900
		mu 0 4 1000 508 1003 94
		f 4 140 1840 1841 -901
		mu 0 4 74 964 509 1002
		f 4 141 902 1842 -1841
		mu 0 4 964 75 1004 509
		f 4 -1843 903 -182 1843
		mu 0 4 509 1004 96 1005
		f 4 -1842 -1844 -181 -902
		mu 0 4 1002 509 1005 95
		f 4 142 1844 1845 -903
		mu 0 4 75 966 510 1004
		f 4 143 904 1846 -1845
		mu 0 4 966 76 1006 510
		f 4 -1847 905 -184 1847
		mu 0 4 510 1006 97 1007
		f 4 -1846 -1848 -183 -904
		mu 0 4 1004 510 1007 96
		f 4 144 1848 1849 -905
		mu 0 4 76 968 511 1006
		f 4 145 906 1850 -1849
		mu 0 4 968 77 1008 511
		f 4 -1851 907 -186 1851
		mu 0 4 511 1008 98 1009
		f 4 -1850 -1852 -185 -906
		mu 0 4 1006 511 1009 97
		f 4 146 1852 1853 -907
		mu 0 4 77 970 512 1008
		f 4 147 908 1854 -1853
		mu 0 4 970 78 1010 512
		f 4 -1855 909 -188 1855
		mu 0 4 512 1010 99 1011
		f 4 -1854 -1856 -187 -908
		mu 0 4 1008 512 1011 98
		f 4 148 1856 1857 -909
		mu 0 4 78 972 513 1010
		f 4 149 910 1858 -1857
		mu 0 4 972 79 1012 513
		f 4 -1859 911 -190 1859
		mu 0 4 513 1012 100 1013
		f 4 -1858 -1860 -189 -910
		mu 0 4 1010 513 1013 99
		f 4 150 1860 1861 -911
		mu 0 4 79 974 514 1012
		f 4 151 912 1862 -1861
		mu 0 4 974 80 1014 514
		f 4 -1863 913 -192 1863
		mu 0 4 514 1014 101 1015
		f 4 -1862 -1864 -191 -912
		mu 0 4 1012 514 1015 100
		f 4 152 1864 1865 -913
		mu 0 4 80 976 515 1014
		f 4 153 914 1866 -1865
		mu 0 4 976 81 1016 515
		f 4 -1867 915 -194 1867
		mu 0 4 515 1016 102 1017
		f 4 -1866 -1868 -193 -914
		mu 0 4 1014 515 1017 101
		f 4 154 1868 1869 -915
		mu 0 4 81 978 516 1016
		f 4 155 916 1870 -1869
		mu 0 4 978 82 1018 516
		f 4 -1871 917 -196 1871
		mu 0 4 516 1018 103 1019
		f 4 -1870 -1872 -195 -916
		mu 0 4 1016 516 1019 102
		f 4 156 1872 1873 -917
		mu 0 4 82 980 517 1018
		f 4 157 918 1874 -1873
		mu 0 4 980 83 1020 517
		f 4 -1875 919 -198 1875
		mu 0 4 517 1020 104 1021
		f 4 -1874 -1876 -197 -918
		mu 0 4 1018 517 1021 103
		f 4 158 1876 1877 -919
		mu 0 4 83 981 518 1020
		f 4 159 880 1878 -1877
		mu 0 4 981 64 985 518
		f 4 -1879 881 -200 1879
		mu 0 4 518 985 85 1022
		f 4 -1878 -1880 -199 -920
		mu 0 4 1020 518 1022 104
		f 4 160 1880 1881 -921
		mu 0 4 84 983 519 1025
		f 4 161 922 1882 -1881
		mu 0 4 983 86 1023 519
		f 4 -1883 923 -202 1883
		mu 0 4 519 1023 107 1024
		f 4 -1882 -1884 -201 -922
		mu 0 4 1025 519 1024 105
		f 4 162 1884 1885 -923
		mu 0 4 86 987 520 1023
		f 4 163 924 1886 -1885
		mu 0 4 987 87 1027 520
		f 4 -1887 925 -204 1887
		mu 0 4 520 1027 108 1028
		f 4 -1886 -1888 -203 -924
		mu 0 4 1023 520 1028 107
		f 4 164 1888 1889 -925
		mu 0 4 87 989 521 1027
		f 4 165 926 1890 -1889
		mu 0 4 989 88 1029 521
		f 4 -1891 927 -206 1891
		mu 0 4 521 1029 109 1030
		f 4 -1890 -1892 -205 -926
		mu 0 4 1027 521 1030 108
		f 4 166 1892 1893 -927
		mu 0 4 88 991 522 1029
		f 4 167 928 1894 -1893
		mu 0 4 991 89 1031 522
		f 4 -1895 929 -208 1895
		mu 0 4 522 1031 110 1032
		f 4 -1894 -1896 -207 -928
		mu 0 4 1029 522 1032 109
		f 4 168 1896 1897 -929
		mu 0 4 89 993 523 1031
		f 4 169 930 1898 -1897
		mu 0 4 993 90 1033 523
		f 4 -1899 931 -210 1899
		mu 0 4 523 1033 111 1034
		f 4 -1898 -1900 -209 -930
		mu 0 4 1031 523 1034 110
		f 4 170 1900 1901 -931
		mu 0 4 90 995 524 1033
		f 4 171 932 1902 -1901
		mu 0 4 995 91 1035 524
		f 4 -1903 933 -212 1903
		mu 0 4 524 1035 112 1036
		f 4 -1902 -1904 -211 -932
		mu 0 4 1033 524 1036 111
		f 4 172 1904 1905 -933
		mu 0 4 91 997 525 1035
		f 4 173 934 1906 -1905
		mu 0 4 997 92 1037 525
		f 4 -1907 935 -214 1907
		mu 0 4 525 1037 113 1038
		f 4 -1906 -1908 -213 -934
		mu 0 4 1035 525 1038 112
		f 4 174 1908 1909 -935
		mu 0 4 92 999 526 1037
		f 4 175 936 1910 -1909
		mu 0 4 999 93 1039 526
		f 4 -1911 937 -216 1911
		mu 0 4 526 1039 114 1040
		f 4 -1910 -1912 -215 -936
		mu 0 4 1037 526 1040 113
		f 4 176 1912 1913 -937
		mu 0 4 93 1001 527 1039
		f 4 177 938 1914 -1913
		mu 0 4 1001 94 1041 527
		f 4 -1915 939 -218 1915
		mu 0 4 527 1041 115 1042
		f 4 -1914 -1916 -217 -938
		mu 0 4 1039 527 1042 114
		f 4 178 1916 1917 -939
		mu 0 4 94 1003 528 1041
		f 4 179 940 1918 -1917
		mu 0 4 1003 95 1043 528
		f 4 -1919 941 -220 1919
		mu 0 4 528 1043 116 1044
		f 4 -1918 -1920 -219 -940
		mu 0 4 1041 528 1044 115
		f 4 180 1920 1921 -941
		mu 0 4 95 1005 529 1043
		f 4 181 942 1922 -1921
		mu 0 4 1005 96 1045 529
		f 4 -1923 943 -222 1923
		mu 0 4 529 1045 117 1046
		f 4 -1922 -1924 -221 -942
		mu 0 4 1043 529 1046 116
		f 4 182 1924 1925 -943
		mu 0 4 96 1007 530 1045
		f 4 183 944 1926 -1925
		mu 0 4 1007 97 1047 530
		f 4 -1927 945 -224 1927
		mu 0 4 530 1047 118 1048
		f 4 -1926 -1928 -223 -944
		mu 0 4 1045 530 1048 117
		f 4 184 1928 1929 -945
		mu 0 4 97 1009 531 1047
		f 4 185 946 1930 -1929
		mu 0 4 1009 98 1049 531
		f 4 -1931 947 -226 1931
		mu 0 4 531 1049 119 1050
		f 4 -1930 -1932 -225 -946
		mu 0 4 1047 531 1050 118
		f 4 186 1932 1933 -947
		mu 0 4 98 1011 532 1049
		f 4 187 948 1934 -1933
		mu 0 4 1011 99 1051 532
		f 4 -1935 949 -228 1935
		mu 0 4 532 1051 120 1052
		f 4 -1934 -1936 -227 -948
		mu 0 4 1049 532 1052 119
		f 4 188 1936 1937 -949
		mu 0 4 99 1013 533 1051
		f 4 189 950 1938 -1937
		mu 0 4 1013 100 1053 533
		f 4 -1939 951 -230 1939
		mu 0 4 533 1053 121 1054
		f 4 -1938 -1940 -229 -950
		mu 0 4 1051 533 1054 120
		f 4 190 1940 1941 -951
		mu 0 4 100 1015 534 1053
		f 4 191 952 1942 -1941
		mu 0 4 1015 101 1055 534
		f 4 -1943 953 -232 1943
		mu 0 4 534 1055 122 1056
		f 4 -1942 -1944 -231 -952
		mu 0 4 1053 534 1056 121
		f 4 192 1944 1945 -953
		mu 0 4 101 1017 535 1055
		f 4 193 954 1946 -1945
		mu 0 4 1017 102 1057 535
		f 4 -1947 955 -234 1947
		mu 0 4 535 1057 123 1058
		f 4 -1946 -1948 -233 -954
		mu 0 4 1055 535 1058 122
		f 4 194 1948 1949 -955
		mu 0 4 102 1019 536 1057
		f 4 195 956 1950 -1949
		mu 0 4 1019 103 1059 536
		f 4 -1951 957 -236 1951
		mu 0 4 536 1059 124 1060
		f 4 -1950 -1952 -235 -956
		mu 0 4 1057 536 1060 123
		f 4 196 1952 1953 -957
		mu 0 4 103 1021 537 1059
		f 4 197 958 1954 -1953
		mu 0 4 1021 104 1061 537
		f 4 -1955 959 -238 1955
		mu 0 4 537 1061 125 1062
		f 4 -1954 -1956 -237 -958
		mu 0 4 1059 537 1062 124
		f 4 198 1956 1957 -959
		mu 0 4 104 1022 538 1061
		f 4 199 920 1958 -1957
		mu 0 4 1022 85 1026 538
		f 4 -1959 921 -240 1959
		mu 0 4 538 1026 106 1063
		f 4 -1958 -1960 -239 -960
		mu 0 4 1061 538 1063 125
		f 4 200 1960 1961 -961
		mu 0 4 105 1024 539 1066
		f 4 201 962 1962 -1961
		mu 0 4 1024 107 1064 539
		f 4 -1963 963 -242 1963
		mu 0 4 539 1064 128 1065
		f 4 -1962 -1964 -241 -962
		mu 0 4 1066 539 1065 126
		f 4 202 1964 1965 -963
		mu 0 4 107 1028 540 1064
		f 4 203 964 1966 -1965
		mu 0 4 1028 108 1068 540
		f 4 -1967 965 -244 1967
		mu 0 4 540 1068 129 1069
		f 4 -1966 -1968 -243 -964
		mu 0 4 1064 540 1069 128
		f 4 204 1968 1969 -965
		mu 0 4 108 1030 541 1068
		f 4 205 966 1970 -1969
		mu 0 4 1030 109 1070 541
		f 4 -1971 967 -246 1971
		mu 0 4 541 1070 130 1071
		f 4 -1970 -1972 -245 -966
		mu 0 4 1068 541 1071 129
		f 4 206 1972 1973 -967
		mu 0 4 109 1032 542 1070
		f 4 207 968 1974 -1973
		mu 0 4 1032 110 1072 542
		f 4 -1975 969 -248 1975
		mu 0 4 542 1072 131 1073
		f 4 -1974 -1976 -247 -968
		mu 0 4 1070 542 1073 130
		f 4 208 1976 1977 -969
		mu 0 4 110 1034 543 1072
		f 4 209 970 1978 -1977
		mu 0 4 1034 111 1074 543
		f 4 -1979 971 -250 1979
		mu 0 4 543 1074 132 1075
		f 4 -1978 -1980 -249 -970
		mu 0 4 1072 543 1075 131
		f 4 210 1980 1981 -971
		mu 0 4 111 1036 544 1074
		f 4 211 972 1982 -1981
		mu 0 4 1036 112 1076 544
		f 4 -1983 973 -252 1983
		mu 0 4 544 1076 133 1077
		f 4 -1982 -1984 -251 -972
		mu 0 4 1074 544 1077 132
		f 4 212 1984 1985 -973
		mu 0 4 112 1038 545 1076
		f 4 213 974 1986 -1985
		mu 0 4 1038 113 1078 545
		f 4 -1987 975 -254 1987
		mu 0 4 545 1078 134 1079
		f 4 -1986 -1988 -253 -974
		mu 0 4 1076 545 1079 133
		f 4 214 1988 1989 -975
		mu 0 4 113 1040 546 1078
		f 4 215 976 1990 -1989
		mu 0 4 1040 114 1080 546
		f 4 -1991 977 -256 1991
		mu 0 4 546 1080 135 1081
		f 4 -1990 -1992 -255 -976
		mu 0 4 1078 546 1081 134
		f 4 216 1992 1993 -977
		mu 0 4 114 1042 547 1080
		f 4 217 978 1994 -1993
		mu 0 4 1042 115 1082 547
		f 4 -1995 979 -258 1995
		mu 0 4 547 1082 136 1083
		f 4 -1994 -1996 -257 -978
		mu 0 4 1080 547 1083 135
		f 4 218 1996 1997 -979
		mu 0 4 115 1044 548 1082
		f 4 219 980 1998 -1997
		mu 0 4 1044 116 1084 548
		f 4 -1999 981 -260 1999
		mu 0 4 548 1084 137 1085
		f 4 -1998 -2000 -259 -980
		mu 0 4 1082 548 1085 136
		f 4 220 2000 2001 -981
		mu 0 4 116 1046 549 1084
		f 4 221 982 2002 -2001
		mu 0 4 1046 117 1086 549
		f 4 -2003 983 -262 2003
		mu 0 4 549 1086 138 1087
		f 4 -2002 -2004 -261 -982
		mu 0 4 1084 549 1087 137
		f 4 222 2004 2005 -983
		mu 0 4 117 1048 550 1086
		f 4 223 984 2006 -2005
		mu 0 4 1048 118 1088 550
		f 4 -2007 985 -264 2007
		mu 0 4 550 1088 139 1089
		f 4 -2006 -2008 -263 -984
		mu 0 4 1086 550 1089 138
		f 4 224 2008 2009 -985
		mu 0 4 118 1050 551 1088
		f 4 225 986 2010 -2009
		mu 0 4 1050 119 1090 551
		f 4 -2011 987 -266 2011
		mu 0 4 551 1090 140 1091
		f 4 -2010 -2012 -265 -986
		mu 0 4 1088 551 1091 139
		f 4 226 2012 2013 -987
		mu 0 4 119 1052 552 1090
		f 4 227 988 2014 -2013
		mu 0 4 1052 120 1092 552
		f 4 -2015 989 -268 2015
		mu 0 4 552 1092 141 1093
		f 4 -2014 -2016 -267 -988
		mu 0 4 1090 552 1093 140
		f 4 228 2016 2017 -989
		mu 0 4 120 1054 553 1092
		f 4 229 990 2018 -2017
		mu 0 4 1054 121 1094 553
		f 4 -2019 991 -270 2019
		mu 0 4 553 1094 142 1095
		f 4 -2018 -2020 -269 -990
		mu 0 4 1092 553 1095 141
		f 4 230 2020 2021 -991
		mu 0 4 121 1056 554 1094
		f 4 231 992 2022 -2021
		mu 0 4 1056 122 1096 554
		f 4 -2023 993 -272 2023
		mu 0 4 554 1096 143 1097
		f 4 -2022 -2024 -271 -992
		mu 0 4 1094 554 1097 142
		f 4 232 2024 2025 -993
		mu 0 4 122 1058 555 1096
		f 4 233 994 2026 -2025
		mu 0 4 1058 123 1098 555
		f 4 -2027 995 -274 2027
		mu 0 4 555 1098 144 1099
		f 4 -2026 -2028 -273 -994
		mu 0 4 1096 555 1099 143
		f 4 234 2028 2029 -995
		mu 0 4 123 1060 556 1098
		f 4 235 996 2030 -2029
		mu 0 4 1060 124 1100 556
		f 4 -2031 997 -276 2031
		mu 0 4 556 1100 145 1101
		f 4 -2030 -2032 -275 -996
		mu 0 4 1098 556 1101 144
		f 4 236 2032 2033 -997
		mu 0 4 124 1062 557 1100
		f 4 237 998 2034 -2033
		mu 0 4 1062 125 1102 557
		f 4 -2035 999 -278 2035
		mu 0 4 557 1102 146 1103
		f 4 -2034 -2036 -277 -998
		mu 0 4 1100 557 1103 145
		f 4 238 2036 2037 -999
		mu 0 4 125 1063 558 1102
		f 4 239 960 2038 -2037
		mu 0 4 1063 106 1067 558
		f 4 -2039 961 -280 2039
		mu 0 4 558 1067 127 1104
		f 4 -2038 -2040 -279 -1000
		mu 0 4 1102 558 1104 146
		f 4 240 2040 2041 -1001
		mu 0 4 126 1065 559 1107
		f 4 241 1002 2042 -2041
		mu 0 4 1065 128 1105 559
		f 4 -2043 1003 -282 2043
		mu 0 4 559 1105 149 1106
		f 4 -2042 -2044 -281 -1002
		mu 0 4 1107 559 1106 147
		f 4 242 2044 2045 -1003
		mu 0 4 128 1069 560 1105
		f 4 243 1004 2046 -2045
		mu 0 4 1069 129 1109 560
		f 4 -2047 1005 -284 2047
		mu 0 4 560 1109 150 1110
		f 4 -2046 -2048 -283 -1004
		mu 0 4 1105 560 1110 149
		f 4 244 2048 2049 -1005
		mu 0 4 129 1071 561 1109
		f 4 245 1006 2050 -2049
		mu 0 4 1071 130 1111 561
		f 4 -2051 1007 -286 2051
		mu 0 4 561 1111 151 1112
		f 4 -2050 -2052 -285 -1006
		mu 0 4 1109 561 1112 150
		f 4 246 2052 2053 -1007
		mu 0 4 130 1073 562 1111
		f 4 247 1008 2054 -2053
		mu 0 4 1073 131 1113 562
		f 4 -2055 1009 -288 2055
		mu 0 4 562 1113 152 1114
		f 4 -2054 -2056 -287 -1008
		mu 0 4 1111 562 1114 151
		f 4 248 2056 2057 -1009
		mu 0 4 131 1075 563 1113
		f 4 249 1010 2058 -2057
		mu 0 4 1075 132 1115 563
		f 4 -2059 1011 -290 2059
		mu 0 4 563 1115 153 1116
		f 4 -2058 -2060 -289 -1010
		mu 0 4 1113 563 1116 152;
	setAttr ".fc[500:999]"
		f 4 250 2060 2061 -1011
		mu 0 4 132 1077 564 1115
		f 4 251 1012 2062 -2061
		mu 0 4 1077 133 1117 564
		f 4 -2063 1013 -292 2063
		mu 0 4 564 1117 154 1118
		f 4 -2062 -2064 -291 -1012
		mu 0 4 1115 564 1118 153
		f 4 252 2064 2065 -1013
		mu 0 4 133 1079 565 1117
		f 4 253 1014 2066 -2065
		mu 0 4 1079 134 1119 565
		f 4 -2067 1015 -294 2067
		mu 0 4 565 1119 155 1120
		f 4 -2066 -2068 -293 -1014
		mu 0 4 1117 565 1120 154
		f 4 254 2068 2069 -1015
		mu 0 4 134 1081 566 1119
		f 4 255 1016 2070 -2069
		mu 0 4 1081 135 1121 566
		f 4 -2071 1017 -296 2071
		mu 0 4 566 1121 156 1122
		f 4 -2070 -2072 -295 -1016
		mu 0 4 1119 566 1122 155
		f 4 256 2072 2073 -1017
		mu 0 4 135 1083 567 1121
		f 4 257 1018 2074 -2073
		mu 0 4 1083 136 1123 567
		f 4 -2075 1019 -298 2075
		mu 0 4 567 1123 157 1124
		f 4 -2074 -2076 -297 -1018
		mu 0 4 1121 567 1124 156
		f 4 258 2076 2077 -1019
		mu 0 4 136 1085 568 1123
		f 4 259 1020 2078 -2077
		mu 0 4 1085 137 1125 568
		f 4 -2079 1021 -300 2079
		mu 0 4 568 1125 158 1126
		f 4 -2078 -2080 -299 -1020
		mu 0 4 1123 568 1126 157
		f 4 260 2080 2081 -1021
		mu 0 4 137 1087 569 1125
		f 4 261 1022 2082 -2081
		mu 0 4 1087 138 1127 569
		f 4 -2083 1023 -302 2083
		mu 0 4 569 1127 159 1128
		f 4 -2082 -2084 -301 -1022
		mu 0 4 1125 569 1128 158
		f 4 262 2084 2085 -1023
		mu 0 4 138 1089 570 1127
		f 4 263 1024 2086 -2085
		mu 0 4 1089 139 1129 570
		f 4 -2087 1025 -304 2087
		mu 0 4 570 1129 160 1130
		f 4 -2086 -2088 -303 -1024
		mu 0 4 1127 570 1130 159
		f 4 264 2088 2089 -1025
		mu 0 4 139 1091 571 1129
		f 4 265 1026 2090 -2089
		mu 0 4 1091 140 1131 571
		f 4 -2091 1027 -306 2091
		mu 0 4 571 1131 161 1132
		f 4 -2090 -2092 -305 -1026
		mu 0 4 1129 571 1132 160
		f 4 266 2092 2093 -1027
		mu 0 4 140 1093 572 1131
		f 4 267 1028 2094 -2093
		mu 0 4 1093 141 1133 572
		f 4 -2095 1029 -308 2095
		mu 0 4 572 1133 162 1134
		f 4 -2094 -2096 -307 -1028
		mu 0 4 1131 572 1134 161
		f 4 268 2096 2097 -1029
		mu 0 4 141 1095 573 1133
		f 4 269 1030 2098 -2097
		mu 0 4 1095 142 1135 573
		f 4 -2099 1031 -310 2099
		mu 0 4 573 1135 163 1136
		f 4 -2098 -2100 -309 -1030
		mu 0 4 1133 573 1136 162
		f 4 270 2100 2101 -1031
		mu 0 4 142 1097 574 1135
		f 4 271 1032 2102 -2101
		mu 0 4 1097 143 1137 574
		f 4 -2103 1033 -312 2103
		mu 0 4 574 1137 164 1138
		f 4 -2102 -2104 -311 -1032
		mu 0 4 1135 574 1138 163
		f 4 272 2104 2105 -1033
		mu 0 4 143 1099 575 1137
		f 4 273 1034 2106 -2105
		mu 0 4 1099 144 1139 575
		f 4 -2107 1035 -314 2107
		mu 0 4 575 1139 165 1140
		f 4 -2106 -2108 -313 -1034
		mu 0 4 1137 575 1140 164
		f 4 274 2108 2109 -1035
		mu 0 4 144 1101 576 1139
		f 4 275 1036 2110 -2109
		mu 0 4 1101 145 1141 576
		f 4 -2111 1037 -316 2111
		mu 0 4 576 1141 166 1142
		f 4 -2110 -2112 -315 -1036
		mu 0 4 1139 576 1142 165
		f 4 276 2112 2113 -1037
		mu 0 4 145 1103 577 1141
		f 4 277 1038 2114 -2113
		mu 0 4 1103 146 1143 577
		f 4 -2115 1039 -318 2115
		mu 0 4 577 1143 167 1144
		f 4 -2114 -2116 -317 -1038
		mu 0 4 1141 577 1144 166
		f 4 278 2116 2117 -1039
		mu 0 4 146 1104 578 1143
		f 4 279 1000 2118 -2117
		mu 0 4 1104 127 1108 578
		f 4 -2119 1001 -320 2119
		mu 0 4 578 1108 148 1145
		f 4 -2118 -2120 -319 -1040
		mu 0 4 1143 578 1145 167
		f 4 280 2120 2121 -1041
		mu 0 4 147 1106 579 1148
		f 4 281 1042 2122 -2121
		mu 0 4 1106 149 1146 579
		f 4 -2123 1043 -322 2123
		mu 0 4 579 1146 170 1147
		f 4 -2122 -2124 -321 -1042
		mu 0 4 1148 579 1147 168
		f 4 282 2124 2125 -1043
		mu 0 4 149 1110 580 1146
		f 4 283 1044 2126 -2125
		mu 0 4 1110 150 1150 580
		f 4 -2127 1045 -324 2127
		mu 0 4 580 1150 171 1151
		f 4 -2126 -2128 -323 -1044
		mu 0 4 1146 580 1151 170
		f 4 284 2128 2129 -1045
		mu 0 4 150 1112 581 1150
		f 4 285 1046 2130 -2129
		mu 0 4 1112 151 1152 581
		f 4 -2131 1047 -326 2131
		mu 0 4 581 1152 172 1153
		f 4 -2130 -2132 -325 -1046
		mu 0 4 1150 581 1153 171
		f 4 286 2132 2133 -1047
		mu 0 4 151 1114 582 1152
		f 4 287 1048 2134 -2133
		mu 0 4 1114 152 1154 582
		f 4 -2135 1049 -328 2135
		mu 0 4 582 1154 173 1155
		f 4 -2134 -2136 -327 -1048
		mu 0 4 1152 582 1155 172
		f 4 288 2136 2137 -1049
		mu 0 4 152 1116 583 1154
		f 4 289 1050 2138 -2137
		mu 0 4 1116 153 1156 583
		f 4 -2139 1051 -330 2139
		mu 0 4 583 1156 174 1157
		f 4 -2138 -2140 -329 -1050
		mu 0 4 1154 583 1157 173
		f 4 290 2140 2141 -1051
		mu 0 4 153 1118 584 1156
		f 4 291 1052 2142 -2141
		mu 0 4 1118 154 1158 584
		f 4 -2143 1053 -332 2143
		mu 0 4 584 1158 175 1159
		f 4 -2142 -2144 -331 -1052
		mu 0 4 1156 584 1159 174
		f 4 292 2144 2145 -1053
		mu 0 4 154 1120 585 1158
		f 4 293 1054 2146 -2145
		mu 0 4 1120 155 1160 585
		f 4 -2147 1055 -334 2147
		mu 0 4 585 1160 176 1161
		f 4 -2146 -2148 -333 -1054
		mu 0 4 1158 585 1161 175
		f 4 294 2148 2149 -1055
		mu 0 4 155 1122 586 1160
		f 4 295 1056 2150 -2149
		mu 0 4 1122 156 1162 586
		f 4 -2151 1057 -336 2151
		mu 0 4 586 1162 177 1163
		f 4 -2150 -2152 -335 -1056
		mu 0 4 1160 586 1163 176
		f 4 296 2152 2153 -1057
		mu 0 4 156 1124 587 1162
		f 4 297 1058 2154 -2153
		mu 0 4 1124 157 1164 587
		f 4 -2155 1059 -338 2155
		mu 0 4 587 1164 178 1165
		f 4 -2154 -2156 -337 -1058
		mu 0 4 1162 587 1165 177
		f 4 298 2156 2157 -1059
		mu 0 4 157 1126 588 1164
		f 4 299 1060 2158 -2157
		mu 0 4 1126 158 1166 588
		f 4 -2159 1061 -340 2159
		mu 0 4 588 1166 179 1167
		f 4 -2158 -2160 -339 -1060
		mu 0 4 1164 588 1167 178
		f 4 300 2160 2161 -1061
		mu 0 4 158 1128 589 1166
		f 4 301 1062 2162 -2161
		mu 0 4 1128 159 1168 589
		f 4 -2163 1063 -342 2163
		mu 0 4 589 1168 180 1169
		f 4 -2162 -2164 -341 -1062
		mu 0 4 1166 589 1169 179
		f 4 302 2164 2165 -1063
		mu 0 4 159 1130 590 1168
		f 4 303 1064 2166 -2165
		mu 0 4 1130 160 1170 590
		f 4 -2167 1065 -344 2167
		mu 0 4 590 1170 181 1171
		f 4 -2166 -2168 -343 -1064
		mu 0 4 1168 590 1171 180
		f 4 304 2168 2169 -1065
		mu 0 4 160 1132 591 1170
		f 4 305 1066 2170 -2169
		mu 0 4 1132 161 1172 591
		f 4 -2171 1067 -346 2171
		mu 0 4 591 1172 182 1173
		f 4 -2170 -2172 -345 -1066
		mu 0 4 1170 591 1173 181
		f 4 306 2172 2173 -1067
		mu 0 4 161 1134 592 1172
		f 4 307 1068 2174 -2173
		mu 0 4 1134 162 1174 592
		f 4 -2175 1069 -348 2175
		mu 0 4 592 1174 183 1175
		f 4 -2174 -2176 -347 -1068
		mu 0 4 1172 592 1175 182
		f 4 308 2176 2177 -1069
		mu 0 4 162 1136 593 1174
		f 4 309 1070 2178 -2177
		mu 0 4 1136 163 1176 593
		f 4 -2179 1071 -350 2179
		mu 0 4 593 1176 184 1177
		f 4 -2178 -2180 -349 -1070
		mu 0 4 1174 593 1177 183
		f 4 310 2180 2181 -1071
		mu 0 4 163 1138 594 1176
		f 4 311 1072 2182 -2181
		mu 0 4 1138 164 1178 594
		f 4 -2183 1073 -352 2183
		mu 0 4 594 1178 185 1179
		f 4 -2182 -2184 -351 -1072
		mu 0 4 1176 594 1179 184
		f 4 312 2184 2185 -1073
		mu 0 4 164 1140 595 1178
		f 4 313 1074 2186 -2185
		mu 0 4 1140 165 1180 595
		f 4 -2187 1075 -354 2187
		mu 0 4 595 1180 186 1181
		f 4 -2186 -2188 -353 -1074
		mu 0 4 1178 595 1181 185
		f 4 314 2188 2189 -1075
		mu 0 4 165 1142 596 1180
		f 4 315 1076 2190 -2189
		mu 0 4 1142 166 1182 596
		f 4 -2191 1077 -356 2191
		mu 0 4 596 1182 187 1183
		f 4 -2190 -2192 -355 -1076
		mu 0 4 1180 596 1183 186
		f 4 316 2192 2193 -1077
		mu 0 4 166 1144 597 1182
		f 4 317 1078 2194 -2193
		mu 0 4 1144 167 1184 597
		f 4 -2195 1079 -358 2195
		mu 0 4 597 1184 188 1185
		f 4 -2194 -2196 -357 -1078
		mu 0 4 1182 597 1185 187
		f 4 318 2196 2197 -1079
		mu 0 4 167 1145 598 1184
		f 4 319 1040 2198 -2197
		mu 0 4 1145 148 1149 598
		f 4 -2199 1041 -360 2199
		mu 0 4 598 1149 169 1186
		f 4 -2198 -2200 -359 -1080
		mu 0 4 1184 598 1186 188
		f 4 320 2200 2201 -1081
		mu 0 4 168 1147 599 1189
		f 4 321 1082 2202 -2201
		mu 0 4 1147 170 1187 599
		f 4 -2203 1083 -362 2203
		mu 0 4 599 1187 191 1188
		f 4 -2202 -2204 -361 -1082
		mu 0 4 1189 599 1188 189
		f 4 322 2204 2205 -1083
		mu 0 4 170 1151 600 1187
		f 4 323 1084 2206 -2205
		mu 0 4 1151 171 1191 600
		f 4 -2207 1085 -364 2207
		mu 0 4 600 1191 192 1192
		f 4 -2206 -2208 -363 -1084
		mu 0 4 1187 600 1192 191
		f 4 324 2208 2209 -1085
		mu 0 4 171 1153 601 1191
		f 4 325 1086 2210 -2209
		mu 0 4 1153 172 1193 601
		f 4 -2211 1087 -366 2211
		mu 0 4 601 1193 193 1194
		f 4 -2210 -2212 -365 -1086
		mu 0 4 1191 601 1194 192
		f 4 326 2212 2213 -1087
		mu 0 4 172 1155 602 1193
		f 4 327 1088 2214 -2213
		mu 0 4 1155 173 1195 602
		f 4 -2215 1089 -368 2215
		mu 0 4 602 1195 194 1196
		f 4 -2214 -2216 -367 -1088
		mu 0 4 1193 602 1196 193
		f 4 328 2216 2217 -1089
		mu 0 4 173 1157 603 1195
		f 4 329 1090 2218 -2217
		mu 0 4 1157 174 1197 603
		f 4 -2219 1091 -370 2219
		mu 0 4 603 1197 195 1198
		f 4 -2218 -2220 -369 -1090
		mu 0 4 1195 603 1198 194
		f 4 330 2220 2221 -1091
		mu 0 4 174 1159 604 1197
		f 4 331 1092 2222 -2221
		mu 0 4 1159 175 1199 604
		f 4 -2223 1093 -372 2223
		mu 0 4 604 1199 196 1200
		f 4 -2222 -2224 -371 -1092
		mu 0 4 1197 604 1200 195
		f 4 332 2224 2225 -1093
		mu 0 4 175 1161 605 1199
		f 4 333 1094 2226 -2225
		mu 0 4 1161 176 1201 605
		f 4 -2227 1095 -374 2227
		mu 0 4 605 1201 197 1202
		f 4 -2226 -2228 -373 -1094
		mu 0 4 1199 605 1202 196
		f 4 334 2228 2229 -1095
		mu 0 4 176 1163 606 1201
		f 4 335 1096 2230 -2229
		mu 0 4 1163 177 1203 606
		f 4 -2231 1097 -376 2231
		mu 0 4 606 1203 198 1204
		f 4 -2230 -2232 -375 -1096
		mu 0 4 1201 606 1204 197
		f 4 336 2232 2233 -1097
		mu 0 4 177 1165 607 1203
		f 4 337 1098 2234 -2233
		mu 0 4 1165 178 1205 607
		f 4 -2235 1099 -378 2235
		mu 0 4 607 1205 199 1206
		f 4 -2234 -2236 -377 -1098
		mu 0 4 1203 607 1206 198
		f 4 338 2236 2237 -1099
		mu 0 4 178 1167 608 1205
		f 4 339 1100 2238 -2237
		mu 0 4 1167 179 1207 608
		f 4 -2239 1101 -380 2239
		mu 0 4 608 1207 200 1208
		f 4 -2238 -2240 -379 -1100
		mu 0 4 1205 608 1208 199
		f 4 340 2240 2241 -1101
		mu 0 4 179 1169 609 1207
		f 4 341 1102 2242 -2241
		mu 0 4 1169 180 1209 609
		f 4 -2243 1103 -382 2243
		mu 0 4 609 1209 201 1210
		f 4 -2242 -2244 -381 -1102
		mu 0 4 1207 609 1210 200
		f 4 342 2244 2245 -1103
		mu 0 4 180 1171 610 1209
		f 4 343 1104 2246 -2245
		mu 0 4 1171 181 1211 610
		f 4 -2247 1105 -384 2247
		mu 0 4 610 1211 202 1212
		f 4 -2246 -2248 -383 -1104
		mu 0 4 1209 610 1212 201
		f 4 344 2248 2249 -1105
		mu 0 4 181 1173 611 1211
		f 4 345 1106 2250 -2249
		mu 0 4 1173 182 1213 611
		f 4 -2251 1107 -386 2251
		mu 0 4 611 1213 203 1214
		f 4 -2250 -2252 -385 -1106
		mu 0 4 1211 611 1214 202
		f 4 346 2252 2253 -1107
		mu 0 4 182 1175 612 1213
		f 4 347 1108 2254 -2253
		mu 0 4 1175 183 1215 612
		f 4 -2255 1109 -388 2255
		mu 0 4 612 1215 204 1216
		f 4 -2254 -2256 -387 -1108
		mu 0 4 1213 612 1216 203
		f 4 348 2256 2257 -1109
		mu 0 4 183 1177 613 1215
		f 4 349 1110 2258 -2257
		mu 0 4 1177 184 1217 613
		f 4 -2259 1111 -390 2259
		mu 0 4 613 1217 205 1218
		f 4 -2258 -2260 -389 -1110
		mu 0 4 1215 613 1218 204
		f 4 350 2260 2261 -1111
		mu 0 4 184 1179 614 1217
		f 4 351 1112 2262 -2261
		mu 0 4 1179 185 1219 614
		f 4 -2263 1113 -392 2263
		mu 0 4 614 1219 206 1220
		f 4 -2262 -2264 -391 -1112
		mu 0 4 1217 614 1220 205
		f 4 352 2264 2265 -1113
		mu 0 4 185 1181 615 1219
		f 4 353 1114 2266 -2265
		mu 0 4 1181 186 1221 615
		f 4 -2267 1115 -394 2267
		mu 0 4 615 1221 207 1222
		f 4 -2266 -2268 -393 -1114
		mu 0 4 1219 615 1222 206
		f 4 354 2268 2269 -1115
		mu 0 4 186 1183 616 1221
		f 4 355 1116 2270 -2269
		mu 0 4 1183 187 1223 616
		f 4 -2271 1117 -396 2271
		mu 0 4 616 1223 208 1224
		f 4 -2270 -2272 -395 -1116
		mu 0 4 1221 616 1224 207
		f 4 356 2272 2273 -1117
		mu 0 4 187 1185 617 1223
		f 4 357 1118 2274 -2273
		mu 0 4 1185 188 1225 617
		f 4 -2275 1119 -398 2275
		mu 0 4 617 1225 209 1226
		f 4 -2274 -2276 -397 -1118
		mu 0 4 1223 617 1226 208
		f 4 358 2276 2277 -1119
		mu 0 4 188 1186 618 1225
		f 4 359 1080 2278 -2277
		mu 0 4 1186 169 1190 618
		f 4 -2279 1081 -400 2279
		mu 0 4 618 1190 190 1227
		f 4 -2278 -2280 -399 -1120
		mu 0 4 1225 618 1227 209
		f 4 360 2280 2281 -1121
		mu 0 4 189 1188 619 1230
		f 4 361 1122 2282 -2281
		mu 0 4 1188 191 1228 619
		f 4 -2283 1123 -402 2283
		mu 0 4 619 1228 212 1229
		f 4 -2282 -2284 -401 -1122
		mu 0 4 1230 619 1229 210
		f 4 362 2284 2285 -1123
		mu 0 4 191 1192 620 1228
		f 4 363 1124 2286 -2285
		mu 0 4 1192 192 1232 620
		f 4 -2287 1125 -404 2287
		mu 0 4 620 1232 213 1233
		f 4 -2286 -2288 -403 -1124
		mu 0 4 1228 620 1233 212
		f 4 364 2288 2289 -1125
		mu 0 4 192 1194 621 1232
		f 4 365 1126 2290 -2289
		mu 0 4 1194 193 1234 621
		f 4 -2291 1127 -406 2291
		mu 0 4 621 1234 214 1235
		f 4 -2290 -2292 -405 -1126
		mu 0 4 1232 621 1235 213
		f 4 366 2292 2293 -1127
		mu 0 4 193 1196 622 1234
		f 4 367 1128 2294 -2293
		mu 0 4 1196 194 1236 622
		f 4 -2295 1129 -408 2295
		mu 0 4 622 1236 215 1237
		f 4 -2294 -2296 -407 -1128
		mu 0 4 1234 622 1237 214
		f 4 368 2296 2297 -1129
		mu 0 4 194 1198 623 1236
		f 4 369 1130 2298 -2297
		mu 0 4 1198 195 1238 623
		f 4 -2299 1131 -410 2299
		mu 0 4 623 1238 216 1239
		f 4 -2298 -2300 -409 -1130
		mu 0 4 1236 623 1239 215
		f 4 370 2300 2301 -1131
		mu 0 4 195 1200 624 1238
		f 4 371 1132 2302 -2301
		mu 0 4 1200 196 1240 624
		f 4 -2303 1133 -412 2303
		mu 0 4 624 1240 217 1241
		f 4 -2302 -2304 -411 -1132
		mu 0 4 1238 624 1241 216
		f 4 372 2304 2305 -1133
		mu 0 4 196 1202 625 1240
		f 4 373 1134 2306 -2305
		mu 0 4 1202 197 1242 625
		f 4 -2307 1135 -414 2307
		mu 0 4 625 1242 218 1243
		f 4 -2306 -2308 -413 -1134
		mu 0 4 1240 625 1243 217
		f 4 374 2308 2309 -1135
		mu 0 4 197 1204 626 1242
		f 4 375 1136 2310 -2309
		mu 0 4 1204 198 1244 626
		f 4 -2311 1137 -416 2311
		mu 0 4 626 1244 219 1245
		f 4 -2310 -2312 -415 -1136
		mu 0 4 1242 626 1245 218
		f 4 376 2312 2313 -1137
		mu 0 4 198 1206 627 1244
		f 4 377 1138 2314 -2313
		mu 0 4 1206 199 1246 627
		f 4 -2315 1139 -418 2315
		mu 0 4 627 1246 220 1247
		f 4 -2314 -2316 -417 -1138
		mu 0 4 1244 627 1247 219
		f 4 378 2316 2317 -1139
		mu 0 4 199 1208 628 1246
		f 4 379 1140 2318 -2317
		mu 0 4 1208 200 1248 628
		f 4 -2319 1141 -420 2319
		mu 0 4 628 1248 221 1249
		f 4 -2318 -2320 -419 -1140
		mu 0 4 1246 628 1249 220
		f 4 380 2320 2321 -1141
		mu 0 4 200 1210 629 1248
		f 4 381 1142 2322 -2321
		mu 0 4 1210 201 1250 629
		f 4 -2323 1143 -422 2323
		mu 0 4 629 1250 222 1251
		f 4 -2322 -2324 -421 -1142
		mu 0 4 1248 629 1251 221
		f 4 382 2324 2325 -1143
		mu 0 4 201 1212 630 1250
		f 4 383 1144 2326 -2325
		mu 0 4 1212 202 1252 630
		f 4 -2327 1145 -424 2327
		mu 0 4 630 1252 223 1253
		f 4 -2326 -2328 -423 -1144
		mu 0 4 1250 630 1253 222
		f 4 384 2328 2329 -1145
		mu 0 4 202 1214 631 1252
		f 4 385 1146 2330 -2329
		mu 0 4 1214 203 1254 631
		f 4 -2331 1147 -426 2331
		mu 0 4 631 1254 224 1255
		f 4 -2330 -2332 -425 -1146
		mu 0 4 1252 631 1255 223
		f 4 386 2332 2333 -1147
		mu 0 4 203 1216 632 1254
		f 4 387 1148 2334 -2333
		mu 0 4 1216 204 1256 632
		f 4 -2335 1149 -428 2335
		mu 0 4 632 1256 225 1257
		f 4 -2334 -2336 -427 -1148
		mu 0 4 1254 632 1257 224
		f 4 388 2336 2337 -1149
		mu 0 4 204 1218 633 1256
		f 4 389 1150 2338 -2337
		mu 0 4 1218 205 1258 633
		f 4 -2339 1151 -430 2339
		mu 0 4 633 1258 226 1259
		f 4 -2338 -2340 -429 -1150
		mu 0 4 1256 633 1259 225
		f 4 390 2340 2341 -1151
		mu 0 4 205 1220 634 1258
		f 4 391 1152 2342 -2341
		mu 0 4 1220 206 1260 634
		f 4 -2343 1153 -432 2343
		mu 0 4 634 1260 227 1261
		f 4 -2342 -2344 -431 -1152
		mu 0 4 1258 634 1261 226
		f 4 392 2344 2345 -1153
		mu 0 4 206 1222 635 1260
		f 4 393 1154 2346 -2345
		mu 0 4 1222 207 1262 635
		f 4 -2347 1155 -434 2347
		mu 0 4 635 1262 228 1263
		f 4 -2346 -2348 -433 -1154
		mu 0 4 1260 635 1263 227
		f 4 394 2348 2349 -1155
		mu 0 4 207 1224 636 1262
		f 4 395 1156 2350 -2349
		mu 0 4 1224 208 1264 636
		f 4 -2351 1157 -436 2351
		mu 0 4 636 1264 229 1265
		f 4 -2350 -2352 -435 -1156
		mu 0 4 1262 636 1265 228
		f 4 396 2352 2353 -1157
		mu 0 4 208 1226 637 1264
		f 4 397 1158 2354 -2353
		mu 0 4 1226 209 1266 637
		f 4 -2355 1159 -438 2355
		mu 0 4 637 1266 230 1267
		f 4 -2354 -2356 -437 -1158
		mu 0 4 1264 637 1267 229
		f 4 398 2356 2357 -1159
		mu 0 4 209 1227 638 1266
		f 4 399 1120 2358 -2357
		mu 0 4 1227 190 1231 638
		f 4 -2359 1121 -440 2359
		mu 0 4 638 1231 211 1268
		f 4 -2358 -2360 -439 -1160
		mu 0 4 1266 638 1268 230
		f 4 400 2360 2361 -1161
		mu 0 4 210 1229 639 1271
		f 4 401 1162 2362 -2361
		mu 0 4 1229 212 1269 639
		f 4 -2363 1163 -442 2363
		mu 0 4 639 1269 233 1270
		f 4 -2362 -2364 -441 -1162
		mu 0 4 1271 639 1270 231
		f 4 402 2364 2365 -1163
		mu 0 4 212 1233 640 1269
		f 4 403 1164 2366 -2365
		mu 0 4 1233 213 1273 640
		f 4 -2367 1165 -444 2367
		mu 0 4 640 1273 234 1274
		f 4 -2366 -2368 -443 -1164
		mu 0 4 1269 640 1274 233
		f 4 404 2368 2369 -1165
		mu 0 4 213 1235 641 1273
		f 4 405 1166 2370 -2369
		mu 0 4 1235 214 1275 641
		f 4 -2371 1167 -446 2371
		mu 0 4 641 1275 235 1276
		f 4 -2370 -2372 -445 -1166
		mu 0 4 1273 641 1276 234
		f 4 406 2372 2373 -1167
		mu 0 4 214 1237 642 1275
		f 4 407 1168 2374 -2373
		mu 0 4 1237 215 1277 642
		f 4 -2375 1169 -448 2375
		mu 0 4 642 1277 236 1278
		f 4 -2374 -2376 -447 -1168
		mu 0 4 1275 642 1278 235
		f 4 408 2376 2377 -1169
		mu 0 4 215 1239 643 1277
		f 4 409 1170 2378 -2377
		mu 0 4 1239 216 1279 643
		f 4 -2379 1171 -450 2379
		mu 0 4 643 1279 237 1280
		f 4 -2378 -2380 -449 -1170
		mu 0 4 1277 643 1280 236
		f 4 410 2380 2381 -1171
		mu 0 4 216 1241 644 1279
		f 4 411 1172 2382 -2381
		mu 0 4 1241 217 1281 644
		f 4 -2383 1173 -452 2383
		mu 0 4 644 1281 238 1282
		f 4 -2382 -2384 -451 -1172
		mu 0 4 1279 644 1282 237
		f 4 412 2384 2385 -1173
		mu 0 4 217 1243 645 1281
		f 4 413 1174 2386 -2385
		mu 0 4 1243 218 1283 645
		f 4 -2387 1175 -454 2387
		mu 0 4 645 1283 239 1284
		f 4 -2386 -2388 -453 -1174
		mu 0 4 1281 645 1284 238
		f 4 414 2388 2389 -1175
		mu 0 4 218 1245 646 1283
		f 4 415 1176 2390 -2389
		mu 0 4 1245 219 1285 646
		f 4 -2391 1177 -456 2391
		mu 0 4 646 1285 240 1286
		f 4 -2390 -2392 -455 -1176
		mu 0 4 1283 646 1286 239
		f 4 416 2392 2393 -1177
		mu 0 4 219 1247 647 1285
		f 4 417 1178 2394 -2393
		mu 0 4 1247 220 1287 647
		f 4 -2395 1179 -458 2395
		mu 0 4 647 1287 241 1288
		f 4 -2394 -2396 -457 -1178
		mu 0 4 1285 647 1288 240
		f 4 418 2396 2397 -1179
		mu 0 4 220 1249 648 1287
		f 4 419 1180 2398 -2397
		mu 0 4 1249 221 1289 648
		f 4 -2399 1181 -460 2399
		mu 0 4 648 1289 242 1290
		f 4 -2398 -2400 -459 -1180
		mu 0 4 1287 648 1290 241
		f 4 420 2400 2401 -1181
		mu 0 4 221 1251 649 1289
		f 4 421 1182 2402 -2401
		mu 0 4 1251 222 1291 649
		f 4 -2403 1183 -462 2403
		mu 0 4 649 1291 243 1292
		f 4 -2402 -2404 -461 -1182
		mu 0 4 1289 649 1292 242
		f 4 422 2404 2405 -1183
		mu 0 4 222 1253 650 1291
		f 4 423 1184 2406 -2405
		mu 0 4 1253 223 1293 650
		f 4 -2407 1185 -464 2407
		mu 0 4 650 1293 244 1294
		f 4 -2406 -2408 -463 -1184
		mu 0 4 1291 650 1294 243
		f 4 424 2408 2409 -1185
		mu 0 4 223 1255 651 1293
		f 4 425 1186 2410 -2409
		mu 0 4 1255 224 1295 651
		f 4 -2411 1187 -466 2411
		mu 0 4 651 1295 245 1296
		f 4 -2410 -2412 -465 -1186
		mu 0 4 1293 651 1296 244
		f 4 426 2412 2413 -1187
		mu 0 4 224 1257 652 1295
		f 4 427 1188 2414 -2413
		mu 0 4 1257 225 1297 652
		f 4 -2415 1189 -468 2415
		mu 0 4 652 1297 246 1298
		f 4 -2414 -2416 -467 -1188
		mu 0 4 1295 652 1298 245
		f 4 428 2416 2417 -1189
		mu 0 4 225 1259 653 1297
		f 4 429 1190 2418 -2417
		mu 0 4 1259 226 1299 653
		f 4 -2419 1191 -470 2419
		mu 0 4 653 1299 247 1300
		f 4 -2418 -2420 -469 -1190
		mu 0 4 1297 653 1300 246
		f 4 430 2420 2421 -1191
		mu 0 4 226 1261 654 1299
		f 4 431 1192 2422 -2421
		mu 0 4 1261 227 1301 654
		f 4 -2423 1193 -472 2423
		mu 0 4 654 1301 248 1302
		f 4 -2422 -2424 -471 -1192
		mu 0 4 1299 654 1302 247
		f 4 432 2424 2425 -1193
		mu 0 4 227 1263 655 1301
		f 4 433 1194 2426 -2425
		mu 0 4 1263 228 1303 655
		f 4 -2427 1195 -474 2427
		mu 0 4 655 1303 249 1304
		f 4 -2426 -2428 -473 -1194
		mu 0 4 1301 655 1304 248
		f 4 434 2428 2429 -1195
		mu 0 4 228 1265 656 1303
		f 4 435 1196 2430 -2429
		mu 0 4 1265 229 1305 656
		f 4 -2431 1197 -476 2431
		mu 0 4 656 1305 250 1306
		f 4 -2430 -2432 -475 -1196
		mu 0 4 1303 656 1306 249
		f 4 436 2432 2433 -1197
		mu 0 4 229 1267 657 1305
		f 4 437 1198 2434 -2433
		mu 0 4 1267 230 1307 657
		f 4 -2435 1199 -478 2435
		mu 0 4 657 1307 251 1308
		f 4 -2434 -2436 -477 -1198
		mu 0 4 1305 657 1308 250
		f 4 438 2436 2437 -1199
		mu 0 4 230 1268 658 1307
		f 4 439 1160 2438 -2437
		mu 0 4 1268 211 1272 658
		f 4 -2439 1161 -480 2439
		mu 0 4 658 1272 232 1309
		f 4 -2438 -2440 -479 -1200
		mu 0 4 1307 658 1309 251
		f 4 440 2440 2441 -1201
		mu 0 4 231 1270 659 1312
		f 4 441 1202 2442 -2441
		mu 0 4 1270 233 1310 659
		f 4 -2443 1203 -482 2443
		mu 0 4 659 1310 254 1311
		f 4 -2442 -2444 -481 -1202
		mu 0 4 1312 659 1311 252
		f 4 442 2444 2445 -1203
		mu 0 4 233 1274 660 1310
		f 4 443 1204 2446 -2445
		mu 0 4 1274 234 1314 660
		f 4 -2447 1205 -484 2447
		mu 0 4 660 1314 255 1315
		f 4 -2446 -2448 -483 -1204
		mu 0 4 1310 660 1315 254
		f 4 444 2448 2449 -1205
		mu 0 4 234 1276 661 1314
		f 4 445 1206 2450 -2449
		mu 0 4 1276 235 1316 661
		f 4 -2451 1207 -486 2451
		mu 0 4 661 1316 256 1317
		f 4 -2450 -2452 -485 -1206
		mu 0 4 1314 661 1317 255
		f 4 446 2452 2453 -1207
		mu 0 4 235 1278 662 1316
		f 4 447 1208 2454 -2453
		mu 0 4 1278 236 1318 662
		f 4 -2455 1209 -488 2455
		mu 0 4 662 1318 257 1319
		f 4 -2454 -2456 -487 -1208
		mu 0 4 1316 662 1319 256
		f 4 448 2456 2457 -1209
		mu 0 4 236 1280 663 1318
		f 4 449 1210 2458 -2457
		mu 0 4 1280 237 1320 663
		f 4 -2459 1211 -490 2459
		mu 0 4 663 1320 258 1321
		f 4 -2458 -2460 -489 -1210
		mu 0 4 1318 663 1321 257
		f 4 450 2460 2461 -1211
		mu 0 4 237 1282 664 1320
		f 4 451 1212 2462 -2461
		mu 0 4 1282 238 1322 664
		f 4 -2463 1213 -492 2463
		mu 0 4 664 1322 259 1323
		f 4 -2462 -2464 -491 -1212
		mu 0 4 1320 664 1323 258
		f 4 452 2464 2465 -1213
		mu 0 4 238 1284 665 1322
		f 4 453 1214 2466 -2465
		mu 0 4 1284 239 1324 665
		f 4 -2467 1215 -494 2467
		mu 0 4 665 1324 260 1325
		f 4 -2466 -2468 -493 -1214
		mu 0 4 1322 665 1325 259
		f 4 454 2468 2469 -1215
		mu 0 4 239 1286 666 1324
		f 4 455 1216 2470 -2469
		mu 0 4 1286 240 1326 666
		f 4 -2471 1217 -496 2471
		mu 0 4 666 1326 261 1327
		f 4 -2470 -2472 -495 -1216
		mu 0 4 1324 666 1327 260
		f 4 456 2472 2473 -1217
		mu 0 4 240 1288 667 1326
		f 4 457 1218 2474 -2473
		mu 0 4 1288 241 1328 667
		f 4 -2475 1219 -498 2475
		mu 0 4 667 1328 262 1329
		f 4 -2474 -2476 -497 -1218
		mu 0 4 1326 667 1329 261
		f 4 458 2476 2477 -1219
		mu 0 4 241 1290 668 1328
		f 4 459 1220 2478 -2477
		mu 0 4 1290 242 1330 668
		f 4 -2479 1221 -500 2479
		mu 0 4 668 1330 263 1331
		f 4 -2478 -2480 -499 -1220
		mu 0 4 1328 668 1331 262
		f 4 460 2480 2481 -1221
		mu 0 4 242 1292 669 1330
		f 4 461 1222 2482 -2481
		mu 0 4 1292 243 1332 669
		f 4 -2483 1223 -502 2483
		mu 0 4 669 1332 264 1333
		f 4 -2482 -2484 -501 -1222
		mu 0 4 1330 669 1333 263
		f 4 462 2484 2485 -1223
		mu 0 4 243 1294 670 1332
		f 4 463 1224 2486 -2485
		mu 0 4 1294 244 1334 670
		f 4 -2487 1225 -504 2487
		mu 0 4 670 1334 265 1335
		f 4 -2486 -2488 -503 -1224
		mu 0 4 1332 670 1335 264
		f 4 464 2488 2489 -1225
		mu 0 4 244 1296 671 1334
		f 4 465 1226 2490 -2489
		mu 0 4 1296 245 1336 671
		f 4 -2491 1227 -506 2491
		mu 0 4 671 1336 266 1337
		f 4 -2490 -2492 -505 -1226
		mu 0 4 1334 671 1337 265
		f 4 466 2492 2493 -1227
		mu 0 4 245 1298 672 1336
		f 4 467 1228 2494 -2493
		mu 0 4 1298 246 1338 672
		f 4 -2495 1229 -508 2495
		mu 0 4 672 1338 267 1339
		f 4 -2494 -2496 -507 -1228
		mu 0 4 1336 672 1339 266
		f 4 468 2496 2497 -1229
		mu 0 4 246 1300 673 1338
		f 4 469 1230 2498 -2497
		mu 0 4 1300 247 1340 673
		f 4 -2499 1231 -510 2499
		mu 0 4 673 1340 268 1341
		f 4 -2498 -2500 -509 -1230
		mu 0 4 1338 673 1341 267
		f 4 470 2500 2501 -1231
		mu 0 4 247 1302 674 1340
		f 4 471 1232 2502 -2501
		mu 0 4 1302 248 1342 674
		f 4 -2503 1233 -512 2503
		mu 0 4 674 1342 269 1343
		f 4 -2502 -2504 -511 -1232
		mu 0 4 1340 674 1343 268
		f 4 472 2504 2505 -1233
		mu 0 4 248 1304 675 1342
		f 4 473 1234 2506 -2505
		mu 0 4 1304 249 1344 675
		f 4 -2507 1235 -514 2507
		mu 0 4 675 1344 270 1345
		f 4 -2506 -2508 -513 -1234
		mu 0 4 1342 675 1345 269
		f 4 474 2508 2509 -1235
		mu 0 4 249 1306 676 1344
		f 4 475 1236 2510 -2509
		mu 0 4 1306 250 1346 676
		f 4 -2511 1237 -516 2511
		mu 0 4 676 1346 271 1347
		f 4 -2510 -2512 -515 -1236
		mu 0 4 1344 676 1347 270
		f 4 476 2512 2513 -1237
		mu 0 4 250 1308 677 1346
		f 4 477 1238 2514 -2513
		mu 0 4 1308 251 1348 677
		f 4 -2515 1239 -518 2515
		mu 0 4 677 1348 272 1349
		f 4 -2514 -2516 -517 -1238
		mu 0 4 1346 677 1349 271
		f 4 478 2516 2517 -1239
		mu 0 4 251 1309 678 1348
		f 4 479 1200 2518 -2517
		mu 0 4 1309 232 1313 678
		f 4 -2519 1201 -520 2519
		mu 0 4 678 1313 253 1350
		f 4 -2518 -2520 -519 -1240
		mu 0 4 1348 678 1350 272
		f 4 480 2520 2521 -1241
		mu 0 4 252 1311 679 1353
		f 4 481 1242 2522 -2521
		mu 0 4 1311 254 1351 679
		f 4 -2523 1243 -522 2523
		mu 0 4 679 1351 275 1352
		f 4 -2522 -2524 -521 -1242
		mu 0 4 1353 679 1352 273
		f 4 482 2524 2525 -1243
		mu 0 4 254 1315 680 1351
		f 4 483 1244 2526 -2525
		mu 0 4 1315 255 1355 680
		f 4 -2527 1245 -524 2527
		mu 0 4 680 1355 276 1356
		f 4 -2526 -2528 -523 -1244
		mu 0 4 1351 680 1356 275
		f 4 484 2528 2529 -1245
		mu 0 4 255 1317 681 1355
		f 4 485 1246 2530 -2529
		mu 0 4 1317 256 1357 681
		f 4 -2531 1247 -526 2531
		mu 0 4 681 1357 277 1358
		f 4 -2530 -2532 -525 -1246
		mu 0 4 1355 681 1358 276
		f 4 486 2532 2533 -1247
		mu 0 4 256 1319 682 1357
		f 4 487 1248 2534 -2533
		mu 0 4 1319 257 1359 682
		f 4 -2535 1249 -528 2535
		mu 0 4 682 1359 278 1360
		f 4 -2534 -2536 -527 -1248
		mu 0 4 1357 682 1360 277
		f 4 488 2536 2537 -1249
		mu 0 4 257 1321 683 1359
		f 4 489 1250 2538 -2537
		mu 0 4 1321 258 1361 683
		f 4 -2539 1251 -530 2539
		mu 0 4 683 1361 279 1362
		f 4 -2538 -2540 -529 -1250
		mu 0 4 1359 683 1362 278
		f 4 490 2540 2541 -1251
		mu 0 4 258 1323 684 1361
		f 4 491 1252 2542 -2541
		mu 0 4 1323 259 1363 684
		f 4 -2543 1253 -532 2543
		mu 0 4 684 1363 280 1364
		f 4 -2542 -2544 -531 -1252
		mu 0 4 1361 684 1364 279
		f 4 492 2544 2545 -1253
		mu 0 4 259 1325 685 1363
		f 4 493 1254 2546 -2545
		mu 0 4 1325 260 1365 685
		f 4 -2547 1255 -534 2547
		mu 0 4 685 1365 281 1366
		f 4 -2546 -2548 -533 -1254
		mu 0 4 1363 685 1366 280
		f 4 494 2548 2549 -1255
		mu 0 4 260 1327 686 1365
		f 4 495 1256 2550 -2549
		mu 0 4 1327 261 1367 686
		f 4 -2551 1257 -536 2551
		mu 0 4 686 1367 282 1368
		f 4 -2550 -2552 -535 -1256
		mu 0 4 1365 686 1368 281
		f 4 496 2552 2553 -1257
		mu 0 4 261 1329 687 1367
		f 4 497 1258 2554 -2553
		mu 0 4 1329 262 1369 687
		f 4 -2555 1259 -538 2555
		mu 0 4 687 1369 283 1370
		f 4 -2554 -2556 -537 -1258
		mu 0 4 1367 687 1370 282
		f 4 498 2556 2557 -1259
		mu 0 4 262 1331 688 1369
		f 4 499 1260 2558 -2557
		mu 0 4 1331 263 1371 688
		f 4 -2559 1261 -540 2559
		mu 0 4 688 1371 284 1372
		f 4 -2558 -2560 -539 -1260
		mu 0 4 1369 688 1372 283;
	setAttr ".fc[1000:1499]"
		f 4 500 2560 2561 -1261
		mu 0 4 263 1333 689 1371
		f 4 501 1262 2562 -2561
		mu 0 4 1333 264 1373 689
		f 4 -2563 1263 -542 2563
		mu 0 4 689 1373 285 1374
		f 4 -2562 -2564 -541 -1262
		mu 0 4 1371 689 1374 284
		f 4 502 2564 2565 -1263
		mu 0 4 264 1335 690 1373
		f 4 503 1264 2566 -2565
		mu 0 4 1335 265 1375 690
		f 4 -2567 1265 -544 2567
		mu 0 4 690 1375 286 1376
		f 4 -2566 -2568 -543 -1264
		mu 0 4 1373 690 1376 285
		f 4 504 2568 2569 -1265
		mu 0 4 265 1337 691 1375
		f 4 505 1266 2570 -2569
		mu 0 4 1337 266 1377 691
		f 4 -2571 1267 -546 2571
		mu 0 4 691 1377 287 1378
		f 4 -2570 -2572 -545 -1266
		mu 0 4 1375 691 1378 286
		f 4 506 2572 2573 -1267
		mu 0 4 266 1339 692 1377
		f 4 507 1268 2574 -2573
		mu 0 4 1339 267 1379 692
		f 4 -2575 1269 -548 2575
		mu 0 4 692 1379 288 1380
		f 4 -2574 -2576 -547 -1268
		mu 0 4 1377 692 1380 287
		f 4 508 2576 2577 -1269
		mu 0 4 267 1341 693 1379
		f 4 509 1270 2578 -2577
		mu 0 4 1341 268 1381 693
		f 4 -2579 1271 -550 2579
		mu 0 4 693 1381 289 1382
		f 4 -2578 -2580 -549 -1270
		mu 0 4 1379 693 1382 288
		f 4 510 2580 2581 -1271
		mu 0 4 268 1343 694 1381
		f 4 511 1272 2582 -2581
		mu 0 4 1343 269 1383 694
		f 4 -2583 1273 -552 2583
		mu 0 4 694 1383 290 1384
		f 4 -2582 -2584 -551 -1272
		mu 0 4 1381 694 1384 289
		f 4 512 2584 2585 -1273
		mu 0 4 269 1345 695 1383
		f 4 513 1274 2586 -2585
		mu 0 4 1345 270 1385 695
		f 4 -2587 1275 -554 2587
		mu 0 4 695 1385 291 1386
		f 4 -2586 -2588 -553 -1274
		mu 0 4 1383 695 1386 290
		f 4 514 2588 2589 -1275
		mu 0 4 270 1347 696 1385
		f 4 515 1276 2590 -2589
		mu 0 4 1347 271 1387 696
		f 4 -2591 1277 -556 2591
		mu 0 4 696 1387 292 1388
		f 4 -2590 -2592 -555 -1276
		mu 0 4 1385 696 1388 291
		f 4 516 2592 2593 -1277
		mu 0 4 271 1349 697 1387
		f 4 517 1278 2594 -2593
		mu 0 4 1349 272 1389 697
		f 4 -2595 1279 -558 2595
		mu 0 4 697 1389 293 1390
		f 4 -2594 -2596 -557 -1278
		mu 0 4 1387 697 1390 292
		f 4 518 2596 2597 -1279
		mu 0 4 272 1350 698 1389
		f 4 519 1240 2598 -2597
		mu 0 4 1350 253 1354 698
		f 4 -2599 1241 -560 2599
		mu 0 4 698 1354 274 1391
		f 4 -2598 -2600 -559 -1280
		mu 0 4 1389 698 1391 293
		f 4 520 2600 2601 -1281
		mu 0 4 273 1352 699 1394
		f 4 521 1282 2602 -2601
		mu 0 4 1352 275 1392 699
		f 4 -2603 1283 -562 2603
		mu 0 4 699 1392 296 1393
		f 4 -2602 -2604 -561 -1282
		mu 0 4 1394 699 1393 294
		f 4 522 2604 2605 -1283
		mu 0 4 275 1356 700 1392
		f 4 523 1284 2606 -2605
		mu 0 4 1356 276 1396 700
		f 4 -2607 1285 -564 2607
		mu 0 4 700 1396 297 1397
		f 4 -2606 -2608 -563 -1284
		mu 0 4 1392 700 1397 296
		f 4 524 2608 2609 -1285
		mu 0 4 276 1358 701 1396
		f 4 525 1286 2610 -2609
		mu 0 4 1358 277 1398 701
		f 4 -2611 1287 -566 2611
		mu 0 4 701 1398 298 1399
		f 4 -2610 -2612 -565 -1286
		mu 0 4 1396 701 1399 297
		f 4 526 2612 2613 -1287
		mu 0 4 277 1360 702 1398
		f 4 527 1288 2614 -2613
		mu 0 4 1360 278 1400 702
		f 4 -2615 1289 -568 2615
		mu 0 4 702 1400 299 1401
		f 4 -2614 -2616 -567 -1288
		mu 0 4 1398 702 1401 298
		f 4 528 2616 2617 -1289
		mu 0 4 278 1362 703 1400
		f 4 529 1290 2618 -2617
		mu 0 4 1362 279 1402 703
		f 4 -2619 1291 -570 2619
		mu 0 4 703 1402 300 1403
		f 4 -2618 -2620 -569 -1290
		mu 0 4 1400 703 1403 299
		f 4 530 2620 2621 -1291
		mu 0 4 279 1364 704 1402
		f 4 531 1292 2622 -2621
		mu 0 4 1364 280 1404 704
		f 4 -2623 1293 -572 2623
		mu 0 4 704 1404 301 1405
		f 4 -2622 -2624 -571 -1292
		mu 0 4 1402 704 1405 300
		f 4 532 2624 2625 -1293
		mu 0 4 280 1366 705 1404
		f 4 533 1294 2626 -2625
		mu 0 4 1366 281 1406 705
		f 4 -2627 1295 -574 2627
		mu 0 4 705 1406 302 1407
		f 4 -2626 -2628 -573 -1294
		mu 0 4 1404 705 1407 301
		f 4 534 2628 2629 -1295
		mu 0 4 281 1368 706 1406
		f 4 535 1296 2630 -2629
		mu 0 4 1368 282 1408 706
		f 4 -2631 1297 -576 2631
		mu 0 4 706 1408 303 1409
		f 4 -2630 -2632 -575 -1296
		mu 0 4 1406 706 1409 302
		f 4 536 2632 2633 -1297
		mu 0 4 282 1370 707 1408
		f 4 537 1298 2634 -2633
		mu 0 4 1370 283 1410 707
		f 4 -2635 1299 -578 2635
		mu 0 4 707 1410 304 1411
		f 4 -2634 -2636 -577 -1298
		mu 0 4 1408 707 1411 303
		f 4 538 2636 2637 -1299
		mu 0 4 283 1372 708 1410
		f 4 539 1300 2638 -2637
		mu 0 4 1372 284 1412 708
		f 4 -2639 1301 -580 2639
		mu 0 4 708 1412 305 1413
		f 4 -2638 -2640 -579 -1300
		mu 0 4 1410 708 1413 304
		f 4 540 2640 2641 -1301
		mu 0 4 284 1374 709 1412
		f 4 541 1302 2642 -2641
		mu 0 4 1374 285 1414 709
		f 4 -2643 1303 -582 2643
		mu 0 4 709 1414 306 1415
		f 4 -2642 -2644 -581 -1302
		mu 0 4 1412 709 1415 305
		f 4 542 2644 2645 -1303
		mu 0 4 285 1376 710 1414
		f 4 543 1304 2646 -2645
		mu 0 4 1376 286 1416 710
		f 4 -2647 1305 -584 2647
		mu 0 4 710 1416 307 1417
		f 4 -2646 -2648 -583 -1304
		mu 0 4 1414 710 1417 306
		f 4 544 2648 2649 -1305
		mu 0 4 286 1378 711 1416
		f 4 545 1306 2650 -2649
		mu 0 4 1378 287 1418 711
		f 4 -2651 1307 -586 2651
		mu 0 4 711 1418 308 1419
		f 4 -2650 -2652 -585 -1306
		mu 0 4 1416 711 1419 307
		f 4 546 2652 2653 -1307
		mu 0 4 287 1380 712 1418
		f 4 547 1308 2654 -2653
		mu 0 4 1380 288 1420 712
		f 4 -2655 1309 -588 2655
		mu 0 4 712 1420 309 1421
		f 4 -2654 -2656 -587 -1308
		mu 0 4 1418 712 1421 308
		f 4 548 2656 2657 -1309
		mu 0 4 288 1382 713 1420
		f 4 549 1310 2658 -2657
		mu 0 4 1382 289 1422 713
		f 4 -2659 1311 -590 2659
		mu 0 4 713 1422 310 1423
		f 4 -2658 -2660 -589 -1310
		mu 0 4 1420 713 1423 309
		f 4 550 2660 2661 -1311
		mu 0 4 289 1384 714 1422
		f 4 551 1312 2662 -2661
		mu 0 4 1384 290 1424 714
		f 4 -2663 1313 -592 2663
		mu 0 4 714 1424 311 1425
		f 4 -2662 -2664 -591 -1312
		mu 0 4 1422 714 1425 310
		f 4 552 2664 2665 -1313
		mu 0 4 290 1386 715 1424
		f 4 553 1314 2666 -2665
		mu 0 4 1386 291 1426 715
		f 4 -2667 1315 -594 2667
		mu 0 4 715 1426 312 1427
		f 4 -2666 -2668 -593 -1314
		mu 0 4 1424 715 1427 311
		f 4 554 2668 2669 -1315
		mu 0 4 291 1388 716 1426
		f 4 555 1316 2670 -2669
		mu 0 4 1388 292 1428 716
		f 4 -2671 1317 -596 2671
		mu 0 4 716 1428 313 1429
		f 4 -2670 -2672 -595 -1316
		mu 0 4 1426 716 1429 312
		f 4 556 2672 2673 -1317
		mu 0 4 292 1390 717 1428
		f 4 557 1318 2674 -2673
		mu 0 4 1390 293 1430 717
		f 4 -2675 1319 -598 2675
		mu 0 4 717 1430 314 1431
		f 4 -2674 -2676 -597 -1318
		mu 0 4 1428 717 1431 313
		f 4 558 2676 2677 -1319
		mu 0 4 293 1391 718 1430
		f 4 559 1280 2678 -2677
		mu 0 4 1391 274 1395 718
		f 4 -2679 1281 -600 2679
		mu 0 4 718 1395 295 1432
		f 4 -2678 -2680 -599 -1320
		mu 0 4 1430 718 1432 314
		f 4 560 2680 2681 -1321
		mu 0 4 294 1393 719 1435
		f 4 561 1322 2682 -2681
		mu 0 4 1393 296 1433 719
		f 4 -2683 1323 -602 2683
		mu 0 4 719 1433 317 1434
		f 4 -2682 -2684 -601 -1322
		mu 0 4 1435 719 1434 315
		f 4 562 2684 2685 -1323
		mu 0 4 296 1397 720 1433
		f 4 563 1324 2686 -2685
		mu 0 4 1397 297 1437 720
		f 4 -2687 1325 -604 2687
		mu 0 4 720 1437 318 1438
		f 4 -2686 -2688 -603 -1324
		mu 0 4 1433 720 1438 317
		f 4 564 2688 2689 -1325
		mu 0 4 297 1399 721 1437
		f 4 565 1326 2690 -2689
		mu 0 4 1399 298 1439 721
		f 4 -2691 1327 -606 2691
		mu 0 4 721 1439 319 1440
		f 4 -2690 -2692 -605 -1326
		mu 0 4 1437 721 1440 318
		f 4 566 2692 2693 -1327
		mu 0 4 298 1401 722 1439
		f 4 567 1328 2694 -2693
		mu 0 4 1401 299 1441 722
		f 4 -2695 1329 -608 2695
		mu 0 4 722 1441 320 1442
		f 4 -2694 -2696 -607 -1328
		mu 0 4 1439 722 1442 319
		f 4 568 2696 2697 -1329
		mu 0 4 299 1403 723 1441
		f 4 569 1330 2698 -2697
		mu 0 4 1403 300 1443 723
		f 4 -2699 1331 -610 2699
		mu 0 4 723 1443 321 1444
		f 4 -2698 -2700 -609 -1330
		mu 0 4 1441 723 1444 320
		f 4 570 2700 2701 -1331
		mu 0 4 300 1405 724 1443
		f 4 571 1332 2702 -2701
		mu 0 4 1405 301 1445 724
		f 4 -2703 1333 -612 2703
		mu 0 4 724 1445 322 1446
		f 4 -2702 -2704 -611 -1332
		mu 0 4 1443 724 1446 321
		f 4 572 2704 2705 -1333
		mu 0 4 301 1407 725 1445
		f 4 573 1334 2706 -2705
		mu 0 4 1407 302 1447 725
		f 4 -2707 1335 -614 2707
		mu 0 4 725 1447 323 1448
		f 4 -2706 -2708 -613 -1334
		mu 0 4 1445 725 1448 322
		f 4 574 2708 2709 -1335
		mu 0 4 302 1409 726 1447
		f 4 575 1336 2710 -2709
		mu 0 4 1409 303 1449 726
		f 4 -2711 1337 -616 2711
		mu 0 4 726 1449 324 1450
		f 4 -2710 -2712 -615 -1336
		mu 0 4 1447 726 1450 323
		f 4 576 2712 2713 -1337
		mu 0 4 303 1411 727 1449
		f 4 577 1338 2714 -2713
		mu 0 4 1411 304 1451 727
		f 4 -2715 1339 -618 2715
		mu 0 4 727 1451 325 1452
		f 4 -2714 -2716 -617 -1338
		mu 0 4 1449 727 1452 324
		f 4 578 2716 2717 -1339
		mu 0 4 304 1413 728 1451
		f 4 579 1340 2718 -2717
		mu 0 4 1413 305 1453 728
		f 4 -2719 1341 -620 2719
		mu 0 4 728 1453 326 1454
		f 4 -2718 -2720 -619 -1340
		mu 0 4 1451 728 1454 325
		f 4 580 2720 2721 -1341
		mu 0 4 305 1415 729 1453
		f 4 581 1342 2722 -2721
		mu 0 4 1415 306 1455 729
		f 4 -2723 1343 -622 2723
		mu 0 4 729 1455 327 1456
		f 4 -2722 -2724 -621 -1342
		mu 0 4 1453 729 1456 326
		f 4 582 2724 2725 -1343
		mu 0 4 306 1417 730 1455
		f 4 583 1344 2726 -2725
		mu 0 4 1417 307 1457 730
		f 4 -2727 1345 -624 2727
		mu 0 4 730 1457 328 1458
		f 4 -2726 -2728 -623 -1344
		mu 0 4 1455 730 1458 327
		f 4 584 2728 2729 -1345
		mu 0 4 307 1419 731 1457
		f 4 585 1346 2730 -2729
		mu 0 4 1419 308 1459 731
		f 4 -2731 1347 -626 2731
		mu 0 4 731 1459 329 1460
		f 4 -2730 -2732 -625 -1346
		mu 0 4 1457 731 1460 328
		f 4 586 2732 2733 -1347
		mu 0 4 308 1421 732 1459
		f 4 587 1348 2734 -2733
		mu 0 4 1421 309 1461 732
		f 4 -2735 1349 -628 2735
		mu 0 4 732 1461 330 1462
		f 4 -2734 -2736 -627 -1348
		mu 0 4 1459 732 1462 329
		f 4 588 2736 2737 -1349
		mu 0 4 309 1423 733 1461
		f 4 589 1350 2738 -2737
		mu 0 4 1423 310 1463 733
		f 4 -2739 1351 -630 2739
		mu 0 4 733 1463 331 1464
		f 4 -2738 -2740 -629 -1350
		mu 0 4 1461 733 1464 330
		f 4 590 2740 2741 -1351
		mu 0 4 310 1425 734 1463
		f 4 591 1352 2742 -2741
		mu 0 4 1425 311 1465 734
		f 4 -2743 1353 -632 2743
		mu 0 4 734 1465 332 1466
		f 4 -2742 -2744 -631 -1352
		mu 0 4 1463 734 1466 331
		f 4 592 2744 2745 -1353
		mu 0 4 311 1427 735 1465
		f 4 593 1354 2746 -2745
		mu 0 4 1427 312 1467 735
		f 4 -2747 1355 -634 2747
		mu 0 4 735 1467 333 1468
		f 4 -2746 -2748 -633 -1354
		mu 0 4 1465 735 1468 332
		f 4 594 2748 2749 -1355
		mu 0 4 312 1429 736 1467
		f 4 595 1356 2750 -2749
		mu 0 4 1429 313 1469 736
		f 4 -2751 1357 -636 2751
		mu 0 4 736 1469 334 1470
		f 4 -2750 -2752 -635 -1356
		mu 0 4 1467 736 1470 333
		f 4 596 2752 2753 -1357
		mu 0 4 313 1431 737 1469
		f 4 597 1358 2754 -2753
		mu 0 4 1431 314 1471 737
		f 4 -2755 1359 -638 2755
		mu 0 4 737 1471 335 1472
		f 4 -2754 -2756 -637 -1358
		mu 0 4 1469 737 1472 334
		f 4 598 2756 2757 -1359
		mu 0 4 314 1432 738 1471
		f 4 599 1320 2758 -2757
		mu 0 4 1432 295 1436 738
		f 4 -2759 1321 -640 2759
		mu 0 4 738 1436 316 1473
		f 4 -2758 -2760 -639 -1360
		mu 0 4 1471 738 1473 335
		f 4 600 2760 2761 -1361
		mu 0 4 315 1434 739 1476
		f 4 601 1362 2762 -2761
		mu 0 4 1434 317 1474 739
		f 4 -2763 1363 -642 2763
		mu 0 4 739 1474 338 1475
		f 4 -2762 -2764 -641 -1362
		mu 0 4 1476 739 1475 336
		f 4 602 2764 2765 -1363
		mu 0 4 317 1438 740 1474
		f 4 603 1364 2766 -2765
		mu 0 4 1438 318 1478 740
		f 4 -2767 1365 -644 2767
		mu 0 4 740 1478 339 1479
		f 4 -2766 -2768 -643 -1364
		mu 0 4 1474 740 1479 338
		f 4 604 2768 2769 -1365
		mu 0 4 318 1440 741 1478
		f 4 605 1366 2770 -2769
		mu 0 4 1440 319 1480 741
		f 4 -2771 1367 -646 2771
		mu 0 4 741 1480 340 1481
		f 4 -2770 -2772 -645 -1366
		mu 0 4 1478 741 1481 339
		f 4 606 2772 2773 -1367
		mu 0 4 319 1442 742 1480
		f 4 607 1368 2774 -2773
		mu 0 4 1442 320 1482 742
		f 4 -2775 1369 -648 2775
		mu 0 4 742 1482 341 1483
		f 4 -2774 -2776 -647 -1368
		mu 0 4 1480 742 1483 340
		f 4 608 2776 2777 -1369
		mu 0 4 320 1444 743 1482
		f 4 609 1370 2778 -2777
		mu 0 4 1444 321 1484 743
		f 4 -2779 1371 -650 2779
		mu 0 4 743 1484 342 1485
		f 4 -2778 -2780 -649 -1370
		mu 0 4 1482 743 1485 341
		f 4 610 2780 2781 -1371
		mu 0 4 321 1446 744 1484
		f 4 611 1372 2782 -2781
		mu 0 4 1446 322 1486 744
		f 4 -2783 1373 -652 2783
		mu 0 4 744 1486 343 1487
		f 4 -2782 -2784 -651 -1372
		mu 0 4 1484 744 1487 342
		f 4 612 2784 2785 -1373
		mu 0 4 322 1448 745 1486
		f 4 613 1374 2786 -2785
		mu 0 4 1448 323 1488 745
		f 4 -2787 1375 -654 2787
		mu 0 4 745 1488 344 1489
		f 4 -2786 -2788 -653 -1374
		mu 0 4 1486 745 1489 343
		f 4 614 2788 2789 -1375
		mu 0 4 323 1450 746 1488
		f 4 615 1376 2790 -2789
		mu 0 4 1450 324 1490 746
		f 4 -2791 1377 -656 2791
		mu 0 4 746 1490 345 1491
		f 4 -2790 -2792 -655 -1376
		mu 0 4 1488 746 1491 344
		f 4 616 2792 2793 -1377
		mu 0 4 324 1452 747 1490
		f 4 617 1378 2794 -2793
		mu 0 4 1452 325 1492 747
		f 4 -2795 1379 -658 2795
		mu 0 4 747 1492 346 1493
		f 4 -2794 -2796 -657 -1378
		mu 0 4 1490 747 1493 345
		f 4 618 2796 2797 -1379
		mu 0 4 325 1454 748 1492
		f 4 619 1380 2798 -2797
		mu 0 4 1454 326 1494 748
		f 4 -2799 1381 -660 2799
		mu 0 4 748 1494 347 1495
		f 4 -2798 -2800 -659 -1380
		mu 0 4 1492 748 1495 346
		f 4 620 2800 2801 -1381
		mu 0 4 326 1456 749 1494
		f 4 621 1382 2802 -2801
		mu 0 4 1456 327 1496 749
		f 4 -2803 1383 -662 2803
		mu 0 4 749 1496 348 1497
		f 4 -2802 -2804 -661 -1382
		mu 0 4 1494 749 1497 347
		f 4 622 2804 2805 -1383
		mu 0 4 327 1458 750 1496
		f 4 623 1384 2806 -2805
		mu 0 4 1458 328 1498 750
		f 4 -2807 1385 -664 2807
		mu 0 4 750 1498 349 1499
		f 4 -2806 -2808 -663 -1384
		mu 0 4 1496 750 1499 348
		f 4 624 2808 2809 -1385
		mu 0 4 328 1460 751 1498
		f 4 625 1386 2810 -2809
		mu 0 4 1460 329 1500 751
		f 4 -2811 1387 -666 2811
		mu 0 4 751 1500 350 1501
		f 4 -2810 -2812 -665 -1386
		mu 0 4 1498 751 1501 349
		f 4 626 2812 2813 -1387
		mu 0 4 329 1462 752 1500
		f 4 627 1388 2814 -2813
		mu 0 4 1462 330 1502 752
		f 4 -2815 1389 -668 2815
		mu 0 4 752 1502 351 1503
		f 4 -2814 -2816 -667 -1388
		mu 0 4 1500 752 1503 350
		f 4 628 2816 2817 -1389
		mu 0 4 330 1464 753 1502
		f 4 629 1390 2818 -2817
		mu 0 4 1464 331 1504 753
		f 4 -2819 1391 -670 2819
		mu 0 4 753 1504 352 1505
		f 4 -2818 -2820 -669 -1390
		mu 0 4 1502 753 1505 351
		f 4 630 2820 2821 -1391
		mu 0 4 331 1466 754 1504
		f 4 631 1392 2822 -2821
		mu 0 4 1466 332 1506 754
		f 4 -2823 1393 -672 2823
		mu 0 4 754 1506 353 1507
		f 4 -2822 -2824 -671 -1392
		mu 0 4 1504 754 1507 352
		f 4 632 2824 2825 -1393
		mu 0 4 332 1468 755 1506
		f 4 633 1394 2826 -2825
		mu 0 4 1468 333 1508 755
		f 4 -2827 1395 -674 2827
		mu 0 4 755 1508 354 1509
		f 4 -2826 -2828 -673 -1394
		mu 0 4 1506 755 1509 353
		f 4 634 2828 2829 -1395
		mu 0 4 333 1470 756 1508
		f 4 635 1396 2830 -2829
		mu 0 4 1470 334 1510 756
		f 4 -2831 1397 -676 2831
		mu 0 4 756 1510 355 1511
		f 4 -2830 -2832 -675 -1396
		mu 0 4 1508 756 1511 354
		f 4 636 2832 2833 -1397
		mu 0 4 334 1472 757 1510
		f 4 637 1398 2834 -2833
		mu 0 4 1472 335 1512 757
		f 4 -2835 1399 -678 2835
		mu 0 4 757 1512 356 1513
		f 4 -2834 -2836 -677 -1398
		mu 0 4 1510 757 1513 355
		f 4 638 2836 2837 -1399
		mu 0 4 335 1473 758 1512
		f 4 639 1360 2838 -2837
		mu 0 4 1473 316 1477 758
		f 4 -2839 1361 -680 2839
		mu 0 4 758 1477 337 1514
		f 4 -2838 -2840 -679 -1400
		mu 0 4 1512 758 1514 356
		f 4 640 2840 2841 -1401
		mu 0 4 336 1475 759 1517
		f 4 641 1402 2842 -2841
		mu 0 4 1475 338 1515 759
		f 4 -2843 1403 -682 2843
		mu 0 4 759 1515 359 1516
		f 4 -2842 -2844 -681 -1402
		mu 0 4 1517 759 1516 357
		f 4 642 2844 2845 -1403
		mu 0 4 338 1479 760 1515
		f 4 643 1404 2846 -2845
		mu 0 4 1479 339 1519 760
		f 4 -2847 1405 -684 2847
		mu 0 4 760 1519 360 1520
		f 4 -2846 -2848 -683 -1404
		mu 0 4 1515 760 1520 359
		f 4 644 2848 2849 -1405
		mu 0 4 339 1481 761 1519
		f 4 645 1406 2850 -2849
		mu 0 4 1481 340 1521 761
		f 4 -2851 1407 -686 2851
		mu 0 4 761 1521 361 1522
		f 4 -2850 -2852 -685 -1406
		mu 0 4 1519 761 1522 360
		f 4 646 2852 2853 -1407
		mu 0 4 340 1483 762 1521
		f 4 647 1408 2854 -2853
		mu 0 4 1483 341 1523 762
		f 4 -2855 1409 -688 2855
		mu 0 4 762 1523 362 1524
		f 4 -2854 -2856 -687 -1408
		mu 0 4 1521 762 1524 361
		f 4 648 2856 2857 -1409
		mu 0 4 341 1485 763 1523
		f 4 649 1410 2858 -2857
		mu 0 4 1485 342 1525 763
		f 4 -2859 1411 -690 2859
		mu 0 4 763 1525 363 1526
		f 4 -2858 -2860 -689 -1410
		mu 0 4 1523 763 1526 362
		f 4 650 2860 2861 -1411
		mu 0 4 342 1487 764 1525
		f 4 651 1412 2862 -2861
		mu 0 4 1487 343 1527 764
		f 4 -2863 1413 -692 2863
		mu 0 4 764 1527 364 1528
		f 4 -2862 -2864 -691 -1412
		mu 0 4 1525 764 1528 363
		f 4 652 2864 2865 -1413
		mu 0 4 343 1489 765 1527
		f 4 653 1414 2866 -2865
		mu 0 4 1489 344 1529 765
		f 4 -2867 1415 -694 2867
		mu 0 4 765 1529 365 1530
		f 4 -2866 -2868 -693 -1414
		mu 0 4 1527 765 1530 364
		f 4 654 2868 2869 -1415
		mu 0 4 344 1491 766 1529
		f 4 655 1416 2870 -2869
		mu 0 4 1491 345 1531 766
		f 4 -2871 1417 -696 2871
		mu 0 4 766 1531 366 1532
		f 4 -2870 -2872 -695 -1416
		mu 0 4 1529 766 1532 365
		f 4 656 2872 2873 -1417
		mu 0 4 345 1493 767 1531
		f 4 657 1418 2874 -2873
		mu 0 4 1493 346 1533 767
		f 4 -2875 1419 -698 2875
		mu 0 4 767 1533 367 1534
		f 4 -2874 -2876 -697 -1418
		mu 0 4 1531 767 1534 366
		f 4 658 2876 2877 -1419
		mu 0 4 346 1495 768 1533
		f 4 659 1420 2878 -2877
		mu 0 4 1495 347 1535 768
		f 4 -2879 1421 -700 2879
		mu 0 4 768 1535 368 1536
		f 4 -2878 -2880 -699 -1420
		mu 0 4 1533 768 1536 367
		f 4 660 2880 2881 -1421
		mu 0 4 347 1497 769 1535
		f 4 661 1422 2882 -2881
		mu 0 4 1497 348 1537 769
		f 4 -2883 1423 -702 2883
		mu 0 4 769 1537 369 1538
		f 4 -2882 -2884 -701 -1422
		mu 0 4 1535 769 1538 368
		f 4 662 2884 2885 -1423
		mu 0 4 348 1499 770 1537
		f 4 663 1424 2886 -2885
		mu 0 4 1499 349 1539 770
		f 4 -2887 1425 -704 2887
		mu 0 4 770 1539 370 1540
		f 4 -2886 -2888 -703 -1424
		mu 0 4 1537 770 1540 369
		f 4 664 2888 2889 -1425
		mu 0 4 349 1501 771 1539
		f 4 665 1426 2890 -2889
		mu 0 4 1501 350 1541 771
		f 4 -2891 1427 -706 2891
		mu 0 4 771 1541 371 1542
		f 4 -2890 -2892 -705 -1426
		mu 0 4 1539 771 1542 370
		f 4 666 2892 2893 -1427
		mu 0 4 350 1503 772 1541
		f 4 667 1428 2894 -2893
		mu 0 4 1503 351 1543 772
		f 4 -2895 1429 -708 2895
		mu 0 4 772 1543 372 1544
		f 4 -2894 -2896 -707 -1428
		mu 0 4 1541 772 1544 371
		f 4 668 2896 2897 -1429
		mu 0 4 351 1505 773 1543
		f 4 669 1430 2898 -2897
		mu 0 4 1505 352 1545 773
		f 4 -2899 1431 -710 2899
		mu 0 4 773 1545 373 1546
		f 4 -2898 -2900 -709 -1430
		mu 0 4 1543 773 1546 372
		f 4 670 2900 2901 -1431
		mu 0 4 352 1507 774 1545
		f 4 671 1432 2902 -2901
		mu 0 4 1507 353 1547 774
		f 4 -2903 1433 -712 2903
		mu 0 4 774 1547 374 1548
		f 4 -2902 -2904 -711 -1432
		mu 0 4 1545 774 1548 373
		f 4 672 2904 2905 -1433
		mu 0 4 353 1509 775 1547
		f 4 673 1434 2906 -2905
		mu 0 4 1509 354 1549 775
		f 4 -2907 1435 -714 2907
		mu 0 4 775 1549 375 1550
		f 4 -2906 -2908 -713 -1434
		mu 0 4 1547 775 1550 374
		f 4 674 2908 2909 -1435
		mu 0 4 354 1511 776 1549
		f 4 675 1436 2910 -2909
		mu 0 4 1511 355 1551 776
		f 4 -2911 1437 -716 2911
		mu 0 4 776 1551 376 1552
		f 4 -2910 -2912 -715 -1436
		mu 0 4 1549 776 1552 375
		f 4 676 2912 2913 -1437
		mu 0 4 355 1513 777 1551
		f 4 677 1438 2914 -2913
		mu 0 4 1513 356 1553 777
		f 4 -2915 1439 -718 2915
		mu 0 4 777 1553 377 1554
		f 4 -2914 -2916 -717 -1438
		mu 0 4 1551 777 1554 376
		f 4 678 2916 2917 -1439
		mu 0 4 356 1514 778 1553
		f 4 679 1400 2918 -2917
		mu 0 4 1514 337 1518 778
		f 4 -2919 1401 -720 2919
		mu 0 4 778 1518 358 1555
		f 4 -2918 -2920 -719 -1440
		mu 0 4 1553 778 1555 377
		f 4 680 2920 2921 -1441
		mu 0 4 357 1516 779 1558
		f 4 681 1442 2922 -2921
		mu 0 4 1516 359 1556 779
		f 4 -2923 1443 -722 2923
		mu 0 4 779 1556 380 1557
		f 4 -2922 -2924 -721 -1442
		mu 0 4 1558 779 1557 378
		f 4 682 2924 2925 -1443
		mu 0 4 359 1520 780 1556
		f 4 683 1444 2926 -2925
		mu 0 4 1520 360 1560 780
		f 4 -2927 1445 -724 2927
		mu 0 4 780 1560 381 1561
		f 4 -2926 -2928 -723 -1444
		mu 0 4 1556 780 1561 380
		f 4 684 2928 2929 -1445
		mu 0 4 360 1522 781 1560
		f 4 685 1446 2930 -2929
		mu 0 4 1522 361 1562 781
		f 4 -2931 1447 -726 2931
		mu 0 4 781 1562 382 1563
		f 4 -2930 -2932 -725 -1446
		mu 0 4 1560 781 1563 381
		f 4 686 2932 2933 -1447
		mu 0 4 361 1524 782 1562
		f 4 687 1448 2934 -2933
		mu 0 4 1524 362 1564 782
		f 4 -2935 1449 -728 2935
		mu 0 4 782 1564 383 1565
		f 4 -2934 -2936 -727 -1448
		mu 0 4 1562 782 1565 382
		f 4 688 2936 2937 -1449
		mu 0 4 362 1526 783 1564
		f 4 689 1450 2938 -2937
		mu 0 4 1526 363 1566 783
		f 4 -2939 1451 -730 2939
		mu 0 4 783 1566 384 1567
		f 4 -2938 -2940 -729 -1450
		mu 0 4 1564 783 1567 383
		f 4 690 2940 2941 -1451
		mu 0 4 363 1528 784 1566
		f 4 691 1452 2942 -2941
		mu 0 4 1528 364 1568 784
		f 4 -2943 1453 -732 2943
		mu 0 4 784 1568 385 1569
		f 4 -2942 -2944 -731 -1452
		mu 0 4 1566 784 1569 384
		f 4 692 2944 2945 -1453
		mu 0 4 364 1530 785 1568
		f 4 693 1454 2946 -2945
		mu 0 4 1530 365 1570 785
		f 4 -2947 1455 -734 2947
		mu 0 4 785 1570 386 1571
		f 4 -2946 -2948 -733 -1454
		mu 0 4 1568 785 1571 385
		f 4 694 2948 2949 -1455
		mu 0 4 365 1532 786 1570
		f 4 695 1456 2950 -2949
		mu 0 4 1532 366 1572 786
		f 4 -2951 1457 -736 2951
		mu 0 4 786 1572 387 1573
		f 4 -2950 -2952 -735 -1456
		mu 0 4 1570 786 1573 386
		f 4 696 2952 2953 -1457
		mu 0 4 366 1534 787 1572
		f 4 697 1458 2954 -2953
		mu 0 4 1534 367 1574 787
		f 4 -2955 1459 -738 2955
		mu 0 4 787 1574 388 1575
		f 4 -2954 -2956 -737 -1458
		mu 0 4 1572 787 1575 387
		f 4 698 2956 2957 -1459
		mu 0 4 367 1536 788 1574
		f 4 699 1460 2958 -2957
		mu 0 4 1536 368 1576 788
		f 4 -2959 1461 -740 2959
		mu 0 4 788 1576 389 1577
		f 4 -2958 -2960 -739 -1460
		mu 0 4 1574 788 1577 388
		f 4 700 2960 2961 -1461
		mu 0 4 368 1538 789 1576
		f 4 701 1462 2962 -2961
		mu 0 4 1538 369 1578 789
		f 4 -2963 1463 -742 2963
		mu 0 4 789 1578 390 1579
		f 4 -2962 -2964 -741 -1462
		mu 0 4 1576 789 1579 389
		f 4 702 2964 2965 -1463
		mu 0 4 369 1540 790 1578
		f 4 703 1464 2966 -2965
		mu 0 4 1540 370 1580 790
		f 4 -2967 1465 -744 2967
		mu 0 4 790 1580 391 1581
		f 4 -2966 -2968 -743 -1464
		mu 0 4 1578 790 1581 390
		f 4 704 2968 2969 -1465
		mu 0 4 370 1542 791 1580
		f 4 705 1466 2970 -2969
		mu 0 4 1542 371 1582 791
		f 4 -2971 1467 -746 2971
		mu 0 4 791 1582 392 1583
		f 4 -2970 -2972 -745 -1466
		mu 0 4 1580 791 1583 391
		f 4 706 2972 2973 -1467
		mu 0 4 371 1544 792 1582
		f 4 707 1468 2974 -2973
		mu 0 4 1544 372 1584 792
		f 4 -2975 1469 -748 2975
		mu 0 4 792 1584 393 1585
		f 4 -2974 -2976 -747 -1468
		mu 0 4 1582 792 1585 392
		f 4 708 2976 2977 -1469
		mu 0 4 372 1546 793 1584
		f 4 709 1470 2978 -2977
		mu 0 4 1546 373 1586 793
		f 4 -2979 1471 -750 2979
		mu 0 4 793 1586 394 1587
		f 4 -2978 -2980 -749 -1470
		mu 0 4 1584 793 1587 393
		f 4 710 2980 2981 -1471
		mu 0 4 373 1548 794 1586
		f 4 711 1472 2982 -2981
		mu 0 4 1548 374 1588 794
		f 4 -2983 1473 -752 2983
		mu 0 4 794 1588 395 1589
		f 4 -2982 -2984 -751 -1472
		mu 0 4 1586 794 1589 394
		f 4 712 2984 2985 -1473
		mu 0 4 374 1550 795 1588
		f 4 713 1474 2986 -2985
		mu 0 4 1550 375 1590 795
		f 4 -2987 1475 -754 2987
		mu 0 4 795 1590 396 1591
		f 4 -2986 -2988 -753 -1474
		mu 0 4 1588 795 1591 395
		f 4 714 2988 2989 -1475
		mu 0 4 375 1552 796 1590
		f 4 715 1476 2990 -2989
		mu 0 4 1552 376 1592 796
		f 4 -2991 1477 -756 2991
		mu 0 4 796 1592 397 1593
		f 4 -2990 -2992 -755 -1476
		mu 0 4 1590 796 1593 396
		f 4 716 2992 2993 -1477
		mu 0 4 376 1554 797 1592
		f 4 717 1478 2994 -2993
		mu 0 4 1554 377 1594 797
		f 4 -2995 1479 -758 2995
		mu 0 4 797 1594 398 1595
		f 4 -2994 -2996 -757 -1478
		mu 0 4 1592 797 1595 397
		f 4 718 2996 2997 -1479
		mu 0 4 377 1555 798 1594
		f 4 719 1440 2998 -2997
		mu 0 4 1555 358 1559 798
		f 4 -2999 1441 -760 2999
		mu 0 4 798 1559 379 1596
		f 4 -2998 -3000 -759 -1480
		mu 0 4 1594 798 1596 398
		f 4 -2 3000 3001 1483
		mu 0 4 2 839 799 1599
		f 4 -1482 3002 -3001 -1
		mu 0 4 0 1597 799 839
		f 4 1482 -3002 -3003 -1481
		mu 0 4 399 1599 799 1597
		f 4 -4 3003 3004 1485
		mu 0 4 3 844 800 1601
		f 4 -1484 3005 -3004 -3
		mu 0 4 2 1600 800 844
		f 4 1484 -3005 -3006 -1483
		mu 0 4 418 1601 800 1600
		f 4 -6 3006 3007 1487
		mu 0 4 4 847 801 1603
		f 4 -1486 3008 -3007 -5
		mu 0 4 3 1602 801 847
		f 4 1486 -3008 -3009 -1485
		mu 0 4 417 1603 801 1602
		f 4 -8 3009 3010 1489
		mu 0 4 5 850 802 1605
		f 4 -1488 3011 -3010 -7
		mu 0 4 4 1604 802 850
		f 4 1488 -3011 -3012 -1487
		mu 0 4 416 1605 802 1604
		f 4 -10 3012 3013 1491
		mu 0 4 6 853 803 1607
		f 4 -1490 3014 -3013 -9
		mu 0 4 5 1606 803 853
		f 4 1490 -3014 -3015 -1489
		mu 0 4 415 1607 803 1606
		f 4 -12 3015 3016 1493
		mu 0 4 7 856 804 1609
		f 4 -1492 3017 -3016 -11
		mu 0 4 6 1608 804 856
		f 4 1492 -3017 -3018 -1491
		mu 0 4 414 1609 804 1608
		f 4 -14 3018 3019 1495
		mu 0 4 8 859 805 1611
		f 4 -1494 3020 -3019 -13
		mu 0 4 7 1610 805 859
		f 4 1494 -3020 -3021 -1493
		mu 0 4 413 1611 805 1610
		f 4 -16 3021 3022 1497
		mu 0 4 9 862 806 1613
		f 4 -1496 3023 -3022 -15
		mu 0 4 8 1612 806 862
		f 4 1496 -3023 -3024 -1495
		mu 0 4 412 1613 806 1612
		f 4 -18 3024 3025 1499
		mu 0 4 10 865 807 1615
		f 4 -1498 3026 -3025 -17
		mu 0 4 9 1614 807 865
		f 4 1498 -3026 -3027 -1497
		mu 0 4 411 1615 807 1614
		f 4 -20 3027 3028 1501
		mu 0 4 11 868 808 1617
		f 4 -1500 3029 -3028 -19
		mu 0 4 10 1616 808 868
		f 4 1500 -3029 -3030 -1499
		mu 0 4 410 1617 808 1616
		f 4 -22 3030 3031 1503
		mu 0 4 12 871 809 1619
		f 4 -1502 3032 -3031 -21
		mu 0 4 11 1618 809 871
		f 4 1502 -3032 -3033 -1501
		mu 0 4 409 1619 809 1618
		f 4 -24 3033 3034 1505
		mu 0 4 13 874 810 1621
		f 4 -1504 3035 -3034 -23
		mu 0 4 12 1620 810 874
		f 4 1504 -3035 -3036 -1503
		mu 0 4 408 1621 810 1620
		f 4 -26 3036 3037 1507
		mu 0 4 14 877 811 1623
		f 4 -1506 3038 -3037 -25
		mu 0 4 13 1622 811 877
		f 4 1506 -3038 -3039 -1505
		mu 0 4 407 1623 811 1622
		f 4 -28 3039 3040 1509
		mu 0 4 15 880 812 1625
		f 4 -1508 3041 -3040 -27
		mu 0 4 14 1624 812 880
		f 4 1508 -3041 -3042 -1507
		mu 0 4 406 1625 812 1624
		f 4 -30 3042 3043 1511
		mu 0 4 16 883 813 1627
		f 4 -1510 3044 -3043 -29
		mu 0 4 15 1626 813 883
		f 4 1510 -3044 -3045 -1509
		mu 0 4 405 1627 813 1626
		f 4 -32 3045 3046 1513
		mu 0 4 17 886 814 1629
		f 4 -1512 3047 -3046 -31
		mu 0 4 16 1628 814 886
		f 4 1512 -3047 -3048 -1511
		mu 0 4 404 1629 814 1628
		f 4 -34 3048 3049 1515
		mu 0 4 18 889 815 1631
		f 4 -1514 3050 -3049 -33
		mu 0 4 17 1630 815 889
		f 4 1514 -3050 -3051 -1513
		mu 0 4 403 1631 815 1630
		f 4 -36 3051 3052 1517
		mu 0 4 19 892 816 1633
		f 4 -1516 3053 -3052 -35
		mu 0 4 18 1632 816 892
		f 4 1516 -3053 -3054 -1515
		mu 0 4 402 1633 816 1632
		f 4 -38 3054 3055 1519
		mu 0 4 20 895 817 1635
		f 4 -1518 3056 -3055 -37
		mu 0 4 19 1634 817 895
		f 4 1518 -3056 -3057 -1517
		mu 0 4 401 1635 817 1634
		f 4 -40 3057 3058 1481
		mu 0 4 1 898 818 1598
		f 4 -1520 3059 -3058 -39
		mu 0 4 20 1636 818 898
		f 4 1480 -3059 -3060 -1519
		mu 0 4 400 1598 818 1636;
	setAttr ".fc[1500:1559]"
		f 4 720 3060 3061 -1521
		mu 0 4 378 1557 819 1639
		f 4 1522 3062 -3061 721
		mu 0 4 380 1637 819 1557
		f 4 -1522 -3062 -3063 1523
		mu 0 4 419 1639 819 1637
		f 4 722 3063 3064 -1523
		mu 0 4 380 1561 820 1638
		f 4 1524 3065 -3064 723
		mu 0 4 381 1641 820 1561
		f 4 -1524 -3065 -3066 1525
		mu 0 4 420 1638 820 1641
		f 4 724 3066 3067 -1525
		mu 0 4 381 1563 821 1642
		f 4 1526 3068 -3067 725
		mu 0 4 382 1643 821 1563
		f 4 -1526 -3068 -3069 1527
		mu 0 4 421 1642 821 1643
		f 4 726 3069 3070 -1527
		mu 0 4 382 1565 822 1644
		f 4 1528 3071 -3070 727
		mu 0 4 383 1645 822 1565
		f 4 -1528 -3071 -3072 1529
		mu 0 4 422 1644 822 1645
		f 4 728 3072 3073 -1529
		mu 0 4 383 1567 823 1646
		f 4 1530 3074 -3073 729
		mu 0 4 384 1647 823 1567
		f 4 -1530 -3074 -3075 1531
		mu 0 4 423 1646 823 1647
		f 4 730 3075 3076 -1531
		mu 0 4 384 1569 824 1648
		f 4 1532 3077 -3076 731
		mu 0 4 385 1649 824 1569
		f 4 -1532 -3077 -3078 1533
		mu 0 4 424 1648 824 1649
		f 4 732 3078 3079 -1533
		mu 0 4 385 1571 825 1650
		f 4 1534 3080 -3079 733
		mu 0 4 386 1651 825 1571
		f 4 -1534 -3080 -3081 1535
		mu 0 4 425 1650 825 1651
		f 4 734 3081 3082 -1535
		mu 0 4 386 1573 826 1652
		f 4 1536 3083 -3082 735
		mu 0 4 387 1653 826 1573
		f 4 -1536 -3083 -3084 1537
		mu 0 4 426 1652 826 1653
		f 4 736 3084 3085 -1537
		mu 0 4 387 1575 827 1654
		f 4 1538 3086 -3085 737
		mu 0 4 388 1655 827 1575
		f 4 -1538 -3086 -3087 1539
		mu 0 4 427 1654 827 1655
		f 4 738 3087 3088 -1539
		mu 0 4 388 1577 828 1656
		f 4 1540 3089 -3088 739
		mu 0 4 389 1657 828 1577
		f 4 -1540 -3089 -3090 1541
		mu 0 4 428 1656 828 1657
		f 4 740 3090 3091 -1541
		mu 0 4 389 1579 829 1658
		f 4 1542 3092 -3091 741
		mu 0 4 390 1659 829 1579
		f 4 -1542 -3092 -3093 1543
		mu 0 4 429 1658 829 1659
		f 4 742 3093 3094 -1543
		mu 0 4 390 1581 830 1660
		f 4 1544 3095 -3094 743
		mu 0 4 391 1661 830 1581
		f 4 -1544 -3095 -3096 1545
		mu 0 4 430 1660 830 1661
		f 4 744 3096 3097 -1545
		mu 0 4 391 1583 831 1662
		f 4 1546 3098 -3097 745
		mu 0 4 392 1663 831 1583
		f 4 -1546 -3098 -3099 1547
		mu 0 4 431 1662 831 1663
		f 4 746 3099 3100 -1547
		mu 0 4 392 1585 832 1664
		f 4 1548 3101 -3100 747
		mu 0 4 393 1665 832 1585
		f 4 -1548 -3101 -3102 1549
		mu 0 4 432 1664 832 1665
		f 4 748 3102 3103 -1549
		mu 0 4 393 1587 833 1666
		f 4 1550 3104 -3103 749
		mu 0 4 394 1667 833 1587
		f 4 -1550 -3104 -3105 1551
		mu 0 4 433 1666 833 1667
		f 4 750 3105 3106 -1551
		mu 0 4 394 1589 834 1668
		f 4 1552 3107 -3106 751
		mu 0 4 395 1669 834 1589
		f 4 -1552 -3107 -3108 1553
		mu 0 4 434 1668 834 1669
		f 4 752 3108 3109 -1553
		mu 0 4 395 1591 835 1670
		f 4 1554 3110 -3109 753
		mu 0 4 396 1671 835 1591
		f 4 -1554 -3110 -3111 1555
		mu 0 4 435 1670 835 1671
		f 4 754 3111 3112 -1555
		mu 0 4 396 1593 836 1672
		f 4 1556 3113 -3112 755
		mu 0 4 397 1673 836 1593
		f 4 -1556 -3113 -3114 1557
		mu 0 4 436 1672 836 1673
		f 4 756 3114 3115 -1557
		mu 0 4 397 1595 837 1674
		f 4 1558 3116 -3115 757
		mu 0 4 398 1675 837 1595
		f 4 -1558 -3116 -3117 1559
		mu 0 4 437 1674 837 1675
		f 4 758 3117 3118 -1559
		mu 0 4 398 1596 838 1676
		f 4 1520 3119 -3118 759
		mu 0 4 379 1640 838 1596
		f 4 -1560 -3119 -3120 1521
		mu 0 4 438 1676 838 1640;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".qsp" 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Ref";
	rename -uid "DB1D011F-4A4F-7612-44FC-A79443FF8156";
	setAttr ".t" -type "double3" -1.0374595828909561 2.2204460492503131e-16 0.83282236749492178 ;
createNode locator -n "RefShape" -p "Ref";
	rename -uid "AD311DC6-4DCE-DFD2-11E0-ED91332FCD1B";
	setAttr -k off ".v";
createNode transform -n "directionalLight2";
	rename -uid "35B45FA4-438A-5489-66B8-8C8CD51A65AF";
	setAttr ".t" -type "double3" 0.5894990434738463 0.42851972577900121 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -147.12366265356488 -62.016671193251192 92.68851789005069 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	rename -uid "92B3DB00-46E5-9D9D-984C-4CBC8625500C";
	setAttr -k off ".v";
	setAttr ".in" 0.84415584802627563;
	setAttr ".ai_exposure" 1.3157894611358643;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 8308.17578125;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EA2CE673-4DCB-A596-13A6-059FFAC713BE";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5AD92DF0-4408-BF35-5FE0-11BD28BA2653";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "26B2B46A-4DCD-699E-9CCF-449D5FC73FA0";
createNode displayLayerManager -n "layerManager";
	rename -uid "F493C4EE-4CCB-960C-EE28-A693E89202B1";
createNode displayLayer -n "defaultLayer";
	rename -uid "758E52F8-4653-9479-87BB-D5B6A3B2A69B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "34DAF973-4F3A-4A68-77FC-74BAA8DA93B2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6D120FAC-4ACD-9942-1FEC-4F967E6FBA96";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2EE235E7-49B9-9131-660D-F7BE46D2216E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1031\n            -height 643\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 831\n            -height 643\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 831\\n    -height 643\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 831\\n    -height 643\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4A28A426-4C50-6C5A-A7B4-46B8F065193E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 210 -ast 1 -aet 210 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	rename -uid "28B35987-4F17-7210-0049-4EBA7A599CF0";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polySphere -n "polySphere1";
	rename -uid "9D17FDA7-4C55-9EE0-1593-00820877979E";
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "0E2CF389-44F9-ECAD-65C9-878E0DDC8661";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode standardSurface -n "Ball";
	rename -uid "F0523156-417F-E5DF-FCCB-A8A01EB92515";
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "B07090D9-45D7-5908-4702-C5901CA3F37B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "7334BDC5-45FD-B50A-F135-0BBDDC42D701";
createNode checker -n "checker1";
	rename -uid "4B6C72DE-4992-845D-3AE2-1A907D773185";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "49518987-494A-38D1-455D-18B9EA73A13B";
	setAttr ".re" -type "float2" 4 4 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "1D7DFCEE-4127-958E-51CA-24AC2C4D8A16";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "4.2.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "7013A550-4954-8EFE-1708-63AB2454D43C";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "558419AF-428D-87BA-49B3-DD8DFC7D7E89";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "8387A221-462B-9724-E692-86A5613ED2A7";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".an" yes;
	setAttr ".ef" 210;
	setAttr ".pff" yes;
	setAttr ".peie" 0;
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 1024;
	setAttr ".pa" 1.0659999847412109;
	setAttr ".dar" 1.3329999446868896;
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "polySmoothFace1.out" "|pSphere1|outputCloth1.i";
connectAttr ":time1.o" "nucleus1.cti";
connectAttr "nClothShape1.cust" "nucleus1.niao[0]";
connectAttr "nClothShape1.stst" "nucleus1.nias[0]";
connectAttr "nRigidShape1.cust" "nucleus1.nipo[0]";
connectAttr "nRigidShape2.cust" "nucleus1.nipo[1]";
connectAttr "nRigidShape3.cust" "nucleus1.nipo[2]";
connectAttr "nRigidShape4.cust" "nucleus1.nipo[3]";
connectAttr "nRigidShape5.cust" "nucleus1.nipo[4]";
connectAttr "nRigidShape6.cust" "nucleus1.nipo[5]";
connectAttr "nRigidShape7.cust" "nucleus1.nipo[6]";
connectAttr "nRigidShape8.cust" "nucleus1.nipo[7]";
connectAttr "nRigidShape9.cust" "nucleus1.nipo[8]";
connectAttr "nRigidShape1.stst" "nucleus1.nips[0]";
connectAttr "nRigidShape2.stst" "nucleus1.nips[1]";
connectAttr "nRigidShape3.stst" "nucleus1.nips[2]";
connectAttr "nRigidShape4.stst" "nucleus1.nips[3]";
connectAttr "nRigidShape5.stst" "nucleus1.nips[4]";
connectAttr "nRigidShape6.stst" "nucleus1.nips[5]";
connectAttr "nRigidShape7.stst" "nucleus1.nips[6]";
connectAttr "nRigidShape8.stst" "nucleus1.nips[7]";
connectAttr "nRigidShape9.stst" "nucleus1.nips[8]";
connectAttr ":time1.o" "nClothShape1.cti";
connectAttr "nucleus1.stf" "nClothShape1.stf";
connectAttr "pSphereShape1.w" "nClothShape1.imsh";
connectAttr "nucleus1.noao[0]" "nClothShape1.nxst";
connectAttr ":time1.o" "nRigidShape1.cti";
connectAttr "nucleus1.stf" "nRigidShape1.stf";
connectAttr "pPlaneShape1.w" "nRigidShape1.imsh";
connectAttr ":time1.o" "nRigidShape2.cti";
connectAttr "nucleus1.stf" "nRigidShape2.stf";
connectAttr "pPlaneShape2.w" "nRigidShape2.imsh";
connectAttr ":time1.o" "nRigidShape3.cti";
connectAttr "nucleus1.stf" "nRigidShape3.stf";
connectAttr "pPlaneShape3.w" "nRigidShape3.imsh";
connectAttr ":time1.o" "nRigidShape4.cti";
connectAttr "nucleus1.stf" "nRigidShape4.stf";
connectAttr "pPlaneShape6.w" "nRigidShape4.imsh";
connectAttr ":time1.o" "nRigidShape5.cti";
connectAttr "nucleus1.stf" "nRigidShape5.stf";
connectAttr "pPlaneShape5.w" "nRigidShape5.imsh";
connectAttr ":time1.o" "nRigidShape6.cti";
connectAttr "nucleus1.stf" "nRigidShape6.stf";
connectAttr "pPlaneShape4.w" "nRigidShape6.imsh";
connectAttr ":time1.o" "nRigidShape7.cti";
connectAttr "nucleus1.stf" "nRigidShape7.stf";
connectAttr "pPlaneShape8.w" "nRigidShape7.imsh";
connectAttr ":time1.o" "nRigidShape8.cti";
connectAttr "nucleus1.stf" "nRigidShape8.stf";
connectAttr "pPlaneShape7.w" "nRigidShape8.imsh";
connectAttr ":time1.o" "nRigidShape9.cti";
connectAttr "nucleus1.stf" "nRigidShape9.stf";
connectAttr "pPlaneShape9.w" "nRigidShape9.imsh";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "nClothShape1.omsh" "polySmoothFace1.ip";
connectAttr "checker1.oc" "Ball.bc";
connectAttr "Ball.oc" "standardSurface2SG.ss";
connectAttr "|pSphere1|outputCloth1.iog" "standardSurface2SG.dsm" -na;
connectAttr "|pSphere2|outputCloth1.iog" "standardSurface2SG.dsm" -na;
connectAttr "standardSurface2SG.msg" "materialInfo1.sg";
connectAttr "Ball.msg" "materialInfo1.m";
connectAttr "checker1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "Ball.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
// End of Physics and constraints demo.ma
