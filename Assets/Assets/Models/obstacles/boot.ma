//Maya ASCII 2016R2 scene
//Name: boot.ma
//Last modified: Mon, Sep 04, 2017 10:05:47 PM
//Codeset: 1252
requires maya "2016R2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016 Extension 2";
fileInfo "cutIdentifier" "201603022110-988944-2";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "8514C416-440D-068E-1EE2-00BC9412A2B9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.10706804879156395 0.96662055305457339 -2.7505091704908429 ;
	setAttr ".r" -type "double3" -373.53835275597874 -3065.7999999993522 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D7977FD7-4553-E695-3F40-1FA5DA003E63";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2.7433017919213247;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.010651469230651855 0 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0899059D-4052-588D-7B5E-95974E5DDB44";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1692A079-4DB4-E03A-1690-2EB52ABAEF4C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 6.3892302876623681;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "70A8D31C-431F-2681-082C-9EB6C538E5B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.023152033133925554 0.55275479107247671 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "15A81D39-4E70-2F4E-94CA-5282EE1F83BA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.8490255085151515;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "568A6A59-4BBB-DAE8-8F11-A19EDE698BD3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.9303330068703618 0.54704674153105515 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AED718A3-4C03-8C61-9D9C-99B73FD54A34";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.5162879163700866;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "1C491855-4033-3DE1-8E90-75A11B4B63E6";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "657284BF-4AF6-2E6E-5C6B-4FA4EB2CFB1A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.74034237861633301 0.72154915332794189 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4B745299-4AEE-8269-D1A9-6697ED30A27E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D40DAEC0-4BD2-9D6C-1187-9CA1058BA907";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D3AF0C86-4EDD-3B70-AE88-65B1383DD9D7";
createNode displayLayerManager -n "layerManager";
	rename -uid "3F9B15B3-453F-C115-2114-F7BE1396DE3F";
createNode displayLayer -n "defaultLayer";
	rename -uid "09BA0F08-473F-D884-0535-368511720AAC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1275C0D3-4131-BDD2-936D-EBB6B5DEE901";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9FBBDDB4-451A-8DF9-7BE7-85B141AB6940";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "5ABB5F27-43DA-8561-0519-41BDA7955863";
	setAttr ".h" 0.05;
	setAttr ".d" 2.1995620771023665;
	setAttr ".sw" 4;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "5A303EE2-420C-934C-8BE2-20B548CB334C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[66:70]" "e[116:120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.68474429845809937;
	setAttr ".re" 67;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "C2A65883-46DD-66ED-E346-D6B0843305C2";
	setAttr ".uopa" yes;
	setAttr -s 70 ".tk[0:69]" -type "float3"  0.14814815 0 0.50352001 0.074074075
		 0 0.57035565 0 0 0.57035565 -0.074074075 0 0.57035565 -0.14814815 0 0.50352001 0.14814815
		 0 0.50352001 0.074074075 0 0.57035565 0 0 0.57035565 -0.074074075 0 0.57035565 -0.14814815
		 0 0.50352001 0.068518519 0 0.75680429 0.03425926 0 0.75680429 0 0 0.75680429 -0.03425926
		 0 0.75680429 -0.068518519 0 0.75680429 0 0 -0.10502704 0 0 -0.10502704 0 0 -0.10502704
		 0 0 -0.10502704 0 0 -0.10502704 -0.072222218 0 -0.18777558 -0.036111109 0 -0.18777558
		 0 0 -0.18777558 0.036111109 0 -0.18777558 0.072222218 0 -0.18777558 -0.064814799
		 0 -0.21005407 -0.032407399 0 -0.21005407 0 0 -0.21005407 0.032407399 0 -0.21005407
		 0.064814799 0 -0.21005407 0 0 -0.079565965 0 0 -0.079565965 0 0 -0.079565965 0 0
		 -0.079565965 0 0 -0.079565965 0.15555555 0 0.076383315 0.077777773 0 0.031826388
		 0 0 0.031826388 -0.077777773 0 0.031826388 -0.15555555 0 0.076383315 0.15555555 0
		 0.076383315 0.077777773 0 0.031826388 0 0 0.031826388 -0.077777773 0 0.031826388
		 -0.15555555 0 0.076383315 0 0 -0.079565965 0 0 -0.079565965 0 0 -0.079565965 0 0
		 -0.079565965 0 0 -0.079565965 -0.064814799 0 -0.21005407 -0.032407399 0 -0.21005407
		 0 0 -0.21005407 0.032407399 0 -0.21005407 0.064814799 0 -0.21005407 -0.072222218
		 0 -0.18777558 -0.036111109 0 -0.18777558 0 0 -0.18777558 0.036111109 0 -0.18777558
		 0.072222218 0 -0.18777558 0 0 -0.10502704 0 0 -0.10502704 0 0 -0.10502704 0 0 -0.10502704
		 0 0 -0.10502704 0.068518519 0 0.75680423 0.03425926 0 0.75680423 0 0 0.75680423 -0.03425926
		 0 0.75680423 -0.068518519 0 0.75680423;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "61D196FB-4AB7-C32B-66CB-A4A4CA4CB391";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[66:70]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.54789727926254272;
	setAttr ".dr" no;
	setAttr ".re" 67;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "6D7EF151-415B-3553-B37D-DB8E7D6B0943";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[66:70]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50834071636199951;
	setAttr ".dr" no;
	setAttr ".re" 67;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "2E93F296-4A56-A802-A783-46AE15563DBE";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[70:79]" -type "float3"  0.021262184 0 0 0.042524368
		 0 0 0.042524368 0 0 0.021262184 0 0 0 0 0 -0.021262184 0 0 -0.042524368 0 0 -0.042524368
		 0 0 -0.021262184 0 0 0 0 0;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "605B2FCD-4B40-7DBA-4C84-398FA30D0A18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[116:120]" "e[136:137]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.53892987966537476;
	setAttr ".re" 136;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "29305DAA-4D9B-89C5-10B2-70B69767B2F2";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[15]" -type "float3" -0.02407407 0 -0.19095819 ;
	setAttr ".tk[16]" -type "float3" -0.012037035 0 -0.19095819 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.19095819 ;
	setAttr ".tk[18]" -type "float3" 0.012037035 0 -0.19095819 ;
	setAttr ".tk[19]" -type "float3" 0.02407407 0 -0.19095819 ;
	setAttr ".tk[60]" -type "float3" -0.02407407 0 -0.19095819 ;
	setAttr ".tk[61]" -type "float3" -0.012037035 0 -0.19095819 ;
	setAttr ".tk[62]" -type "float3" 0 0 -0.19095819 ;
	setAttr ".tk[63]" -type "float3" 0.012037035 0 -0.19095819 ;
	setAttr ".tk[64]" -type "float3" 0.02407407 0 -0.19095819 ;
	setAttr ".tk[90]" -type "float3" -0.0098788645 0 0 ;
	setAttr ".tk[91]" -type "float3" -0.019757729 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.019757729 0 0 ;
	setAttr ".tk[93]" -type "float3" -0.0098788645 0 0 ;
	setAttr ".tk[95]" -type "float3" 0.0098788645 0 0 ;
	setAttr ".tk[96]" -type "float3" 0.019757729 0 0 ;
	setAttr ".tk[97]" -type "float3" 0.019757729 0 0 ;
	setAttr ".tk[98]" -type "float3" 0.0098788645 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "84D36BB5-4406-DB2E-A1EC-D18B1B31886B";
	setAttr ".ics" -type "componentList" 6 "f[4:27]" "f[68]" "f[75:78]" "f[85:88]" "f[95:98]" "f[105:107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.025 0.30109102 ;
	setAttr ".rs" 37764;
	setAttr ".ls" -type "double3" 0.87999999521750827 0.87999999521750827 0.87999999521750827 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.57222223281860352 0.02500000037252903 -1.0679546594619751 ;
	setAttr ".cbx" -type "double3" 0.57222223281860352 0.025000002235174179 1.6701366901397705 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "3B9B03D4-4B9C-9488-CCAE-E8A6E00CBFC0";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[100]" -type "float3" 0.010742403 0 0 ;
	setAttr ".tk[101]" -type "float3" 0.021484805 0 0 ;
	setAttr ".tk[102]" -type "float3" 0.021484805 0 0 ;
	setAttr ".tk[103]" -type "float3" 0.010742403 0 0 ;
	setAttr ".tk[105]" -type "float3" -0.010742403 0 0 ;
	setAttr ".tk[106]" -type "float3" -0.021484805 0 0 ;
	setAttr ".tk[107]" -type "float3" -0.021484805 0 0 ;
	setAttr ".tk[108]" -type "float3" -0.010742403 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "3727D83F-474B-DE8D-46D6-FD8F72D48C12";
	setAttr ".ics" -type "componentList" 6 "f[4:27]" "f[68]" "f[75:78]" "f[85:88]" "f[95:98]" "f[105:107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.025 0.30368882 ;
	setAttr ".rs" 56443;
	setAttr ".lt" -type "double3" 0 -8.5703662997243605e-017 0.61402501526132713 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.55385631322860718 0.02500000037252903 -1.0513812303543091 ;
	setAttr ".cbx" -type "double3" 0.55385631322860718 0.025000002235174179 1.6587588787078857 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "840A8D98-46EA-1924-B6DD-8BA78754531B";
	setAttr ".ics" -type "componentList" 4 "f[4:11]" "f[78]" "f[85:88]" "f[95:97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.63902503 1.1537967 ;
	setAttr ".rs" 47029;
	setAttr ".ls" -type "double3" 0.89999999939630826 0.89999999939630826 0.89999999939630826 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.44950562715530396 0.63902497291564941 0.64883458614349365 ;
	setAttr ".cbx" -type "double3" 0.44950562715530396 0.63902509212493896 1.6587588787078857 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "D46EEDE0-4E04-8802-8B2B-34B6D4C8BA5B";
	setAttr ".ics" -type "componentList" 1 "f[164:179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.63902503 1.1537967 ;
	setAttr ".rs" 58641;
	setAttr ".lt" -type "double3" 7.1717432611074355e-017 4.2597710433892391e-017 1.6696979323862788 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.44950562715530396 0.63902497291564941 0.64883458614349365 ;
	setAttr ".cbx" -type "double3" 0.44950562715530396 0.63902509212493896 1.6587588787078857 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "DB891E42-4AEC-846D-9165-24A7C82BFD30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[344:345]" "e[352]" "e[357]" "e[362]" "e[367]" "e[372]" "e[377]" "e[382]" "e[387:388]" "e[395]" "e[400:401]" "e[408]" "e[413]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.83896499872207642;
	setAttr ".dr" no;
	setAttr ".re" 367;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "0396A04A-425B-4A40-916E-E0AC01640777";
	setAttr ".uopa" yes;
	setAttr -s 208 ".tk";
	setAttr ".tk[0]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[1]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[2]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[3]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[4]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[5]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[6]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[7]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[8]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[9]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[10]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[11]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[12]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[13]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[14]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[15]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[16]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[17]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[18]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[19]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[20]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[21]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[22]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[23]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[24]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[25]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[26]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[27]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[28]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[29]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[30]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[31]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[32]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[33]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[34]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[35]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[36]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[37]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[38]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[39]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[40]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[41]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[42]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[43]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[44]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[45]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[46]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[47]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[48]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[49]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[50]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[51]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[52]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[53]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[54]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[55]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[56]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[57]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[58]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[59]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[60]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[61]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[62]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[63]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[64]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[65]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[66]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[67]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[68]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[69]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[70]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[71]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[72]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[73]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[74]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[75]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[76]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[77]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[78]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[79]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[80]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[81]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[82]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[83]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[84]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[85]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[86]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[87]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[88]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[89]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[90]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[91]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[92]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[93]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[94]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[95]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[96]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[97]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[98]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[99]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[100]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[101]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[102]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[103]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[104]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[105]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[106]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[107]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[108]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[109]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[110]" -type "float3" 0 3.7252903e-008 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.045260057 0 ;
	setAttr ".tk[114]" -type "float3" 0 0.022385227 0 ;
	setAttr ".tk[117]" -type "float3" 0 -0.12659323 0 ;
	setAttr ".tk[118]" -type "float3" 0 -0.045260057 0 ;
	setAttr ".tk[119]" -type "float3" 0 -0.12659323 0 ;
	setAttr ".tk[120]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[121]" -type "float3" 0 0.072308265 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.072308265 0 ;
	setAttr ".tk[123]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[124]" -type "float3" 0 0.11278836 0 ;
	setAttr ".tk[125]" -type "float3" 0 0.11278836 0 ;
	setAttr ".tk[126]" -type "float3" 0 0.072308265 0 ;
	setAttr ".tk[127]" -type "float3" 0 0.072308265 0 ;
	setAttr ".tk[128]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[129]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[130]" -type "float3" 0 -0.044203214 0 ;
	setAttr ".tk[131]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[132]" -type "float3" 0 -0.003723131 0 ;
	setAttr ".tk[133]" -type "float3" 0 -0.044203214 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.23468466 0 ;
	setAttr ".tk[136]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[137]" -type "float3" 0 -0.14324214 0 ;
	setAttr ".tk[138]" -type "float3" 0 -0.23468466 0 ;
	setAttr ".tk[139]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[140]" -type "float3" 0 -0.49299431 0 ;
	setAttr ".tk[141]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[142]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[143]" -type "float3" 0 -0.49299431 0 ;
	setAttr ".tk[144]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[145]" -type "float3" 0 0.072308265 -0.11227999 ;
	setAttr ".tk[146]" -type "float3" 0 -0.11506037 0.13326579 ;
	setAttr ".tk[147]" -type "float3" 0 0.072308265 0 ;
	setAttr ".tk[148]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[149]" -type "float3" 0 -0.11506037 0.13326579 ;
	setAttr ".tk[150]" -type "float3" 0 0.072308265 -0.11227999 ;
	setAttr ".tk[151]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[152]" -type "float3" 0 0.072308265 0 ;
	setAttr ".tk[153]" -type "float3" 0 0.11278836 -0.18563046 ;
	setAttr ".tk[154]" -type "float3" 0 0.11278836 0 ;
	setAttr ".tk[155]" -type "float3" 0 -0.045260057 0 ;
	setAttr ".tk[156]" -type "float3" 0 -0.12659323 0 ;
	setAttr ".tk[159]" -type "float3" 0 -0.18195596 0 ;
	setAttr ".tk[160]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[161]" -type "float3" 0 0.16596839 0 ;
	setAttr ".tk[162]" -type "float3" 0 0.16596839 0 ;
	setAttr ".tk[166]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[167]" -type "float3" -7.4505806e-009 -0.18195596 0 ;
	setAttr ".tk[168]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[169]" -type "float3" 7.4505806e-009 -0.015987573 0 ;
	setAttr ".tk[170]" -type "float3" 0 -0.18195596 0 ;
	setAttr ".tk[171]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[172]" -type "float3" 0 -0.18195596 0 ;
	setAttr ".tk[173]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.072308265 -0.11227999 ;
	setAttr ".tk[175]" -type "float3" 0 -0.49543309 0.13326579 ;
	setAttr ".tk[176]" -type "float3" 0 -0.49543309 0 ;
	setAttr ".tk[177]" -type "float3" 0 -0.18195596 0 ;
	setAttr ".tk[178]" -type "float3" 0 -0.49543309 0.13326579 ;
	setAttr ".tk[179]" -type "float3" 0 0.072308265 -0.11227999 ;
	setAttr ".tk[180]" -type "float3" 0 -0.015987573 0 ;
	setAttr ".tk[181]" -type "float3" 0 0.11278836 -0.18563043 ;
	setAttr ".tk[182]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[183]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[184]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[185]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[186]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[187]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.082985014 0 ;
	setAttr ".tk[189]" -type "float3" 0 0.082985014 0 ;
	setAttr ".tk[190]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[191]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[192]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[193]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[194]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[195]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[196]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[197]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[198]" -type "float3" 2.2351742e-008 0.082983606 0 ;
	setAttr ".tk[199]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[200]" -type "float3" 0 0.082983606 -0.11227999 ;
	setAttr ".tk[201]" -type "float3" -2.2351742e-008 0.082983606 0.13326579 ;
	setAttr ".tk[202]" -type "float3" 0 0.082983606 0.13326579 ;
	setAttr ".tk[203]" -type "float3" 0 0.082983606 -0.11227999 ;
	setAttr ".tk[204]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[205]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[206]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[207]" -type "float3" 0 0.082983606 0.13326579 ;
	setAttr ".tk[208]" -type "float3" 0 0.082983606 0.13326579 ;
	setAttr ".tk[209]" -type "float3" 0 0.082983606 0 ;
	setAttr ".tk[210]" -type "float3" 0 0.082983606 -0.11227999 ;
	setAttr ".tk[211]" -type "float3" 0 0.082983606 -0.11227999 ;
	setAttr ".tk[212]" -type "float3" 0 0.082985245 -0.18563049 ;
	setAttr ".tk[213]" -type "float3" 0 0.082985245 -0.18563049 ;
	setAttr ".tk[233]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[239]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[240]" -type "float3" -2.2351742e-008 0 0 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "C3F50A00-46F8-9011-9525-F3BD5C4DFAB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[344:345]" "e[352]" "e[357]" "e[362]" "e[367]" "e[372]" "e[377]" "e[382]" "e[387:388]" "e[395]" "e[400:401]" "e[408]" "e[413]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.47120591998100281;
	setAttr ".re" 367;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "29AA9E8F-47D7-9F35-4452-ED9B83BE4E12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[344:345]" "e[352]" "e[357]" "e[362]" "e[367]" "e[372]" "e[377]" "e[382]" "e[387:388]" "e[395]" "e[400:401]" "e[408]" "e[413]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.60055047273635864;
	setAttr ".dr" no;
	setAttr ".re" 388;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "C10B57C5-48C2-ECFF-7D1D-F2AEB6949496";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[456:457]" "e[459]" "e[461]" "e[463]" "e[465]" "e[467]" "e[469]" "e[471]" "e[473]" "e[475]" "e[477]" "e[479]" "e[481]" "e[483]" "e[485]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.5054355263710022;
	setAttr ".re" 471;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "38C31EB6-47A3-AE64-4FF4-6998F357513E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[347]" "e[349]" "e[354]" "e[359]" "e[364]" "e[369]" "e[374]" "e[379]" "e[384]" "e[390]" "e[392]" "e[397]" "e[403]" "e[405]" "e[410]" "e[415]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.86447036266326904;
	setAttr ".dr" no;
	setAttr ".re" 405;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "0B001639-4E38-5A45-BD88-28907A526283";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[347]" "e[349]" "e[354]" "e[359]" "e[364]" "e[369]" "e[374]" "e[379]" "e[384]" "e[390]" "e[392]" "e[397]" "e[403]" "e[405]" "e[410]" "e[415]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.78121864795684814;
	setAttr ".dr" no;
	setAttr ".re" 384;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "54C2596E-40D2-D674-D24E-59BF1560DEB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[347]" "e[349]" "e[354]" "e[359]" "e[364]" "e[369]" "e[374]" "e[379]" "e[384]" "e[390]" "e[392]" "e[397]" "e[403]" "e[405]" "e[410]" "e[415]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.72317045927047729;
	setAttr ".dr" no;
	setAttr ".re" 384;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "17E73F33-4BA7-2F91-6F1C-639DC8BD744F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[347]" "e[349]" "e[354]" "e[359]" "e[364]" "e[369]" "e[374]" "e[379]" "e[384]" "e[390]" "e[392]" "e[397]" "e[403]" "e[405]" "e[410]" "e[415]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.75068044662475586;
	setAttr ".dr" no;
	setAttr ".re" 384;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "51EE0D99-463A-B30A-032C-4DA230163335";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[347]" "e[349]" "e[354]" "e[359]" "e[364]" "e[369]" "e[374]" "e[379]" "e[384]" "e[390]" "e[392]" "e[397]" "e[403]" "e[405]" "e[410]" "e[415]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.66362816095352173;
	setAttr ".dr" no;
	setAttr ".re" 403;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "A9EDC33E-4907-09F5-EF29-869F85536D9B";
	setAttr ".uopa" yes;
	setAttr -s 128 ".tk[214:341]" -type "float3"  -0.045341857 0 -0.04880584
		 -0.023453262 0 -0.054222666 3.665826e-008 0 -0.054297157 0.023453342 0 -0.05422245
		 0.045341879 0 -0.048805684 0.054947507 0 -0.038708489 0.059201539 0 -0.017699862
		 0.058365852 0 0.003300929 0.055826925 0 0.025145397 0.02870311 0 0.047634739 5.88761e-009
		 0 0.054297138 -0.028703129 0 0.047634657 -0.055826943 0 0.025145397 -0.058365829
		 0 0.0033009644 -0.059201553 0 -0.01769983 -0.054947529 0 -0.038708482 -0.045341842
		 0 -0.048805762 -0.023453267 0 -0.05422264 2.0386913e-008 0 -0.054297172 0.023453308
		 0 -0.054222524 0.045341861 0 -0.048805699 0.054947507 0 -0.038708437 0.059201539
		 0 -0.017699849 0.058365852 0 0.003300953 0.055826943 0 0.025145359 0.028703136 0
		 0.047634695 5.88761e-009 0 0.054297172 -0.028703129 0 0.047634654 -0.055826943 0
		 0.025145359 -0.058365829 0 0.0033009644 -0.059201531 0 -0.01769984 -0.054947507 0
		 -0.038708437 0 0 0.030622035 0 0 0.058009569 0 0 0.066123188 0 0 0.058009543 0 0
		 0.030622035 0 0 0.0040199063 0 0 -0.021554912 0 0 -0.047139186 0 0 -0.059435681 0
		 0 -0.066032372 0 0 -0.066123158 0 0 -0.066032313 0 0 -0.059435621 0 0 -0.047139186
		 0 0 -0.021554912 0 0 0.0040199063 0.055826928 0 0.02514538 0.028703125 0 0.047634721
		 5.88761e-009 0 0.05429716 -0.028703129 0 0.047634654 -0.055826943 0 0.02514538 -0.058365829
		 0 0.0033009644 -0.059201539 0 -0.01769983 -0.054947514 0 -0.038708463 -0.045341849
		 0 -0.048805811 -0.023453267 0 -0.054222655 2.861103e-008 0 -0.054297153 0.023453321
		 0 -0.054222491 0.04534189 0 -0.048805699 0.054947507 0 -0.038708482 0.059201539 0
		 -0.017699849 0.058365852 0 0.0033009399 -0.056920424 0 0.0036090724 -0.054562733
		 0 0.023429768 -0.028727438 0 0.045896359 5.9489405e-009 0 0.052554775 0.028727422
		 0 0.045896448 0.054562725 0 0.023429768 0.056920424 0 0.0036090191 0.057677921 0
		 -0.017700199 0.053491313 0 -0.038492817 0.044555485 0 -0.048427742 0.023636382 0
		 -0.053362582 3.7593697e-008 0 -0.053489611 -0.023636306 0 -0.05336282 -0.04455547
		 0 -0.048427906 -0.053491298 0 -0.038492791 -0.057677913 0 -0.017700173 -0.057677913
		 0 -0.017700173 -0.056920424 0 0.0036090724 -0.054562725 0 0.023429751 -0.028727438
		 0 0.045896359 5.9489405e-009 0 0.052554797 0.028727429 0 0.045896433 0.054562733
		 0 0.023429751 0.056920424 0 0.0036090307 0.057677921 0 -0.017700199 0.053491313 0
		 -0.038492791 0.044555485 0 -0.048427742 0.023636362 0 -0.053362623 3.0657002e-008
		 0 -0.053489618 -0.023636306 0 -0.053362809 -0.044555455 0 -0.048427876 -0.053491306
		 0 -0.038492788 -0.057677913 0 -0.017700173 -0.056920424 0 0.0036090724 -0.054562725
		 0 0.02342974 -0.028727438 0 0.045896359 5.9489405e-009 0 0.052554812 0.028727435
		 0 0.045896403 0.054562733 0 0.02342974 0.056920424 0 0.003609041 0.057677921 0 -0.017700199
		 0.053491306 0 -0.038492799 0.044555478 0 -0.048427742 0.023636354 0 -0.053362664
		 2.3800105e-008 0 -0.053489625 -0.023636306 0 -0.053362787 -0.044555455 0 -0.048427839
		 -0.053491313 0 -0.038492769 -0.057677917 0 -0.017700173 -0.056920417 0 0.0036090724
		 -0.054562733 0 0.023429725 -0.028727442 0 0.045896359 5.9489396e-009 0 0.052554809
		 0.028727442 0 0.045896403 0.054562733 0 0.023429725 0.056920424 0 0.003609041 0.057677921
		 0 -0.017700199 0.053491313 0 -0.038492788 0.04455547 0 -0.048427749 0.023636347 0
		 -0.053362679 1.9334172e-008 0 -0.053489625 -0.023636308 0 -0.053362779 -0.044555455
		 0 -0.048427828 -0.053491306 0 -0.03849275;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "30192A55-4B83-623A-9E56-66B4EF3E25BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[206:207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]" "e[219]" "e[221]" "e[223]" "e[226]" "e[235]" "e[237]" "e[241]" "e[248]" "e[252]" "e[259]" "e[262]" "e[264]" "e[267]" "e[270]" "e[273]" "e[276]" "e[279]" "e[282]" "e[284]" "e[293]" "e[295]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.14740346372127533;
	setAttr ".re" 279;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "42CFEA77-44A2-348F-1A4B-A59F9F661F04";
	setAttr ".uopa" yes;
	setAttr -s 271 ".tk";
	setAttr ".tk[2]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.038572181 0 -0.074288175 ;
	setAttr ".tk[11]" -type "float3" 0.038572181 0 -0.074288175 ;
	setAttr ".tk[22]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.038572181 0 -0.074288175 ;
	setAttr ".tk[51]" -type "float3" -0.019286091 0 -0.074288175 ;
	setAttr ".tk[52]" -type "float3" 0.0019393541 0 -0.074288175 ;
	setAttr ".tk[53]" -type "float3" 0.019286091 0 -0.074288175 ;
	setAttr ".tk[54]" -type "float3" 0.038572181 0 -0.074288175 ;
	setAttr ".tk[58]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.0069673196 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.0069673196 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.0069673196 ;
	setAttr ".tk[65]" -type "float3" 0.0017802122 0 0.0069673196 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.0069673196 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.0069673196 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.0069673196 ;
	setAttr ".tk[69]" -type "float3" -0.0087194452 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.038584765 0 0 ;
	setAttr ".tk[84]" -type "float3" 0.019958142 0 0 ;
	setAttr ".tk[85]" -type "float3" -0.0228283 0 -0.071432769 ;
	setAttr ".tk[86]" -type "float3" 0.0017802122 0 -0.0056828926 ;
	setAttr ".tk[87]" -type "float3" -0.019958142 0 0 ;
	setAttr ".tk[88]" -type "float3" -0.038584765 0 0 ;
	setAttr ".tk[89]" -type "float3" 0.0228283 0 -0.071432769 ;
	setAttr ".tk[90]" -type "float3" 0.007639552 0 0 ;
	setAttr ".tk[91]" -type "float3" -0.050379016 0 0 ;
	setAttr ".tk[102]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.011301801 0 0 ;
	setAttr ".tk[107]" -type "float3" -0.011301801 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.010724647 0 0.011451235 ;
	setAttr ".tk[110]" -type "float3" -0.049667872 0 0.011451235 ;
	setAttr ".tk[111]" -type "float3" 0.066968292 -0.29801494 -0.10769922 ;
	setAttr ".tk[112]" -type "float3" 0.036358561 -0.298015 -0.058933437 ;
	setAttr ".tk[113]" -type "float3" -0.019354604 -0.25275487 -0.14235796 ;
	setAttr ".tk[114]" -type "float3" 0.0017802478 -0.3204003 -0.045488954 ;
	setAttr ".tk[115]" -type "float3" -0.029237084 -0.29801506 -0.058933437 ;
	setAttr ".tk[116]" -type "float3" -0.059846733 -0.29801506 -0.10769922 ;
	setAttr ".tk[117]" -type "float3" 0.019883029 -0.17142175 -0.14235796 ;
	setAttr ".tk[118]" -type "float3" 0.00066477922 -0.25275487 -0.070469037 ;
	setAttr ".tk[119]" -type "float3" 0.0093252417 -0.17142169 -0.070469037 ;
	setAttr ".tk[121]" -type "float3" 0 -0.061437976 0 ;
	setAttr ".tk[122]" -type "float3" 0 -0.061437976 0 ;
	setAttr ".tk[124]" -type "float3" 0.0017802122 -0.042542219 0 ;
	setAttr ".tk[125]" -type "float3" 0.0017802122 -0.042542219 0 ;
	setAttr ".tk[126]" -type "float3" 0 -0.061437976 0 ;
	setAttr ".tk[127]" -type "float3" 0 -0.061437976 0 ;
	setAttr ".tk[130]" -type "float3" 0 -0.061437976 0 ;
	setAttr ".tk[132]" -type "float3" 0.0017802122 -0.042542219 0 ;
	setAttr ".tk[133]" -type "float3" 0 -0.061437976 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.061437976 -0.096020482 ;
	setAttr ".tk[137]" -type "float3" 0.0017802122 -0.042542219 -0.096020482 ;
	setAttr ".tk[138]" -type "float3" 0 -0.061437976 -0.096020482 ;
	setAttr ".tk[140]" -type "float3" 0 0.057175584 0 ;
	setAttr ".tk[142]" -type "float3" 0.0017802122 0.076071322 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.057175584 0 ;
	setAttr ".tk[145]" -type "float3" 0.029357044 0.12653166 0 ;
	setAttr ".tk[146]" -type "float3" 0.00091170263 0.099813044 -0.056068182 ;
	setAttr ".tk[147]" -type "float3" 0 -0.017652057 0 ;
	setAttr ".tk[149]" -type "float3" 0.0090784393 0.099813104 -0.10529166 ;
	setAttr ".tk[150]" -type "float3" -0.029357044 0.12653166 0 ;
	setAttr ".tk[152]" -type "float3" 0 -0.017652057 0 ;
	setAttr ".tk[153]" -type "float3" 0.0011881881 0.1360907 0 ;
	setAttr ".tk[154]" -type "float3" 0.0017802122 0.0012436935 0 ;
	setAttr ".tk[155]" -type "float3" -0.05114647 -0.25275493 0.011451414 ;
	setAttr ".tk[156]" -type "float3" 0.01615632 -0.17142169 0.011451414 ;
	setAttr ".tk[157]" -type "float3" 0.14824191 -0.24127421 -0.22844259 ;
	setAttr ".tk[158]" -type "float3" 0.078641176 -0.18409868 -0.26314437 ;
	setAttr ".tk[159]" -type "float3" 0.081600264 -0.0021469598 -0.16743761 ;
	setAttr ".tk[160]" -type "float3" 0.15757498 0.25415608 -0.16220789 ;
	setAttr ".tk[161]" -type "float3" 0.0016366276 -0.33117107 -0.24979675 ;
	setAttr ".tk[162]" -type "float3" 0.0017829331 -0.33117014 -0.16743761 ;
	setAttr ".tk[163]" -type "float3" -0.078641176 -0.18409874 -0.26314437 ;
	setAttr ".tk[164]" -type "float3" -0.081600264 -0.18409871 -0.16743761 ;
	setAttr ".tk[165]" -type "float3" -0.14824191 -0.24127433 -0.22844259 ;
	setAttr ".tk[166]" -type "float3" -0.15757498 0.25415602 -0.16220789 ;
	setAttr ".tk[167]" -type "float3" 0.099652909 -0.0021469598 -0.14633343 ;
	setAttr ".tk[168]" -type "float3" 0.13506858 0.25415608 -0.14808774 ;
	setAttr ".tk[169]" -type "float3" 0.0016366201 -0.14921542 -0.14633343 ;
	setAttr ".tk[170]" -type "float3" -0.099652909 -0.0021469598 -0.14633343 ;
	setAttr ".tk[171]" -type "float3" -0.13183609 0.25415608 -0.14808774 ;
	setAttr ".tk[172]" -type "float3" 0.098124906 -0.0021469598 0.0096420096 ;
	setAttr ".tk[173]" -type "float3" 0.097826213 0.25415602 0.017517872 ;
	setAttr ".tk[174]" -type "float3" 0.095580034 -0.25640628 0.22392236 ;
	setAttr ".tk[175]" -type "float3" 0.12786098 0.25415602 0.096928582 ;
	setAttr ".tk[176]" -type "float3" -0.097826213 0.25415608 0.017517988 ;
	setAttr ".tk[177]" -type "float3" -0.098124906 -0.0021469598 0.0096420096 ;
	setAttr ".tk[178]" -type "float3" -0.12462845 0.25415608 0.096928582 ;
	setAttr ".tk[179]" -type "float3" -0.095580034 -0.25640628 0.22392236 ;
	setAttr ".tk[180]" -type "float3" 0.0016366276 -0.14921856 0.0096420096 ;
	setAttr ".tk[181]" -type "float3" 0.0016366281 -0.2779904 0.25604472 ;
	setAttr ".tk[182]" -type "float3" 0 0 -0.11304723 ;
	setAttr ".tk[183]" -type "float3" 0 0 -0.051058911 ;
	setAttr ".tk[184]" -type "float3" 0.0028113986 -0.017608695 -0.060181472 ;
	setAttr ".tk[185]" -type "float3" 0.0052995933 -0.017608695 -0.12131871 ;
	setAttr ".tk[186]" -type "float3" -0.037295997 0 -0.14235936 ;
	setAttr ".tk[187]" -type "float3" -0.029376356 -0.017608695 -0.13998504 ;
	setAttr ".tk[188]" -type "float3" 0.0017804906 0 -0.035874363 ;
	setAttr ".tk[189]" -type "float3" 0.0017804906 -0.017608721 -0.045018841 ;
	setAttr ".tk[190]" -type "float3" 0 0 -0.051058911 ;
	setAttr ".tk[191]" -type "float3" -0.0028113895 -0.017608695 -0.060181517 ;
	setAttr ".tk[192]" -type "float3" 0 0 -0.11304723 ;
	setAttr ".tk[193]" -type "float3" -0.0052995915 -0.017608695 -0.12131874 ;
	setAttr ".tk[194]" -type "float3" 0.037296008 0 -0.142359 ;
	setAttr ".tk[195]" -type "float3" 0.029376373 -0.017608695 -0.13998473 ;
	setAttr ".tk[196]" -type "float3" -0.10502948 0 -0.070925005 ;
	setAttr ".tk[197]" -type "float3" -0.093790904 -0.017608695 -0.073897056 ;
	setAttr ".tk[198]" -type "float3" 0.10854563 0 -0.070925005 ;
	setAttr ".tk[199]" -type "float3" 0.097307131 -0.017608695 -0.073897049 ;
	setAttr ".tk[201]" -type "float3" -0.098942354 0 0.02024122 ;
	setAttr ".tk[202]" -type "float3" -0.088630311 -0.017608695 0.020573433 ;
	setAttr ".tk[203]" -type "float3" 0.0034169441 -0.017608695 0.0079961447 ;
	setAttr ".tk[204]" -type "float3" -0.16710505 0 0.011450729 ;
	setAttr ".tk[205]" -type "float3" -0.15364344 -0.017608695 0.014842614 ;
	setAttr ".tk[206]" -type "float3" 0.16710506 0 0.011451235 ;
	setAttr ".tk[207]" -type "float3" 0.10245863 0 0.02024122 ;
	setAttr ".tk[208]" -type "float3" 0.092146561 -0.017608695 0.020573433 ;
	setAttr ".tk[209]" -type "float3" 0.15364344 -0.017608695 0.014843276 ;
	setAttr ".tk[211]" -type "float3" -0.0034169483 -0.017608695 0.007996127 ;
	setAttr ".tk[212]" -type "float3" 0.0017802122 0 0 ;
	setAttr ".tk[213]" -type "float3" 0.0017802126 -0.017608721 0.0091444692 ;
	setAttr ".tk[214]" -type "float3" 0 0 -0.11304723 ;
	setAttr ".tk[215]" -type "float3" 0 0 -0.051058911 ;
	setAttr ".tk[216]" -type "float3" 0.0017804091 0 -0.035874363 ;
	setAttr ".tk[217]" -type "float3" 0 0 -0.051058911 ;
	setAttr ".tk[218]" -type "float3" 0 0 -0.11304723 ;
	setAttr ".tk[219]" -type "float3" -0.032383978 0 -0.10365108 ;
	setAttr ".tk[220]" -type "float3" -0.090965152 0 -0.070925005 ;
	setAttr ".tk[221]" -type "float3" -0.14509682 0 0.0081500011 ;
	setAttr ".tk[222]" -type "float3" -0.085679695 0 0.010473898 ;
	setAttr ".tk[224]" -type "float3" 0.0017802062 0 0 ;
	setAttr ".tk[226]" -type "float3" 0.089195967 0 0.010473898 ;
	setAttr ".tk[227]" -type "float3" 0.14509682 0 0.0081503214 ;
	setAttr ".tk[228]" -type "float3" 0.094481334 0 -0.070925005 ;
	setAttr ".tk[229]" -type "float3" 0.032383993 0 -0.10365088 ;
	setAttr ".tk[230]" -type "float3" -0.036048956 0.01298416 -0.16048905 ;
	setAttr ".tk[231]" -type "float3" -0.018646475 0.01298416 -0.11251467 ;
	setAttr ".tk[232]" -type "float3" 0.0015656244 -0.00055201014 -0.099251322 ;
	setAttr ".tk[233]" -type "float3" 0.018646505 0.012984361 -0.11251461 ;
	setAttr ".tk[234]" -type "float3" 0.036048967 0.012984476 -0.16048898 ;
	setAttr ".tk[235]" -type "float3" 0.015207225 0.040351734 -0.14003758 ;
	setAttr ".tk[236]" -type "float3" -0.032927349 0.040351734 -0.085899778 ;
	setAttr ".tk[237]" -type "float3" -0.081195429 0.040351611 0.0089887073 ;
	setAttr ".tk[238]" -type "float3" -0.030962273 0.082558036 0.040778454 ;
	setAttr ".tk[239]" -type "float3" 0.022820372 -0.030738268 0.055334918 ;
	setAttr ".tk[240]" -type "float3" 0.0015655287 -0.055215921 0.063376896 ;
	setAttr ".tk[241]" -type "float3" -0.022820376 -0.030738268 0.05533484 ;
	setAttr ".tk[242]" -type "float3" 0.03405444 0.082558036 0.040778454 ;
	setAttr ".tk[243]" -type "float3" 0.081195429 0.089531422 0.0089888051 ;
	setAttr ".tk[244]" -type "float3" 0.036019452 0.089531422 -0.085899763 ;
	setAttr ".tk[245]" -type "float3" -0.015207222 0.089531422 -0.14003758 ;
	setAttr ".tk[246]" -type "float3" 0.057116389 -0.047643084 0.0288739 ;
	setAttr ".tk[247]" -type "float3" 0.048928097 -0.19052666 0.039115302 ;
	setAttr ".tk[248]" -type "float3" 0.0016319111 -0.22139633 0.044549827 ;
	setAttr ".tk[249]" -type "float3" -0.048928134 -0.19052666 0.039115272 ;
	setAttr ".tk[250]" -type "float3" -0.054389559 -0.047643084 0.0288739 ;
	setAttr ".tk[251]" -type "float3" 0.030096991 -0.038848467 0.009765109 ;
	setAttr ".tk[252]" -type "float3" -0.016740013 -0.038848467 -0.079193927 ;
	setAttr ".tk[253]" -type "float3" -0.06474223 -0.038848467 -0.11860082 ;
	setAttr ".tk[254]" -type "float3" -0.07729093 -0.13538605 -0.10456654 ;
	setAttr ".tk[255]" -type "float3" -0.039979056 -0.13538605 -0.052160699 ;
	setAttr ".tk[256]" -type "float3" 0.0016319773 -0.15245685 -0.038301945 ;
	setAttr ".tk[257]" -type "float3" 0.039979097 -0.13538593 -0.052160673 ;
	setAttr ".tk[258]" -type "float3" 0.077290945 -0.13538593 -0.10456654 ;
	setAttr ".tk[259]" -type "float3" 0.06474223 -0.10087147 -0.11860082 ;
	setAttr ".tk[260]" -type "float3" 0.019466726 -0.10087147 -0.079193927 ;
	setAttr ".tk[261]" -type "float3" -0.030096991 -0.10087159 0.009765109 ;
	setAttr ".tk[262]" -type "float3" -0.030962266 0.010725493 0.0407786 ;
	setAttr ".tk[263]" -type "float3" 0.02282037 -0.060557149 0.055334937 ;
	setAttr ".tk[264]" -type "float3" 0.0015655287 -0.075958438 0.063376881 ;
	setAttr ".tk[265]" -type "float3" -0.022820376 -0.060557149 0.05533484 ;
	setAttr ".tk[266]" -type "float3" 0.03405444 0.010725493 0.0407786 ;
	setAttr ".tk[267]" -type "float3" 0.081195429 0.015112861 0.0089888051 ;
	setAttr ".tk[268]" -type "float3" 0.036019459 0.015112861 -0.085899763 ;
	setAttr ".tk[269]" -type "float3" -0.015207221 0.015112861 -0.1400378 ;
	setAttr ".tk[270]" -type "float3" -0.036048964 -0.033048335 -0.16048935 ;
	setAttr ".tk[271]" -type "float3" -0.018646475 -0.033048335 -0.11251467 ;
	setAttr ".tk[272]" -type "float3" 0.0015656785 -0.04156556 -0.099251315 ;
	setAttr ".tk[273]" -type "float3" 0.018646523 -0.033048227 -0.1125146 ;
	setAttr ".tk[274]" -type "float3" 0.036048967 -0.033048175 -0.16048898 ;
	setAttr ".tk[275]" -type "float3" 0.015207225 -0.01582931 -0.14003797 ;
	setAttr ".tk[276]" -type "float3" -0.032927349 -0.01582931 -0.085899778 ;
	setAttr ".tk[277]" -type "float3" -0.081195429 -0.015829628 0.0089885835 ;
	setAttr ".tk[278]" -type "float3" 0.13340807 -0.012835689 0.011234251 ;
	setAttr ".tk[279]" -type "float3" 0.080242105 -0.012835689 0.0086756926 ;
	setAttr ".tk[280]" -type "float3" -0.0029669236 -0.014041067 0.0072771478 ;
	setAttr ".tk[281]" -type "float3" 0.0017802067 -0.014127037 0.0083211847 ;
	setAttr ".tk[282]" -type "float3" 0.0029669211 -0.014041067 0.0072771595 ;
	setAttr ".tk[283]" -type "float3" -0.076725841 -0.012835689 0.0086756926 ;
	setAttr ".tk[284]" -type "float3" -0.13340807 -0.012835689 0.011233591 ;
	setAttr ".tk[285]" -type "float3" -0.081206791 -0.012835689 -0.073619775 ;
	setAttr ".tk[286]" -type "float3" -0.025507387 -0.012835689 -0.10149246 ;
	setAttr ".tk[287]" -type "float3" 0.0046016173 -0.013887549 -0.12056008 ;
	setAttr ".tk[288]" -type "float3" 0.0024411262 -0.013887549 -0.05934554 ;
	setAttr ".tk[289]" -type "float3" 0.0017804153 -0.014239948 -0.044180918 ;
	setAttr ".tk[290]" -type "float3" -0.0024411194 -0.013887549 -0.059345577 ;
	setAttr ".tk[291]" -type "float3" -0.0046016155 -0.013887549 -0.12056009 ;
	setAttr ".tk[292]" -type "float3" 0.025507398 -0.012835689 -0.10149219 ;
	setAttr ".tk[293]" -type "float3" 0.084722966 -0.012835689 -0.073619775 ;
	setAttr ".tk[294]" -type "float3" 0.028649224 0.064374983 -0.088269971 ;
	setAttr ".tk[295]" -type "float3" 0.072065502 0.064374983 0.012072735 ;
	setAttr ".tk[296]" -type "float3" 0.027185395 0.064374983 0.033747341 ;
	setAttr ".tk[297]" -type "float3" -0.025448844 -0.11994609 0.059636194 ;
	setAttr ".tk[298]" -type "float3" 0.0015655291 -0.13308956 0.068591438 ;
	setAttr ".tk[299]" -type "float3" 0.025448833 -0.11994609 0.059636258 ;
	setAttr ".tk[300]" -type "float3" -0.024093246 0.064374983 0.033747341 ;
	setAttr ".tk[301]" -type "float3" -0.072065473 0.064374983 0.012072279 ;
	setAttr ".tk[302]" -type "float3" -0.025557101 0.064374983 -0.088269979 ;
	setAttr ".tk[303]" -type "float3" 0.020096783 0.064374983 -0.13787925 ;
	setAttr ".tk[304]" -type "float3" 0.039470457 -0.096470676 -0.16663969 ;
	setAttr ".tk[305]" -type "float3" 0.02093878 -0.096470676 -0.11876402 ;
	setAttr ".tk[306]" -type "float3" 0.001565692 -0.15035477 -0.10558143 ;
	setAttr ".tk[307]" -type "float3" -0.020938743 -0.096470676 -0.1187641 ;
	setAttr ".tk[308]" -type "float3" -0.039470442 -0.096470676 -0.1666398 ;
	setAttr ".tk[309]" -type "float3" -0.020096784 0.064374983 -0.13787901 ;
	setAttr ".tk[310]" -type "float3" 0.028649224 0.17436728 -0.088269971 ;
	setAttr ".tk[311]" -type "float3" 0.072065502 0.17436728 0.012072735 ;
	setAttr ".tk[312]" -type "float3" 0.027185395 0.17436728 0.033746842 ;
	setAttr ".tk[313]" -type "float3" -0.025448844 -0.11609432 0.059636194 ;
	setAttr ".tk[314]" -type "float3" 0.0015655291 -0.13680522 0.068591498 ;
	setAttr ".tk[315]" -type "float3" 0.025448835 -0.11609432 0.059636228 ;
	setAttr ".tk[316]" -type "float3" -0.024093201 0.17436728 0.033746842 ;
	setAttr ".tk[317]" -type "float3" -0.072065473 0.17436728 0.012072396 ;
	setAttr ".tk[318]" -type "float3" -0.025557101 0.17436728 -0.088269979 ;
	setAttr ".tk[319]" -type "float3" 0.020096788 0.17436728 -0.13787913 ;
	setAttr ".tk[320]" -type "float3" 0.039470457 -0.079100877 -0.16663969 ;
	setAttr ".tk[321]" -type "float3" 0.020938771 -0.079100877 -0.11876406 ;
	setAttr ".tk[322]" -type "float3" 0.0015656468 -0.16401272 -0.10558143 ;
	setAttr ".tk[323]" -type "float3" -0.020938743 -0.079100877 -0.1187641 ;
	setAttr ".tk[324]" -type "float3" -0.039470442 -0.079100877 -0.1666397 ;
	setAttr ".tk[325]" -type "float3" -0.020096773 0.17436728 -0.13787889 ;
	setAttr ".tk[326]" -type "float3" -0.01283781 0.24600589 -0.088269971 ;
	setAttr ".tk[327]" -type "float3" 0.026680127 0.24600589 0.012072735 ;
	setAttr ".tk[328]" -type "float3" -0.012069434 0.24600589 0.033746723 ;
	setAttr ".tk[329]" -type "float3" -0.042082466 -0.11358581 0.059636194 ;
	setAttr ".tk[330]" -type "float3" 0.0015655291 -0.13922526 0.068591513 ;
	setAttr ".tk[331]" -type "float3" 0.042082462 -0.11358581 0.05963622 ;
	setAttr ".tk[332]" -type "float3" 0.014847863 0.24600589 0.033746723 ;
	setAttr ".tk[333]" -type "float3" -0.026680097 0.24600589 0.012072396 ;
	setAttr ".tk[334]" -type "float3" 0.015616255 0.24600589 -0.088269979 ;
	setAttr ".tk[335]" -type "float3" 0.053837787 0.24600589 -0.13787857 ;
	setAttr ".tk[336]" -type "float3" 0.065268666 -0.067787677 -0.16663969 ;
	setAttr ".tk[337]" -type "float3" 0.034624524 -0.067787677 -0.11876407 ;
	setAttr ".tk[338]" -type "float3" 0.0015656174 -0.17290814 -0.10558143 ;
	setAttr ".tk[339]" -type "float3" -0.034624487 -0.067787677 -0.1187641 ;
	setAttr ".tk[340]" -type "float3" -0.065268658 -0.067787677 -0.16663969 ;
	setAttr ".tk[341]" -type "float3" -0.053837791 0.24600589 -0.13787834 ;
	setAttr ".tk[342]" -type "float3" -0.020789642 0.039608106 0.054654911 ;
	setAttr ".tk[343]" -type "float3" -0.047644928 -0.019600077 0.09906406 ;
	setAttr ".tk[344]" -type "float3" 0.0015592918 -0.023821697 0.11338046 ;
	setAttr ".tk[345]" -type "float3" 0.047644898 -0.019600077 0.099064067 ;
	setAttr ".tk[346]" -type "float3" 0.023557009 0.039608106 0.054654911 ;
	setAttr ".tk[347]" -type "float3" -0.018722402 0.039608106 0.01550936 ;
	setAttr ".tk[348]" -type "float3" 0.024822928 0.039608106 -0.099799193 ;
	setAttr ".tk[349]" -type "float3" 0.063512646 0.039608106 -0.14968529 ;
	setAttr ".tk[350]" -type "float3" 0.073895887 -0.012059247 -0.16586691 ;
	setAttr ".tk[351]" -type "float3" 0.039201215 -0.012059247 -0.12218181 ;
	setAttr ".tk[352]" -type "float3" 0.0015593503 -0.029367715 -0.14604957 ;
	setAttr ".tk[353]" -type "float3" -0.039201174 -0.012059264 -0.12218195 ;
	setAttr ".tk[354]" -type "float3" -0.073895887 -0.012059264 -0.16586685 ;
	setAttr ".tk[355]" -type "float3" -0.063512653 0.039608106 -0.14968519 ;
	setAttr ".tk[356]" -type "float3" -0.022055566 0.039608106 -0.099799156 ;
	setAttr ".tk[357]" -type "float3" 0.018722402 0.039608106 0.01550965 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FCB6DC4C-4900-FCC0-5DC7-51B98413167C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 2666\n                -height 1647\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2666\n            -height 1647\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2666\\n    -height 1647\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2666\\n    -height 1647\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "65E67ED4-4B6E-D420-DB08-EDB38B92AAC4";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "4628F76C-4022-BD3A-2651-CD8E258D2E74";
	setAttr ".ics" -type "componentList" 11 "f[13:14]" "f[17:18]" "f[21:22]" "f[76:77]" "f[106:107]" "f[204]" "f[206]" "f[221:222]" "f[237:238]" "f[245:246]" "f[261:262]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5278759 -0.16134331 ;
	setAttr ".rs" 46078;
	setAttr ".lt" -type "double3" 2.9906192268707582e-017 -9.1072982488782372e-018 -0.044739596497521884 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28611111640930176 0.34290236234664917 -0.90877383947372437 ;
	setAttr ".cbx" -type "double3" 0.28611111640930176 2.7128493785858154 0.58608722686767578 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "C0E5DF79-49FD-37A8-2135-E49A264C7016";
	setAttr ".uopa" yes;
	setAttr -s 359 ".tk";
	setAttr ".tk[0]" -type "float3" 0.060367256 -0.16423862 -0.029201873 ;
	setAttr ".tk[1]" -type "float3" 0.030183636 -0.16423862 -0.030700624 ;
	setAttr ".tk[2]" -type "float3" -0.00030543128 -0.16423862 -0.030700624 ;
	setAttr ".tk[3]" -type "float3" -0.030183636 -0.16423862 -0.030700624 ;
	setAttr ".tk[4]" -type "float3" -0.060367271 -0.16423862 -0.029201843 ;
	setAttr ".tk[5]" -type "float3" 0.060367256 -0.16950209 -0.029201873 ;
	setAttr ".tk[6]" -type "float3" 0.030183628 -0.16950209 -0.030700594 ;
	setAttr ".tk[7]" -type "float3" -0.00030543128 -0.16950209 -0.030700594 ;
	setAttr ".tk[8]" -type "float3" -0.030183632 -0.16950175 -0.030700577 ;
	setAttr ".tk[9]" -type "float3" -0.060367268 -0.16950175 -0.029201884 ;
	setAttr ".tk[10]" -type "float3" 0.080647193 -0.16950209 -0.024995014 ;
	setAttr ".tk[11]" -type "float3" -0.080647156 -0.16950175 -0.024995022 ;
	setAttr ".tk[12]" -type "float3" 0.089915484 -0.16950209 0.0051685497 ;
	setAttr ".tk[13]" -type "float3" -0.089915484 -0.16950209 0.0051685497 ;
	setAttr ".tk[14]" -type "float3" 0.098176144 -0.16950209 0.010962769 ;
	setAttr ".tk[15]" -type "float3" -0.098176144 -0.16950209 0.010962769 ;
	setAttr ".tk[16]" -type "float3" 0.096905321 -0.16950209 0.019683108 ;
	setAttr ".tk[17]" -type "float3" -0.096905321 -0.16950209 0.019683108 ;
	setAttr ".tk[18]" -type "float3" 0.085784994 -0.16950209 0.024977952 ;
	setAttr ".tk[19]" -type "float3" -0.085784994 -0.16950209 0.024977952 ;
	setAttr ".tk[20]" -type "float3" 0.059096359 -0.16950209 0.029701753 ;
	setAttr ".tk[21]" -type "float3" 0.029548179 -0.16950209 0.030700594 ;
	setAttr ".tk[22]" -type "float3" -0.00030543128 -0.16950209 0.030700594 ;
	setAttr ".tk[23]" -type "float3" -0.029548179 -0.16950209 0.030700594 ;
	setAttr ".tk[24]" -type "float3" -0.059096359 -0.16950209 0.029701753 ;
	setAttr ".tk[25]" -type "float3" 0.059096359 -0.16423862 0.029701753 ;
	setAttr ".tk[26]" -type "float3" 0.029548187 -0.16423862 0.030700624 ;
	setAttr ".tk[27]" -type "float3" -0.00030543128 -0.16423862 0.030700624 ;
	setAttr ".tk[28]" -type "float3" -0.029548187 -0.16423862 0.030700624 ;
	setAttr ".tk[29]" -type "float3" -0.059096374 -0.16423862 0.029701678 ;
	setAttr ".tk[30]" -type "float3" 0.085784994 -0.16423862 0.024977958 ;
	setAttr ".tk[31]" -type "float3" 0.018525105 -0.16687036 0 ;
	setAttr ".tk[32]" -type "float3" -0.00013191446 -0.16687036 0 ;
	setAttr ".tk[33]" -type "float3" -0.018525105 -0.16687036 0 ;
	setAttr ".tk[34]" -type "float3" -0.085785024 -0.16423862 0.024977958 ;
	setAttr ".tk[35]" -type "float3" 0.096905321 -0.16423862 0.019682989 ;
	setAttr ".tk[36]" -type "float3" 0.020926505 -0.16687036 0 ;
	setAttr ".tk[37]" -type "float3" -0.00013191446 -0.16687036 0 ;
	setAttr ".tk[38]" -type "float3" -0.020926505 -0.16687036 0 ;
	setAttr ".tk[39]" -type "float3" -0.096905336 -0.16423862 0.019682989 ;
	setAttr ".tk[40]" -type "float3" 0.098176144 -0.16423862 0.010962751 ;
	setAttr ".tk[41]" -type "float3" 0.021200953 -0.16687036 0 ;
	setAttr ".tk[42]" -type "float3" -0.00013191446 -0.16687036 0 ;
	setAttr ".tk[43]" -type "float3" -0.021200953 -0.16687036 0 ;
	setAttr ".tk[44]" -type "float3" -0.098176166 -0.16423862 0.01096274 ;
	setAttr ".tk[45]" -type "float3" 0.089915484 -0.16423862 0.0051685497 ;
	setAttr ".tk[46]" -type "float3" 0.019417057 -0.16687036 0 ;
	setAttr ".tk[47]" -type "float3" -0.00013191446 -0.16687036 0 ;
	setAttr ".tk[48]" -type "float3" -0.019417057 -0.16687036 0 ;
	setAttr ".tk[49]" -type "float3" -0.089915484 -0.16423862 0.0051685497 ;
	setAttr ".tk[50]" -type "float3" 0.080647193 -0.16423862 -0.024995014 ;
	setAttr ".tk[51]" -type "float3" 0.017415592 -0.16687036 0 ;
	setAttr ".tk[52]" -type "float3" -0.00014370694 -0.16687036 0 ;
	setAttr ".tk[53]" -type "float3" -0.017415592 -0.16687036 0 ;
	setAttr ".tk[54]" -type "float3" -0.080647185 -0.16423862 -0.024994982 ;
	setAttr ".tk[55]" -type "float3" 0.074783087 -0.16950209 -0.0077980524 ;
	setAttr ".tk[56]" -type "float3" 0.074783087 -0.16423862 -0.0077980822 ;
	setAttr ".tk[57]" -type "float3" 0.016149251 -0.16687036 0 ;
	setAttr ".tk[58]" -type "float3" -0.00013191446 -0.16687036 0 ;
	setAttr ".tk[59]" -type "float3" -0.016149251 -0.16687036 0 ;
	setAttr ".tk[60]" -type "float3" -0.074783087 -0.16423862 -0.0077980822 ;
	setAttr ".tk[61]" -type "float3" -0.074783072 -0.16950175 -0.0077980869 ;
	setAttr ".tk[62]" -type "float3" 0.07843972 -0.16950209 -0.016482309 ;
	setAttr ".tk[63]" -type "float3" 0.07843972 -0.16423862 -0.016482309 ;
	setAttr ".tk[64]" -type "float3" 0.016938895 -0.16687036 0 ;
	setAttr ".tk[65]" -type "float3" -0.00013191446 -0.16687036 0 ;
	setAttr ".tk[66]" -type "float3" -0.016938895 -0.16687036 0 ;
	setAttr ".tk[67]" -type "float3" -0.078439713 -0.16423862 -0.016482316 ;
	setAttr ".tk[68]" -type "float3" -0.078439683 -0.16950175 -0.016482322 ;
	setAttr ".tk[69]" -type "float3" 0.081157163 -0.16950209 -0.021407403 ;
	setAttr ".tk[70]" -type "float3" 0.079661146 -0.16423862 -0.021407403 ;
	setAttr ".tk[71]" -type "float3" 0.017202659 -0.16687036 0 ;
	setAttr ".tk[72]" -type "float3" -0.00013191446 -0.16687036 0 ;
	setAttr ".tk[73]" -type "float3" -0.017202659 -0.16687036 0 ;
	setAttr ".tk[74]" -type "float3" -0.079661161 -0.16423862 -0.021407418 ;
	setAttr ".tk[75]" -type "float3" -0.079661183 -0.16950175 -0.021407399 ;
	setAttr ".tk[76]" -type "float3" 0.079252228 -0.16950209 -0.00080999738 ;
	setAttr ".tk[77]" -type "float3" 0.079252228 -0.16423862 -0.00080998882 ;
	setAttr ".tk[78]" -type "float3" 0.017114356 -0.16687036 0 ;
	setAttr ".tk[79]" -type "float3" -0.00013191446 -0.16687036 0 ;
	setAttr ".tk[80]" -type "float3" -0.017114356 -0.16687036 0 ;
	setAttr ".tk[81]" -type "float3" -0.079252228 -0.16423862 -0.00080998882 ;
	setAttr ".tk[82]" -type "float3" -0.079252265 -0.16950175 -0.0008100234 ;
	setAttr ".tk[83]" -type "float3" 0.052446771 -0.1661555 -0.02908992 ;
	setAttr ".tk[84]" -type "float3" 0.027128296 -0.1661555 -0.030427111 ;
	setAttr ".tk[85]" -type "float3" 0.075496681 -0.1661555 -0.024995014 ;
	setAttr ".tk[86]" -type "float3" -0.00030543128 -0.16615549 -0.030318307 ;
	setAttr ".tk[87]" -type "float3" -0.027128305 -0.16615561 -0.0304271 ;
	setAttr ".tk[88]" -type "float3" -0.052446842 -0.16615561 -0.029089916 ;
	setAttr ".tk[89]" -type "float3" -0.075496741 -0.16615561 -0.024995022 ;
	setAttr ".tk[90]" -type "float3" 0.075810954 -0.1661555 -0.021410212 ;
	setAttr ".tk[91]" -type "float3" -0.068478182 -0.16615561 -0.02141021 ;
	setAttr ".tk[92]" -type "float3" 0.087186314 -0.1661555 0.0051723085 ;
	setAttr ".tk[93]" -type "float3" 0.095025279 -0.1661555 0.01105374 ;
	setAttr ".tk[94]" -type "float3" -0.087186314 -0.1661555 0.0051723085 ;
	setAttr ".tk[95]" -type "float3" -0.095025279 -0.1661555 0.01105374 ;
	setAttr ".tk[96]" -type "float3" 0.093793452 -0.1661555 0.019574665 ;
	setAttr ".tk[97]" -type "float3" -0.093793452 -0.1661555 0.019574665 ;
	setAttr ".tk[98]" -type "float3" 0.082917646 -0.1661555 0.024959058 ;
	setAttr ".tk[99]" -type "float3" -0.082917646 -0.1661555 0.024959058 ;
	setAttr ".tk[100]" -type "float3" 0.030418333 -0.1661555 0.030316368 ;
	setAttr ".tk[101]" -type "float3" 0.058603808 -0.1661555 0.029424518 ;
	setAttr ".tk[102]" -type "float3" -0.00030543128 -0.1661555 0.030329064 ;
	setAttr ".tk[103]" -type "float3" -0.030418333 -0.1661555 0.030316368 ;
	setAttr ".tk[104]" -type "float3" -0.058603808 -0.1661555 0.029424518 ;
	setAttr ".tk[105]" -type "float3" 0.070786655 -0.1661555 -0.0078440467 ;
	setAttr ".tk[106]" -type "float3" 0.077029847 -0.1661555 -0.0008323557 ;
	setAttr ".tk[107]" -type "float3" -0.070786566 -0.16615561 -0.0078440458 ;
	setAttr ".tk[108]" -type "float3" -0.077029869 -0.16615561 -0.00083241984 ;
	setAttr ".tk[109]" -type "float3" 0.074193135 -0.1661555 -0.016482309 ;
	setAttr ".tk[110]" -type "float3" -0.06751164 -0.16615561 -0.016482322 ;
	setAttr ".tk[111]" -type "float3" -0.035560586 0.058165777 0.055702817 ;
	setAttr ".tk[112]" -type "float3" -0.018173467 0.058165777 0.069604062 ;
	setAttr ".tk[113]" -type "float3" -0.055983275 0.058165777 0.037002917 ;
	setAttr ".tk[114]" -type "float3" 0.00022828983 0.058165777 0.071433395 ;
	setAttr ".tk[115]" -type "float3" 0.019086672 0.058165777 0.069604062 ;
	setAttr ".tk[116]" -type "float3" 0.036473844 0.058165777 0.055702817 ;
	setAttr ".tk[117]" -type "float3" 0.056051027 0.058165777 0.037002917 ;
	setAttr ".tk[118]" -type "float3" -0.057558052 0.058165777 0.016561659 ;
	setAttr ".tk[119]" -type "float3" 0.058839086 0.058165777 0.016561659 ;
	setAttr ".tk[140]" -type "float3" 0 0 -0.018225837 ;
	setAttr ".tk[142]" -type "float3" 0 0 -0.038652521 ;
	setAttr ".tk[143]" -type "float3" 0 0 -0.018225837 ;
	setAttr ".tk[146]" -type "float3" -0.054240651 0.09442699 0.098215833 ;
	setAttr ".tk[149]" -type "float3" 0.055521686 0.09442699 0.091903538 ;
	setAttr ".tk[150]" -type "float3" 0.024183005 -0.0035224338 -0.06664139 ;
	setAttr ".tk[151]" -type "float3" 3.7252903e-009 -2.9802322e-008 -4.8428774e-008 ;
	setAttr ".tk[154]" -type "float3" 0 0.041922547 0 ;
	setAttr ".tk[155]" -type "float3" -0.063388519 0.058165777 -0.0025822155 ;
	setAttr ".tk[156]" -type "float3" 0.058901466 0.058165777 -0.0025822155 ;
	setAttr ".tk[157]" -type "float3" -0.024372634 0.065441974 0.039685488 ;
	setAttr ".tk[158]" -type "float3" -0.012929486 0.07277403 0.042202711 ;
	setAttr ".tk[159]" -type "float3" -0.017201798 0.072773553 0.034152925 ;
	setAttr ".tk[160]" -type "float3" -0.031876389 0.06544175 0.034152921 ;
	setAttr ".tk[161]" -type "float3" 0.00020987264 0.075197138 0.044093508 ;
	setAttr ".tk[162]" -type "float3" 0.00022863432 0.075197302 0.034152925 ;
	setAttr ".tk[163]" -type "float3" 0.01292947 0.07277403 0.042202711 ;
	setAttr ".tk[164]" -type "float3" 0.017201781 0.072774015 0.034152925 ;
	setAttr ".tk[165]" -type "float3" 0.024372617 0.065441974 0.039685488 ;
	setAttr ".tk[166]" -type "float3" 0.031876389 0.06544175 0.034152921 ;
	setAttr ".tk[167]" -type "float3" -0.016991459 0.072773553 0.0068161492 ;
	setAttr ".tk[168]" -type "float3" -0.038838983 0.06544175 0.0066085556 ;
	setAttr ".tk[169]" -type "float3" 0.00020987264 0.075197123 0.0068161492 ;
	setAttr ".tk[170]" -type "float3" 0.016991459 0.072773553 0.0068161492 ;
	setAttr ".tk[171]" -type "float3" 0.03925347 0.06544175 0.0066085556 ;
	setAttr ".tk[172]" -type "float3" -0.016730938 0.072773553 -0.0022392354 ;
	setAttr ".tk[173]" -type "float3" -0.042877305 0.06544175 -0.0022392354 ;
	setAttr ".tk[174]" -type "float3" -0.015714416 0.072774179 -0.035472114 ;
	setAttr ".tk[175]" -type "float3" -0.036730114 0.06544175 -0.020038785 ;
	setAttr ".tk[176]" -type "float3" 0.042877298 0.06544175 -0.0022392354 ;
	setAttr ".tk[177]" -type "float3" 0.016730934 0.072773553 -0.0022392354 ;
	setAttr ".tk[178]" -type "float3" 0.037144657 0.06544175 -0.020038785 ;
	setAttr ".tk[179]" -type "float3" 0.015714418 0.072774179 -0.035472114 ;
	setAttr ".tk[180]" -type "float3" 0.00020987264 0.07519675 -0.0022392354 ;
	setAttr ".tk[181]" -type "float3" 0.00020987264 0.075197287 -0.040753331 ;
	setAttr ".tk[182]" -type "float3" -0.04414843 0.32114112 0.055017032 ;
	setAttr ".tk[183]" -type "float3" -0.02283602 0.32114112 0.070613541 ;
	setAttr ".tk[184]" -type "float3" -0.022653738 0.318883 0.068229795 ;
	setAttr ".tk[185]" -type "float3" -0.04270317 0.318883 0.05342279 ;
	setAttr ".tk[186]" -type "float3" -0.058283959 0.32114112 0.037002873 ;
	setAttr ".tk[187]" -type "float3" -0.055850469 0.318883 0.037002821 ;
	setAttr ".tk[188]" -type "float3" 0.00022828531 0.3211413 0.072666325 ;
	setAttr ".tk[189]" -type "float3" 0.00022828531 0.31888324 0.070353508 ;
	setAttr ".tk[190]" -type "float3" 0.022835977 0.32114112 0.070613995 ;
	setAttr ".tk[191]" -type "float3" 0.022653656 0.318883 0.068230212 ;
	setAttr ".tk[192]" -type "float3" 0.0441484 0.32114112 0.055017266 ;
	setAttr ".tk[193]" -type "float3" 0.042703133 0.318883 0.053423021 ;
	setAttr ".tk[194]" -type "float3" 0.058283951 0.32114112 0.037002873 ;
	setAttr ".tk[195]" -type "float3" 0.055850476 0.318883 0.037002821 ;
	setAttr ".tk[196]" -type "float3" -0.071112029 0.32114112 0.016503209 ;
	setAttr ".tk[197]" -type "float3" -0.068187252 0.318883 0.016122578 ;
	setAttr ".tk[198]" -type "float3" 0.071562856 0.32114112 0.016503161 ;
	setAttr ".tk[199]" -type "float3" 0.068638176 0.318883 0.016122533 ;
	setAttr ".tk[200]" -type "float3" -0.027947638 0.32114112 -0.066641606 ;
	setAttr ".tk[201]" -type "float3" -0.067045547 0.32114112 -0.032295223 ;
	setAttr ".tk[202]" -type "float3" -0.064492278 0.318883 -0.029830484 ;
	setAttr ".tk[203]" -type "float3" -0.027533133 0.318883 -0.063162029 ;
	setAttr ".tk[204]" -type "float3" -0.078258671 0.32114112 -0.0025822308 ;
	setAttr ".tk[205]" -type "float3" -0.075124986 0.318883 -0.002582246 ;
	setAttr ".tk[206]" -type "float3" 0.078258671 0.32114112 -0.0025822308 ;
	setAttr ".tk[207]" -type "float3" 0.067496546 0.32114112 -0.032295223 ;
	setAttr ".tk[208]" -type "float3" 0.064943194 0.318883 -0.029830484 ;
	setAttr ".tk[209]" -type "float3" 0.075124986 0.318883 -0.002582246 ;
	setAttr ".tk[210]" -type "float3" 0.027947636 0.32114112 -0.066641398 ;
	setAttr ".tk[211]" -type "float3" 0.027533161 0.318883 -0.063161835 ;
	setAttr ".tk[212]" -type "float3" 0.00022828531 0.3211413 -0.076047547 ;
	setAttr ".tk[213]" -type "float3" 0.00022828531 0.31888324 -0.072415061 ;
	setAttr ".tk[214]" -type "float3" 0.038333926 0.28494716 0.048758496 ;
	setAttr ".tk[215]" -type "float3" 0.019828374 0.28494716 0.063660555 ;
	setAttr ".tk[216]" -type "float3" 0.00022828531 0.28540957 0.065703347 ;
	setAttr ".tk[217]" -type "float3" -0.019828422 0.28494716 0.063660309 ;
	setAttr ".tk[218]" -type "float3" -0.03833393 0.28494722 0.048758324 ;
	setAttr ".tk[219]" -type "float3" -0.050607797 0.28401232 0.037002813 ;
	setAttr ".tk[220]" -type "float3" -0.061716568 0.28401232 0.014233429 ;
	setAttr ".tk[221]" -type "float3" -0.067951724 0.28401232 -0.0025822308 ;
	setAttr ".tk[222]" -type "float3" -0.058185827 0.28257108 -0.030323189 ;
	setAttr ".tk[223]" -type "float3" -0.024266817 0.28644031 -0.060533002 ;
	setAttr ".tk[224]" -type "float3" 0.00022828531 0.28727639 -0.069084644 ;
	setAttr ".tk[225]" -type "float3" 0.024266852 0.28644031 -0.060532846 ;
	setAttr ".tk[226]" -type "float3" 0.058636691 0.28257108 -0.030323189 ;
	setAttr ".tk[227]" -type "float3" 0.067951731 0.28233278 -0.0025822308 ;
	setAttr ".tk[228]" -type "float3" 0.062167428 0.28233278 0.014233389 ;
	setAttr ".tk[229]" -type "float3" 0.050607793 0.28233278 0.037002783 ;
	setAttr ".tk[230]" -type "float3" 0.033711109 0.18690012 0.042674597 ;
	setAttr ".tk[231]" -type "float3" 0.017437199 0.18690012 0.055779666 ;
	setAttr ".tk[232]" -type "float3" 0.00020075573 0.18690015 0.057576172 ;
	setAttr ".tk[233]" -type "float3" -0.017437248 0.18690015 0.055779554 ;
	setAttr ".tk[234]" -type "float3" -0.033711124 0.18690015 0.042674549 ;
	setAttr ".tk[235]" -type "float3" -0.044504836 0.18690009 0.032336634 ;
	setAttr ".tk[236]" -type "float3" -0.054273993 0.18690009 0.012313087 ;
	setAttr ".tk[237]" -type "float3" -0.059757169 0.18690009 -0.0024747022 ;
	setAttr ".tk[238]" -type "float3" -0.051168986 0.18690003 -0.026436949 ;
	setAttr ".tk[239]" -type "float3" -0.021340417 0.18690017 -0.053436927 ;
	setAttr ".tk[240]" -type "float3" 0.00020075573 0.1869002 -0.060957387 ;
	setAttr ".tk[241]" -type "float3" 0.021340435 0.18690017 -0.053436857 ;
	setAttr ".tk[242]" -type "float3" 0.051565491 0.18690003 -0.026436949 ;
	setAttr ".tk[243]" -type "float3" 0.059757166 0.18690003 -0.0024747022 ;
	setAttr ".tk[244]" -type "float3" 0.054670453 0.18690003 0.012313087 ;
	setAttr ".tk[245]" -type "float3" 0.044504836 0.18690003 0.032336634 ;
	setAttr ".tk[246]" -type "float3" -0.047033068 0.13238129 -0.027261233 ;
	setAttr ".tk[247]" -type "float3" -0.021673257 0.13238145 -0.054186434 ;
	setAttr ".tk[248]" -type "float3" 0.00020926764 0.23488893 -0.061855264 ;
	setAttr ".tk[249]" -type "float3" 0.021673258 0.13238145 -0.054186407 ;
	setAttr ".tk[250]" -type "float3" 0.047382757 0.13238129 -0.027261233 ;
	setAttr ".tk[251]" -type "float3" 0.060689118 0.13238129 -0.0022829571 ;
	setAttr ".tk[252]" -type "float3" 0.055496566 0.13238129 0.012678665 ;
	setAttr ".tk[253]" -type "float3" 0.045198895 0.13238129 0.034004476 ;
	setAttr ".tk[254]" -type "float3" 0.034236848 0.13238136 0.048482761 ;
	setAttr ".tk[255]" -type "float3" 0.017709142 0.13238136 0.062004779 ;
	setAttr ".tk[256]" -type "float3" 0.00020926764 0.13238138 0.063875593 ;
	setAttr ".tk[257]" -type "float3" -0.017709186 0.13238136 0.062004786 ;
	setAttr ".tk[258]" -type "float3" -0.03423686 0.13238136 0.048482709 ;
	setAttr ".tk[259]" -type "float3" -0.045198895 0.13238131 0.034004476 ;
	setAttr ".tk[260]" -type "float3" -0.05514688 0.13238131 0.012678665 ;
	setAttr ".tk[261]" -type "float3" -0.060689144 0.13238131 -0.0022829571 ;
	setAttr ".tk[262]" -type "float3" -0.051168986 0.23139495 -0.026436968 ;
	setAttr ".tk[263]" -type "float3" -0.021340419 0.23139507 -0.053436939 ;
	setAttr ".tk[264]" -type "float3" 0.00020075573 0.23139507 -0.060957387 ;
	setAttr ".tk[265]" -type "float3" 0.021340435 0.23139507 -0.053436857 ;
	setAttr ".tk[266]" -type "float3" 0.051565491 0.23139495 -0.026436968 ;
	setAttr ".tk[267]" -type "float3" 0.059757166 0.23139495 -0.0024747022 ;
	setAttr ".tk[268]" -type "float3" 0.054670461 0.23139495 0.012313063 ;
	setAttr ".tk[269]" -type "float3" 0.044504836 0.23139495 0.032336634 ;
	setAttr ".tk[270]" -type "float3" 0.03371112 0.23139504 0.042674653 ;
	setAttr ".tk[271]" -type "float3" 0.017437199 0.23139504 0.055779666 ;
	setAttr ".tk[272]" -type "float3" 0.00020075573 0.23139507 0.057576146 ;
	setAttr ".tk[273]" -type "float3" -0.017437251 0.23139504 0.055779494 ;
	setAttr ".tk[274]" -type "float3" -0.03371112 0.23139504 0.042674549 ;
	setAttr ".tk[275]" -type "float3" -0.044504836 0.23139504 0.03233663 ;
	setAttr ".tk[276]" -type "float3" -0.054273993 0.23139504 0.012313087 ;
	setAttr ".tk[277]" -type "float3" -0.059757169 0.23139504 -0.0024747022 ;
	setAttr ".tk[278]" -type "float3" 0.065230824 0.28042299 -0.0025822308 ;
	setAttr ".tk[279]" -type "float3" 0.056419641 0.28042299 -0.028351646 ;
	setAttr ".tk[280]" -type "float3" 0.023906928 0.29013568 -0.057368431 ;
	setAttr ".tk[281]" -type "float3" 0.00022828531 0.29082859 -0.065781087 ;
	setAttr ".tk[282]" -type "float3" -0.023906909 0.29013568 -0.057368495 ;
	setAttr ".tk[283]" -type "float3" -0.055968728 0.28042299 -0.028351646 ;
	setAttr ".tk[284]" -type "float3" -0.065230824 0.28042299 -0.002582246 ;
	setAttr ".tk[285]" -type "float3" -0.059177004 0.28042299 0.013888288 ;
	setAttr ".tk[286]" -type "float3" -0.048494749 0.28042299 0.037002783 ;
	setAttr ".tk[287]" -type "float3" -0.037078965 0.28889865 0.047309771 ;
	setAttr ".tk[288]" -type "float3" -0.019670155 0.28889865 0.061493933 ;
	setAttr ".tk[289]" -type "float3" 0.00022828531 0.29173833 0.063601658 ;
	setAttr ".tk[290]" -type "float3" 0.019670106 0.28889865 0.061494295 ;
	setAttr ".tk[291]" -type "float3" 0.037078958 0.28889865 0.047309972 ;
	setAttr ".tk[292]" -type "float3" 0.048494831 0.28042299 0.037002783 ;
	setAttr ".tk[293]" -type "float3" 0.059628002 0.28042299 0.013888273 ;
	setAttr ".tk[294]" -type "float3" 0.052437212 0.23579967 0.012009562 ;
	setAttr ".tk[295]" -type "float3" 0.057364404 0.23579967 -0.0024747169 ;
	setAttr ".tk[296]" -type "float3" 0.0496158 0.23579967 -0.025136506 ;
	setAttr ".tk[297]" -type "float3" 0.021023912 0.23579988 -0.050654091 ;
	setAttr ".tk[298]" -type "float3" 0.00020075573 0.23579991 -0.05805229 ;
	setAttr ".tk[299]" -type "float3" -0.021023912 0.23579988 -0.050654132 ;
	setAttr ".tk[300]" -type "float3" -0.049219247 0.23579967 -0.025136506 ;
	setAttr ".tk[301]" -type "float3" -0.057364408 0.23579967 -0.0024747022 ;
	setAttr ".tk[302]" -type "float3" -0.052040659 0.23579967 0.01200959 ;
	setAttr ".tk[303]" -type "float3" -0.042646617 0.23579967 0.03233663 ;
	setAttr ".tk[304]" -type "float3" -0.032607492 0.23579988 0.041400675 ;
	setAttr ".tk[305]" -type "float3" -0.017298058 0.23579988 0.053874318 ;
	setAttr ".tk[306]" -type "float3" 0.00020075573 0.23579991 0.055727929 ;
	setAttr ".tk[307]" -type "float3" 0.01729802 0.23579988 0.053874552 ;
	setAttr ".tk[308]" -type "float3" 0.032607488 0.23579988 0.041400824 ;
	setAttr ".tk[309]" -type "float3" 0.042646654 0.23579967 0.03233663 ;
	setAttr ".tk[310]" -type "float3" 0.052437212 0.19600733 0.012009562 ;
	setAttr ".tk[311]" -type "float3" 0.057364404 0.19600733 -0.0024747169 ;
	setAttr ".tk[312]" -type "float3" 0.0496158 0.19600733 -0.025136527 ;
	setAttr ".tk[313]" -type "float3" 0.021023912 0.19600768 -0.050654091 ;
	setAttr ".tk[314]" -type "float3" 0.00020075573 0.19600771 -0.058052287 ;
	setAttr ".tk[315]" -type "float3" -0.021023916 0.19600768 -0.050654098 ;
	setAttr ".tk[316]" -type "float3" -0.049219273 0.19600733 -0.025136527 ;
	setAttr ".tk[317]" -type "float3" -0.057364408 0.19600733 -0.0024747022 ;
	setAttr ".tk[318]" -type "float3" -0.052040659 0.19600733 0.01200959 ;
	setAttr ".tk[319]" -type "float3" -0.042646658 0.19600733 0.03233663 ;
	setAttr ".tk[320]" -type "float3" -0.032607492 0.19600768 0.041400675 ;
	setAttr ".tk[321]" -type "float3" -0.017298052 0.19600768 0.05387437 ;
	setAttr ".tk[322]" -type "float3" 0.00020075573 0.1960078 0.055727929 ;
	setAttr ".tk[323]" -type "float3" 0.01729802 0.19600768 0.053874563 ;
	setAttr ".tk[324]" -type "float3" 0.032607485 0.19600768 0.041400824 ;
	setAttr ".tk[325]" -type "float3" 0.042646628 0.19600733 0.03233663 ;
	setAttr ".tk[326]" -type "float3" 0.047117021 0.1700905 0.012009562 ;
	setAttr ".tk[327]" -type "float3" 0.051544305 0.1700905 -0.0024747169 ;
	setAttr ".tk[328]" -type "float3" 0.044581875 0.1700905 -0.025136527 ;
	setAttr ".tk[329]" -type "float3" 0.018890869 0.17009091 -0.050654091 ;
	setAttr ".tk[330]" -type "float3" 0.00020075573 0.17009097 -0.058052283 ;
	setAttr ".tk[331]" -type "float3" -0.018890869 0.17009091 -0.050654095 ;
	setAttr ".tk[332]" -type "float3" -0.044225618 0.1700905 -0.025136527 ;
	setAttr ".tk[333]" -type "float3" -0.051544305 0.1700905 -0.0024747022 ;
	setAttr ".tk[334]" -type "float3" -0.046760768 0.1700905 0.01200959 ;
	setAttr ".tk[335]" -type "float3" -0.038319804 0.1700905 0.032336649 ;
	setAttr ".tk[336]" -type "float3" -0.029299216 0.17009088 0.04140069 ;
	setAttr ".tk[337]" -type "float3" -0.015543027 0.17009088 0.053874504 ;
	setAttr ".tk[338]" -type "float3" 0.00020075573 0.17009102 0.055727929 ;
	setAttr ".tk[339]" -type "float3" 0.015542976 0.17009088 0.053874563 ;
	setAttr ".tk[340]" -type "float3" 0.029299216 0.17009088 0.04140079 ;
	setAttr ".tk[341]" -type "float3" 0.0383198 0.1700905 0.032336649 ;
	setAttr ".tk[342]" -type "float3" 0.04581723 0.10807014 -0.023465961 ;
	setAttr ".tk[343]" -type "float3" 0.019416714 0.15556933 -0.047577746 ;
	setAttr ".tk[344]" -type "float3" 0.00019995573 0.1589561 -0.054575603 ;
	setAttr ".tk[345]" -type "float3" -0.019416718 0.15556933 -0.04757775 ;
	setAttr ".tk[346]" -type "float3" -0.045462366 0.10807014 -0.023465961 ;
	setAttr ".tk[347]" -type "float3" -0.052979123 0.10807014 -0.0021896586 ;
	setAttr ".tk[348]" -type "float3" -0.048068065 0.10807014 0.011294614 ;
	setAttr ".tk[349]" -type "float3" -0.039386481 0.10807014 0.032482985 ;
	setAttr ".tk[350]" -type "float3" -0.030114787 0.14951976 0.043588746 ;
	setAttr ".tk[351]" -type "float3" -0.01597568 0.14951976 0.055738039 ;
	setAttr ".tk[352]" -type "float3" 0.00019995573 0.16340534 0.052845687 ;
	setAttr ".tk[353]" -type "float3" 0.015975643 0.14951979 0.055738058 ;
	setAttr ".tk[354]" -type "float3" 0.030114772 0.14951979 0.043588821 ;
	setAttr ".tk[355]" -type "float3" 0.039386481 0.10807014 0.032482985 ;
	setAttr ".tk[356]" -type "float3" 0.048422925 0.10807014 0.011294611 ;
	setAttr ".tk[357]" -type "float3" 0.052979119 0.10807014 -0.0021896586 ;
	setAttr ".tk[358]" -type "float3" 0 0.00073795812 0 ;
	setAttr ".tk[359]" -type "float3" 0 0.00073795812 0 ;
	setAttr ".tk[360]" -type "float3" 0 0.00073795067 0 ;
	setAttr ".tk[361]" -type "float3" 0 0.00073795067 0 ;
	setAttr ".tk[362]" -type "float3" 0 0.00073795812 0 ;
	setAttr ".tk[363]" -type "float3" 0 0.00073795812 0 ;
	setAttr ".tk[364]" -type "float3" 0 -0.0080493223 -0.047499545 ;
	setAttr ".tk[365]" -type "float3" 0 -0.010475106 -0.085756525 ;
	setAttr ".tk[366]" -type "float3" 0 -0.0080493223 -0.047499545 ;
	setAttr ".tk[367]" -type "float3" 0 0.00073795812 0 ;
	setAttr ".tk[368]" -type "float3" 0 0.00073795812 0 ;
	setAttr ".tk[369]" -type "float3" 0 0.00073795067 0 ;
	setAttr ".tk[370]" -type "float3" 0 0.00073795067 0 ;
	setAttr ".tk[371]" -type "float3" 0 0.00073795812 0 ;
	setAttr ".tk[372]" -type "float3" 7.4505806e-009 0.0007379055 -4.8428774e-008 ;
	setAttr ".tk[373]" -type "float3" 1.4901161e-008 -0.070042536 -2.6077032e-008 ;
	setAttr ".tk[374]" -type "float3" 0.051704556 -0.0083840499 -0.0025822308 ;
	setAttr ".tk[375]" -type "float3" 0.052311424 -0.0083840499 0.02426634 ;
	setAttr ".tk[376]" -type "float3" 0.056373063 -0.0083840499 0.044757426 ;
	setAttr ".tk[377]" -type "float3" 0.038798541 -0.0083840499 0.067478083 ;
	setAttr ".tk[378]" -type "float3" 0.020101193 -0.0083840499 0.076047495 ;
	setAttr ".tk[379]" -type "float3" 0.00022828602 -0.008384035 0.07578557 ;
	setAttr ".tk[380]" -type "float3" -0.019966567 -0.0083840499 0.076047495 ;
	setAttr ".tk[381]" -type "float3" -0.038663853 -0.0083840499 0.067478083 ;
	setAttr ".tk[382]" -type "float3" -0.056363009 -0.0083840499 0.044757426 ;
	setAttr ".tk[383]" -type "float3" -0.056795508 -0.0083840499 0.02426634 ;
	setAttr ".tk[384]" -type "float3" -0.056623805 -0.0083840499 -0.0025822308 ;
	setAttr ".tk[385]" -type "float3" -1.4901161e-008 -0.070042536 -3.7252903e-009 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "49AAD38E-4E68-843D-98A1-D0925A3B57D8";
	setAttr ".uopa" yes;
	setAttr -s 35 ".tk";
	setAttr ".tk[198]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[206]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[208]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[224]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[225]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[246]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[247]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[271]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[272]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[273]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[288]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[289]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[290]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[304]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[305]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[306]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[320]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[321]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[322]" -type "float3" 0 0 0.069496952 ;
	setAttr ".tk[331]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".tk[332]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".tk[334]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[335]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[336]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[345]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".tk[346]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".tk[395]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[396]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[399]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[401]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[402]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[403]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[405]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[408]" -type "float3" 0 0 2.9802322e-008 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "A479B49F-44BE-CC73-5078-67A87C75EE37";
	setAttr ".dc" -type "componentList" 1 "f[177]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "40BC34DA-4BF7-1F9C-60B7-3AAAE6E4687E";
	setAttr ".dc" -type "componentList" 1 "f[176]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "47ADAA84-4830-9EFA-DB5C-7F8A85BC3A4A";
	setAttr ".dc" -type "componentList" 1 "f[397]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "EC280BCA-4D9A-5979-E8C2-138269C1EDE3";
	setAttr ".dc" -type "componentList" 1 "f[397]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "0D688C79-4746-3760-7FCA-5796DCD4FEB6";
	setAttr ".ics" -type "componentList" 6 "e[379]" "e[396]" "e[399:400]" "e[786]" "e[788]" "e[792:793]";
createNode polySplit -n "polySplit1";
	rename -uid "B43FBD6E-4763-5180-8148-7F82E7481BB0";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147482860 -2147483248;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "6B7FB46E-44AD-B395-B6D1-94B0C61726BC";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147482856 -2147483249;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "58A3ABD7-43C7-29B1-6A8C-DCBE5C62118D";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147482862 -2147483269;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "FD93C27F-48D9-2C97-7A0D-BEB9F4B72F3B";
	setAttr ".ics" -type "componentList" 1 "f[405:406]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.3411045e-007 2.7072551 0.49936321 ;
	setAttr ".rs" 61369;
	setAttr ".lt" -type "double3" -3.8163916471489756e-017 0.19248914463166911 0.17069767117812931 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.2422378808259964 2.6929807662963867 0.42870312929153442 ;
	setAttr ".cbx" -type "double3" 0.24223814904689789 2.721529483795166 0.5700232982635498 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "4995317A-4D5B-363C-449C-5D833C2E1F56";
	setAttr ".ics" -type "componentList" 4 "f[276:277]" "f[293:294]" "f[408]" "f[411]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0 0.044377636381694674 ;
	setAttr ".pvt" -type "float3" 1.3411045e-007 2.4161308 0.58008975 ;
	setAttr ".rs" 43917;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.2422378808259964 1.9620107412338257 0.39135688543319702 ;
	setAttr ".cbx" -type "double3" 0.24223814904689789 2.8702507019042969 0.68006742000579834 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "0873755E-4858-983B-CA15-7B8443558D95";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[198]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[207]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[271]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[272]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[409]" -type "float3" -9.3132257e-010 -0.059489425 0 ;
	setAttr ".tk[410]" -type "float3" -9.3132257e-010 -0.098868147 0 ;
	setAttr ".tk[411]" -type "float3" 0 -0.059489425 0 ;
	setAttr ".tk[412]" -type "float3" 0 -0.098868147 0 ;
	setAttr ".tk[413]" -type "float3" 0 -0.098868147 0 ;
	setAttr ".tk[414]" -type "float3" 0 -0.098868147 0 ;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "CA701D34-40AA-FEC3-21B6-27BB5952A4EF";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "A1244CE1-4097-F6B3-E146-EAADC199DC9D";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[198]" -type "float3" -0.041158095 0 0 ;
	setAttr ".tk[206]" -type "float3" 0.044201389 0 0 ;
	setAttr ".tk[285]" -type "float3" 0 -0.20612887 0 ;
	setAttr ".tk[286]" -type "float3" 0 -0.20612887 0 ;
	setAttr ".tk[287]" -type "float3" 0 -0.20612887 0 ;
	setAttr ".tk[407]" -type "float3" 0 0.060358711 0 ;
	setAttr ".tk[408]" -type "float3" -0.041158095 0.060358711 0 ;
	setAttr ".tk[411]" -type "float3" 0.044201389 0.060358711 0 ;
	setAttr ".tk[413]" -type "float3" 0.11253512 0 0.053362343 ;
	setAttr ".tk[414]" -type "float3" 0.0010745333 0 0.053362343 ;
	setAttr ".tk[415]" -type "float3" 0.12960453 0 0.053362343 ;
	setAttr ".tk[416]" -type "float3" 0.0010745333 0 0.053362343 ;
	setAttr ".tk[417]" -type "float3" -0.11253516 0 0.053362343 ;
	setAttr ".tk[418]" -type "float3" -0.12960453 0 0.053362343 ;
	setAttr ".tk[419]" -type "float3" 0.098964132 0 0.053362343 ;
	setAttr ".tk[420]" -type "float3" 0.00094494579 0 0.053362343 ;
	setAttr ".tk[421]" -type "float3" -0.098964185 0 0.053362343 ;
	setAttr ".tk[422]" -type "float3" 0.00095616427 0 0.053362343 ;
	setAttr ".tk[423]" -type "float3" -0.11580463 0 0.053362343 ;
	setAttr ".tk[424]" -type "float3" 0.1155679 0 0.053362343 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "8BC6316A-487A-AB23-25DF-81BB8B25E648";
	setAttr ".ics" -type "componentList" 173 "e[1698]" "e[1701:1702]" "e[1705]" "e[1714]" "e[1717:1718]" "e[1721]" "e[1730]" "e[1733:1734]" "e[1737]" "e[1746]" "e[1749:1750]" "e[1753]" "e[1762]" "e[1765:1766]" "e[1769]" "e[1778]" "e[1781:1782]" "e[1785]" "e[1794]" "e[1797:1798]" "e[1801]" "e[1810]" "e[1813:1814]" "e[1817]" "e[1826]" "e[1829:1830]" "e[1833]" "e[1842]" "e[1845:1846]" "e[1849]" "e[1858]" "e[1861:1862]" "e[1865]" "e[1874]" "e[1877:1878]" "e[1881]" "e[1890]" "e[1893:1894]" "e[1897]" "e[1906]" "e[1909:1910]" "e[1913]" "e[1978]" "e[1981:1982]" "e[1985]" "e[1998]" "e[2001:2002]" "e[2005]" "e[2018]" "e[2021:2022]" "e[2025]" "e[2038]" "e[2041:2042]" "e[2045]" "e[2058]" "e[2061:2062]" "e[2065]" "e[2078]" "e[2081:2082]" "e[2085]" "e[2098]" "e[2101:2102]" "e[2105]" "e[2118]" "e[2121:2122]" "e[2125]" "e[2134]" "e[2137:2138]" "e[2141]" "e[2190]" "e[2193:2194]" "e[2197]" "e[2246]" "e[2249:2250]" "e[2253]" "e[2302]" "e[2305:2306]" "e[2309]" "e[2358]" "e[2361:2362]" "e[2365]" "e[2422]" "e[2425:2426]" "e[2429:2430]" "e[2433:2434]" "e[2437]" "e[2502]" "e[2505:2506]" "e[2509:2510]" "e[2513:2514]" "e[2517]" "e[2538]" "e[2541:2542]" "e[2545]" "e[2570]" "e[2573:2574]" "e[2577]" "e[2602]" "e[2605:2606]" "e[2609]" "e[2634]" "e[2637:2638]" "e[2641]" "e[2666]" "e[2669:2670]" "e[2673]" "e[2698]" "e[2701:2702]" "e[2705]" "e[2730]" "e[2733:2734]" "e[2737]" "e[2762]" "e[2765:2766]" "e[2769]" "e[2798]" "e[2801:2802]" "e[2805]" "e[2830]" "e[2833:2834]" "e[2837]" "e[2866]" "e[2869:2870]" "e[2873]" "e[2898]" "e[2901:2902]" "e[2905]" "e[2930]" "e[2933:2934]" "e[2937]" "e[2962]" "e[2965:2966]" "e[2969]" "e[2994]" "e[2997:2998]" "e[3001]" "e[3026]" "e[3029:3030]" "e[3033]" "e[3050]" "e[3053:3054]" "e[3057]" "e[3082]" "e[3085:3086]" "e[3089]" "e[3134]" "e[3137:3138]" "e[3141]" "e[3190]" "e[3193:3194]" "e[3197]" "e[3238]" "e[3241]" "e[3250]" "e[3253]" "e[3313]" "e[3316]" "e[3318:3319]" "e[3324]" "e[3327:3328]" "e[3331]" "e[3336]" "e[3339]" "e[3344]" "e[3347]" "e[3356]" "e[3359]" "e[3364]" "e[3367]" "e[3372]" "e[3375]" "e[3384]" "e[3387]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "7D97E569-41BC-44E1-EE22-4D8233320F2B";
	setAttr ".ics" -type "componentList" 376 "e[48:55]" "e[62:63]" "e[166:167]" "e[176:177]" "e[230:231]" "e[234:235]" "e[238]" "e[241]" "e[244:245]" "e[248:249]" "e[274:275]" "e[280:281]" "e[290:291]" "e[294:295]" "e[298:299]" "e[302:303]" "e[382:383]" "e[388:389]" "e[398:399]" "e[402:403]" "e[406:407]" "e[410:411]" "e[546:547]" "e[553]" "e[557]" "e[562:563]" "e[566:567]" "e[572]" "e[575]" "e[578:579]" "e[612:613]" "e[622:623]" "e[626:629]" "e[632:633]" "e[636:637]" "e[654:655]" "e[658:661]" "e[664:665]" "e[668:671]" "e[674:675]" "e[678:679]" "e[682:685]" "e[688:691]" "e[756:757]" "e[768:769]" "e[772:773]" "e[776:777]" "e[802:803]" "e[806:807]" "e[812:813]" "e[824:825]" "e[828:829]" "e[832:833]" "e[858:859]" "e[862:863]" "e[884:885]" "e[888:889]" "e[892:893]" "e[906:907]" "e[910:911]" "e[914:915]" "e[940:941]" "e[944:945]" "e[948:949]" "e[962:963]" "e[966:967]" "e[970:971]" "e[1000:1001]" "e[1004:1005]" "e[1008:1009]" "e[1022:1023]" "e[1026:1027]" "e[1030:1031]" "e[1036:1037]" "e[1062:1063]" "e[1066:1067]" "e[1070:1071]" "e[1084:1085]" "e[1088:1089]" "e[1094:1095]" "e[1122:1123]" "e[1126:1127]" "e[1130:1131]" "e[1144:1145]" "e[1148:1149]" "e[1154:1155]" "e[1182:1183]" "e[1186:1187]" "e[1190:1191]" "e[1204:1205]" "e[1208:1209]" "e[1234:1235]" "e[1238:1239]" "e[1242:1243]" "e[1256:1257]" "e[1260:1261]" "e[1264:1265]" "e[1338:1339]" "e[1342:1343]" "e[1346:1347]" "e[1360:1361]" "e[1364:1365]" "e[1368:1369]" "e[1580]" "e[1583]" "e[1586]" "e[1589:1590]" "e[1593]" "e[1596]" "e[1599:1610]" "e[1613]" "e[1616]" "e[1619:1620]" "e[1623]" "e[1626]" "e[1629:1630]" "e[1633]" "e[1636]" "e[1639:1640]" "e[1643]" "e[1646]" "e[1649:1650]" "e[1653]" "e[1656]" "e[1659:1660]" "e[1663]" "e[1666]" "e[1669:1670]" "e[1673]" "e[1676]" "e[1679:1680]" "e[1683]" "e[1686]" "e[1689:1690]" "e[1693]" "e[1696]" "e[1699:1710]" "e[1713]" "e[1716]" "e[1719]" "e[1736]" "e[1739]" "e[1760]" "e[1763]" "e[1768]" "e[1771]" "e[1776]" "e[1779]" "e[1782]" "e[1785]" "e[1790]" "e[1793]" "e[1796:1800]" "e[1803:1813]" "e[1815:1816]" "e[1818:1828]" "e[1831:1841]" "e[1843:1844]" "e[1846:1852]" "e[1855]" "e[1860]" "e[1863]" "e[1866]" "e[1869]" "e[1874]" "e[1877]" "e[1880]" "e[1883]" "e[1890]" "e[1893]" "e[1898]" "e[1901:1902]" "e[1905]" "e[1930]" "e[1933]" "e[1944]" "e[1947]" "e[1956]" "e[1959:1960]" "e[1963:1964]" "e[1967:1968]" "e[1971]" "e[1980]" "e[1983]" "e[1990]" "e[1993]" "e[1998]" "e[2001:2002]" "e[2005]" "e[2030]" "e[2033]" "e[2044]" "e[2047]" "e[2056]" "e[2059:2060]" "e[2063:2064]" "e[2067:2068]" "e[2071]" "e[2080]" "e[2083]" "e[2090]" "e[2093]" "e[2098]" "e[2101:2102]" "e[2105:2106]" "e[2109:2110]" "e[2113:2114]" "e[2117:2118]" "e[2121:2122]" "e[2125:2126]" "e[2129:2130]" "e[2133:2134]" "e[2137]" "e[2150]" "e[2153:2154]" "e[2157]" "e[2166]" "e[2169:2170]" "e[2173:2174]" "e[2177:2178]" "e[2181:2182]" "e[2185:2186]" "e[2189:2190]" "e[2193:2194]" "e[2197:2198]" "e[2201:2202]" "e[2205:2206]" "e[2209:2210]" "e[2213]" "e[2218]" "e[2221:2222]" "e[2225:2226]" "e[2229:2230]" "e[2233:2234]" "e[2237]" "e[2240]" "e[2243]" "e[2248]" "e[2251:2252]" "e[2255:2256]" "e[2259:2260]" "e[2263]" "e[2266]" "e[2269:2270]" "e[2273:2274]" "e[2277:2278]" "e[2281]" "e[2286]" "e[2289]" "e[2292]" "e[2295]" "e[2300]" "e[2303:2304]" "e[2307:2308]" "e[2311:2312]" "e[2315]" "e[2318]" "e[2321:2322]" "e[2325:2326]" "e[2329:2330]" "e[2333]" "e[2338]" "e[2341]" "e[2344]" "e[2347:2348]" "e[2351:2352]" "e[2355:2356]" "e[2359]" "e[2364]" "e[2367]" "e[2370]" "e[2373]" "e[2378]" "e[2381:2382]" "e[2385:2386]" "e[2389:2390]" "e[2393]" "e[2396]" "e[2399:2400]" "e[2403:2404]" "e[2407:2408]" "e[2411]" "e[2416]" "e[2419]" "e[2422]" "e[2425]" "e[2430]" "e[2433:2434]" "e[2437:2438]" "e[2441:2442]" "e[2445:2446]" "e[2449]" "e[2452]" "e[2455:2456]" "e[2459:2460]" "e[2463:2464]" "e[2467]" "e[2472]" "e[2475]" "e[2478]" "e[2481]" "e[2486]" "e[2489:2490]" "e[2493:2494]" "e[2497:2498]" "e[2501:2502]" "e[2505]" "e[2508]" "e[2511:2512]" "e[2515:2516]" "e[2519:2520]" "e[2523]" "e[2528]" "e[2531]" "e[2534]" "e[2537]" "e[2542]" "e[2545:2546]" "e[2549:2550]" "e[2553:2554]" "e[2557]" "e[2560]" "e[2563:2564]" "e[2567:2568]" "e[2571:2572]" "e[2575]" "e[2580]" "e[2583]" "e[2586]" "e[2589]" "e[2594]" "e[2597:2598]" "e[2601:2602]" "e[2605:2606]" "e[2609]" "e[2612]" "e[2615:2616]" "e[2619:2620]" "e[2623:2624]" "e[2627]" "e[2632]" "e[2635]" "e[2638]" "e[2641]" "e[2646]" "e[2649:2650]" "e[2653]" "e[2656]" "e[2659:2660]" "e[2663:2664]" "e[2667:2668]" "e[2671]" "e[2676]" "e[2679]" "e[2682]" "e[2685]" "e[2690]" "e[2693:2694]" "e[2697:2698]" "e[2701]" "e[2722]" "e[2725]" "e[2728]" "e[2731]" "e[2756]" "e[2759:2760]" "e[2763:2764]" "e[2767]" "e[2772]" "e[2775]" "e[2778]" "e[2781]" "e[2786]" "e[2789:2790]" "e[2793:2794]" "e[2797]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "41BED3F0-4BC6-0CD6-4ACE-5C9B12A22903";
	setAttr ".ics" -type "componentList" 10 "e[1639:1640]" "e[1643:1644]" "e[1646]" "e[1648:1649]" "e[1651]" "e[1653:1654]" "e[1656]" "e[1658:1659]" "e[1662:1663]" "e[1665]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "CAC2B906-4632-935E-5FF6-CB907004E59B";
	setAttr ".ics" -type "componentList" 45 "e[492]" "e[495]" "e[498:499]" "e[502]" "e[505]" "e[508]" "e[513]" "e[516:517]" "e[550]" "e[555]" "e[558:559]" "e[562]" "e[565]" "e[568:570]" "e[573]" "e[578]" "e[583]" "e[586:587]" "e[590]" "e[593]" "e[596:598]" "e[601]" "e[906:908]" "e[911:912]" "e[915:918]" "e[926:928]" "e[937:938]" "e[941]" "e[947:949]" "e[1318:1320]" "e[1323:1330]" "e[1332]" "e[1334:1336]" "e[1339:1346]" "e[1348]" "e[1350:1355]" "e[1358:1361]" "e[1364:1365]" "e[1576]" "e[1579:1580]" "e[1583:1584]" "e[1587:1588]" "e[1591:1592]" "e[1595:1596]" "e[1599]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "23B232E1-4A2B-C5AA-6D01-8F981B8522FF";
	setAttr ".ics" -type "componentList" 108 "e[18:25]" "e[120:123]" "e[128:131]" "e[171:172]" "e[175]" "e[178]" "e[181]" "e[184]" "e[187:188]" "e[202:203]" "e[208:209]" "e[212:213]" "e[216:217]" "e[248:249]" "e[254:255]" "e[285:287]" "e[295:296]" "e[299]" "e[302:304]" "e[309:310]" "e[313]" "e[336]" "e[343]" "e[348]" "e[353]" "e[359:361]" "e[367:368]" "e[371]" "e[672:673]" "e[678:679]" "e[682:683]" "e[710:711]" "e[714:715]" "e[722:723]" "e[757:759]" "e[765:766]" "e[769]" "e[772:774]" "e[777:778]" "e[781]" "e[799:800]" "e[803]" "e[809:811]" "e[911:914]" "e[919:926]" "e[931:938]" "e[943:946]" "e[951]" "e[954:955]" "e[958]" "e[963]" "e[966]" "e[970]" "e[973:974]" "e[977]" "e[982]" "e[985]" "e[1008:1009]" "e[1012:1016]" "e[1018:1019]" "e[1021:1023]" "e[1033]" "e[1036:1037]" "e[1040]" "e[1049]" "e[1052:1053]" "e[1056]" "e[1058]" "e[1061]" "e[1064]" "e[1067]" "e[1080]" "e[1083:1084]" "e[1087]" "e[1097]" "e[1100:1101]" "e[1104]" "e[1113]" "e[1116:1117]" "e[1120]" "e[1122]" "e[1125]" "e[1128]" "e[1131]" "e[1144]" "e[1147:1148]" "e[1151]" "e[1294]" "e[1297:1298]" "e[1301]" "e[1306]" "e[1309:1310]" "e[1313]" "e[1318]" "e[1321:1322]" "e[1325]" "e[1330]" "e[1333:1334]" "e[1337]" "e[1358]" "e[1361:1362]" "e[1365]" "e[1375]" "e[1378:1379]" "e[1382]" "e[1392]" "e[1395:1396]" "e[1399]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "BFC4C139-4F05-6B68-DA2A-17BFCF44CB29";
	setAttr ".ics" -type "componentList" 24 "e[523]" "e[526]" "e[529]" "e[531]" "e[533]" "e[535]" "e[537]" "e[540:541]" "e[544:545]" "e[548]" "e[551:552]" "e[555]" "e[558]" "e[561:563]" "e[568:570]" "e[779]" "e[782:783]" "e[785]" "e[787:788]" "e[792]" "e[794:801]" "e[803]" "e[806]" "e[808:812]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge7";
	rename -uid "EF72EC77-4701-A4C8-0A0A-EBA8C8ED07DB";
	setAttr ".ics" -type "componentList" 11 "e[81:82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92:93]" "e[155:156]" "e[159:160]" "e[200]" "e[507:508]" "e[516]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge8";
	rename -uid "4085A71C-4F89-3644-DB65-C1B0BA03B3BF";
	setAttr ".ics" -type "componentList" 16 "e[608:610]" "e[619:622]" "e[631:632]" "e[635]" "e[637]" "e[639]" "e[641]" "e[643]" "e[645]" "e[659:664]" "e[667:668]" "e[670]" "e[672:673]" "e[677]" "e[679:686]" "e[691:695]";
	setAttr ".cv" yes;
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "7F8419B6-433B-E54E-45AF-80854C40EB2C";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "D906517C-46A7-D53D-643B-3CB87D29A900";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyReduce -n "polyReduce1";
	rename -uid "AFB52DD9-4D3E-5513-AE2D-468FD7431DEE";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 27.699999999999996;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyReduce -n "polyReduce2";
	rename -uid "FDCE3A9A-4A6F-AC60-9246-CCB48997EFE8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 27.699999999999996;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "F9CC1C1F-4DFA-4AC4-C6CF-028FA7C4B632";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:441]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.00049591064453125 1.3597059771418571 0.29800724983215332 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 2.808234691619873 3.0990728288888931 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak12";
	rename -uid "B6E04439-4025-71F6-3029-82BE53FCA702";
	setAttr ".uopa" yes;
	setAttr -s 126 ".tk";
	setAttr ".tk[0]" -type "float3" 0.065187573 -0.00042772415 -0.36554426 ;
	setAttr ".tk[1]" -type "float3" 0.0034541753 -0.00041616807 -0.36766341 ;
	setAttr ".tk[2]" -type "float3" -0.057524815 -0.00042772287 -0.36554426 ;
	setAttr ".tk[3]" -type "float3" 0.023071226 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.023825372 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.035209924 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.035732161 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.03798791 -0.00042771985 -0.029886123 ;
	setAttr ".tk[13]" -type "float3" 0.084471017 -0.0017108604 0.35446712 ;
	setAttr ".tk[14]" -type "float3" -0.074330449 -0.0017108604 0.35446712 ;
	setAttr ".tk[15]" -type "float3" 0.11483628 -0.00042772415 0.30692461 ;
	setAttr ".tk[16]" -type "float3" -0.10479399 -0.00042772415 0.30692458 ;
	setAttr ".tk[17]" -type "float3" 0.1476758 -0.00041617229 0.063981503 ;
	setAttr ".tk[18]" -type "float3" 0.081054866 0.0017109256 -0.053070676 ;
	setAttr ".tk[19]" -type "float3" -0.073044814 0.0017109256 -0.053070676 ;
	setAttr ".tk[20]" -type "float3" -0.1389007 -0.00041617229 0.063981511 ;
	setAttr ".tk[21]" -type "float3" 0.060889401 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.14596725 -0.00041617229 -0.19607057 ;
	setAttr ".tk[23]" -type "float3" 0.13163069 -0.00046243667 -0.33296525 ;
	setAttr ".tk[24]" -type "float3" -0.1238171 -0.00046244808 -0.33296525 ;
	setAttr ".tk[25]" -type "float3" -0.13810864 -0.00041617529 -0.19607057 ;
	setAttr ".tk[26]" -type "float3" -0.060889401 0 0 ;
	setAttr ".tk[27]" -type "float3" -0.057417098 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.017224053 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.030487157 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.0093673887 0 0 ;
	setAttr ".tk[31]" -type "float3" -0.0095195631 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.030966647 0 0 ;
	setAttr ".tk[35]" -type "float3" -9.3132257e-010 -1.4901161e-008 0 ;
	setAttr ".tk[38]" -type "float3" 0.0080117797 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.030898942 0 0 ;
	setAttr ".tk[40]" -type "float3" -0.032808561 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.0052155489 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.053469177 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.054091975 0 0 ;
	setAttr ".tk[44]" -type "float3" 0.0089772623 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.0099315448 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.013710678 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.033326395 0 0 ;
	setAttr ".tk[48]" -type "float3" 0.01091217 0 0 ;
	setAttr ".tk[49]" -type "float3" 0.02612322 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.035792217 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.015197548 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.028483858 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.011692503 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.00029106176 0 0 ;
	setAttr ".tk[55]" -type "float3" -0.00022282034 0 0 ;
	setAttr ".tk[81]" -type "float3" -0.0001558269 0 0 ;
	setAttr ".tk[85]" -type "float3" -0.014048846 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.0011569171 0 0 ;
	setAttr ".tk[87]" -type "float3" -5.1521811e-006 0 0 ;
	setAttr ".tk[88]" -type "float3" 0.00087568577 0 0 ;
	setAttr ".tk[89]" -type "float3" 0.012132628 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.017462267 0 0 ;
	setAttr ".tk[91]" -type "float3" 0.00093888858 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.019720659 0 0 ;
	setAttr ".tk[93]" -type "float3" -8.0073041e-005 0 0 ;
	setAttr ".tk[94]" -type "float3" -0.0075619244 0 0 ;
	setAttr ".tk[95]" -type "float3" -0.00021336615 0 0 ;
	setAttr ".tk[108]" -type "float3" 0.0063839233 0 0 ;
	setAttr ".tk[109]" -type "float3" -0.0012128172 0 0 ;
	setAttr ".tk[110]" -type "float3" -0.045830969 0 0 ;
	setAttr ".tk[111]" -type "float3" -0.0076639825 0 0 ;
	setAttr ".tk[112]" -type "float3" 0.015180233 0 0 ;
	setAttr ".tk[113]" -type "float3" 0.0049603637 0 0 ;
	setAttr ".tk[114]" -type "float3" 0.0052911532 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.029286109 0 0 ;
	setAttr ".tk[116]" -type "float3" 0.02992454 0 0 ;
	setAttr ".tk[117]" -type "float3" -0.017081764 0 0 ;
	setAttr ".tk[118]" -type "float3" -0.031380069 0 0 ;
	setAttr ".tk[119]" -type "float3" -0.032517299 0 0 ;
	setAttr ".tk[120]" -type "float3" -0.0058240909 0 0 ;
	setAttr ".tk[121]" -type "float3" -9.0793103e-005 0 0 ;
	setAttr ".tk[122]" -type "float3" -0.0035544992 0 0 ;
	setAttr ".tk[123]" -type "float3" -8.1617509e-005 0 0 ;
	setAttr ".tk[153]" -type "float3" -6.998059e-005 0 0 ;
	setAttr ".tk[156]" -type "float3" 0.035065766 0 0 ;
	setAttr ".tk[160]" -type "float3" -2.3283064e-009 -9.3132257e-010 0 ;
	setAttr ".tk[161]" -type "float3" -1.4901161e-008 -4.6566129e-010 -1.4901161e-007 ;
	setAttr ".tk[164]" -type "float3" -0.035623461 0 0 ;
	setAttr ".tk[165]" -type "float3" -0.066719629 0 0 ;
	setAttr ".tk[166]" -type "float3" -0.023909243 0 0 ;
	setAttr ".tk[167]" -type "float3" -0.00056739396 0 0 ;
	setAttr ".tk[168]" -type "float3" 0.022694804 0 0 ;
	setAttr ".tk[169]" -type "float3" 0.068331651 0 0 ;
	setAttr ".tk[170]" -type "float3" 0.0071218642 0 0 ;
	setAttr ".tk[171]" -type "float3" -0.0072436319 0 0 ;
	setAttr ".tk[181]" -type "float3" 0.011422123 0 0 ;
	setAttr ".tk[182]" -type "float3" 0.021447565 0 0 ;
	setAttr ".tk[183]" -type "float3" -0.00029944413 0 0 ;
	setAttr ".tk[184]" -type "float3" -0.012603846 0 0 ;
	setAttr ".tk[185]" -type "float3" -0.023187447 0 0 ;
	setAttr ".tk[186]" -type "float3" 0.00082470616 0 0 ;
	setAttr ".tk[187]" -type "float3" 0.0049935719 0 0 ;
	setAttr ".tk[188]" -type "float3" -3.4534405e-006 0 0 ;
	setAttr ".tk[189]" -type "float3" 0.00054435147 0 0 ;
	setAttr ".tk[190]" -type "float3" -0.00055258762 0 0 ;
	setAttr ".tk[191]" -type "float3" -0.005121469 0 0 ;
	setAttr ".tk[192]" -type "float3" -0.00083583628 0 0 ;
	setAttr ".tk[193]" -type "float3" 0.0076627973 0 0 ;
	setAttr ".tk[194]" -type "float3" -0.13427375 -0.00041616807 0.18907323 ;
	setAttr ".tk[195]" -type "float3" -0.0081071816 0 0 ;
	setAttr ".tk[196]" -type "float3" -0.0552321 0 0 ;
	setAttr ".tk[197]" -type "float3" 0.010980229 0 0 ;
	setAttr ".tk[198]" -type "float3" 0.039905563 0 0 ;
	setAttr ".tk[199]" -type "float3" 0.13829507 -0.00041616807 -0.052163217 ;
	setAttr ".tk[200]" -type "float3" -0.13015254 -0.00041617939 -0.052163217 ;
	setAttr ".tk[201]" -type "float3" -0.053558856 0 0 ;
	setAttr ".tk[202]" -type "float3" -0.040228169 0 0 ;
	setAttr ".tk[203]" -type "float3" -0.011313 0 0 ;
	setAttr ".tk[204]" -type "float3" 0.054538086 0 0 ;
	setAttr ".tk[205]" -type "float3" -0.053609882 0 0 ;
	setAttr ".tk[206]" -type "float3" 0.007946426 0 0 ;
	setAttr ".tk[207]" -type "float3" 0.05280922 0 0 ;
	setAttr ".tk[212]" -type "float3" 0.042989351 0 0 ;
	setAttr ".tk[213]" -type "float3" 0.022734709 0 0 ;
	setAttr ".tk[214]" -type "float3" -0.025209524 0 0 ;
	setAttr ".tk[217]" -type "float3" 0.006073988 0 0 ;
	setAttr ".tk[218]" -type "float3" -0.006233247 0 0 ;
	setAttr ".tk[219]" -type "float3" -0.052841909 0 0 ;
	setAttr ".tk[220]" -type "float3" -0.058692127 0 0 ;
	setAttr ".tk[221]" -type "float3" 0.056254644 0 0 ;
	setAttr ".tk[222]" -type "float3" 0.052345011 0 0 ;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "DEBA7A25-4AEE-4F9D-EA09-018D0D4D4BAC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 30 "e[0]" "e[25]" "e[29]" "e[40]" "e[71]" "e[101]" "e[106]" "e[131:132]" "e[134]" "e[157]" "e[165]" "e[185]" "e[194]" "e[197]" "e[213]" "e[222]" "e[233]" "e[238:239]" "e[241]" "e[248:249]" "e[253:254]" "e[264]" "e[267:268]" "e[272:273]" "e[396]" "e[399]" "e[408]" "e[416]" "e[463]" "e[495]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "F72A4317-4EF0-B024-4CAF-E9BBE46BB397";
	setAttr ".uopa" yes;
	setAttr -s 259 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.11159441 0.50383461 0.30226648 0.018070085
		 0.2967172 0.49253154 0.38898191 0.012568505 0.298132 0.029183308 0.35412428 0.031758722
		 0.27436355 0.044475645 0.60605466 0.67659181 0.62993532 0.64343935 0.61941898 0.6816566
		 0.63430375 0.67059779 0.65262043 0.6331318 -0.096723467 0.22787407 -0.089202404 0.22037816
		 0.47333831 0.72581422 0.48675466 0.72725362 -0.2145278 0.27123651 -0.39340174 0.42878026
		 -0.61115593 0.45116633 -0.40615451 0.50185335 -0.61854392 0.51561087 -0.39085776
		 0.44253868 -0.12024987 -0.0073351711 -0.39144856 0.42042953 -0.60935658 0.44450212
		 -0.024362087 -0.055465892 -0.12537348 -0.032941177 -0.024065137 -0.046983972 -0.012803376
		 0.027405769 -0.12568963 -0.025914162 -0.11927617 0.040897459 -0.81862736 0.53545052
		 -0.85570204 0.50472629 -0.89007801 0.50581652 -0.23140943 0.02731353 -0.22117913
		 0.055738404 -0.90426987 0.55483723 -0.95146424 0.55535167 -0.97846597 0.56015927
		 -0.26605564 0.061902627 -0.25956374 0.068122223 -0.94314218 0.61201835 -0.75354272
		 0.58441448 -0.90554136 0.61090535 -0.25440478 0.11125404 -0.25020498 0.11659661 -0.15117925
		 0.10738937 -0.69287258 0.57599956 -0.12719977 0.10471699 -0.62960637 0.59043962 -0.39615411
		 0.56227762 -0.25811887 0.54116714 0.099529803 0.065761007 0.023416936 0.088454671
		 -0.054852962 0.10061239 0.07580322 0.52091521 -0.20824754 0.11850283 -0.10641599
		 0.11120922 0.0034977794 0.09464056 0.18670201 0.0607775 0.23088509 0.053855613 -0.81584275
		 0.6018188 -0.62634242 0.58395553 -0.42065793 0.56900585 0.2289308 0.50995475 -0.16885118
		 0.43871981 -0.052371114 0.38165808 -0.20197785 0.39100897 -0.15040967 0.36563426
		 0.095575392 0.075718351 0.10411423 0.075722121 0.068294972 -0.13436669 0.12338108
		 -0.091552138 0.051121533 -0.082844123 0.086700201 -0.035513878 -0.21676958 0.39885712
		 0.051790178 -0.082960963 0.3673979 0.71911675 0.402412 0.71347785 0.4616124 0.71728355
		 -0.085257962 0.53670496 0.0086678863 0.53177029 -0.25603026 0.55065423 -0.22746815
		 0.55154812 -0.27219382 0.26209956 -0.2363714 0.25600192 -0.19445744 0.26058948 0.35639298
		 0.72676992 0.3537209 0.023449019 0.22972241 0.047504835 0.34901923 0.40066779 0.26053965
		 0.42326885 0.3679305 0.38761044 0.37841082 -0.072333507 0.34062821 -0.052718319 0.21552241
		 -0.026362531 -0.0088089108 0.047440797 -0.11702657 0.060488269 -0.41073942 0.52161908
		 -0.62174046 0.53456169 -0.21913046 0.068363354 -0.81495702 0.54856569 0.040901721
		 0.44957662 -0.18429774 0.47568196 0.095102012 0.00090876222 0.0003324151 -0.036649525
		 0.12482059 -0.078340292 0.02588442 -0.040359437 0.13430208 -0.058636725 0.23064932
		 -0.1033538 -0.077955157 -0.51087928 -0.03308472 -0.54724467 -0.087180972 -0.50731236
		 0.3503345 0.35393202 0.37749076 0.11471212 0.26474655 0.31308109 0.30087444 0.13498801
		 0.56450725 0.50320894 0.61137748 0.42441511 0.25739139 0.37723768 0.44844514 0.66847879
		 0.40082079 0.10215288 0.0003587082 -0.035564333 0.2515837 -0.35565704 0.31775635
		 -0.097168781 0.29152575 -0.16013259 0.22125524 -0.33608431 -0.042278536 0.043480694
		 0.20387828 -0.071939379 0.18719959 -0.13184693 0.073644012 0.34247398 0.13245931
		 0.16833591 -0.17980491 0.21021664 -0.15724745 0.13214236 -0.12090361 0.338866 -0.016905606
		 0.33056623 0.038184643 0.18561101 -0.060170352 0.20712841 0.30739832 0.64019418 0.3541348
		 0.59935629 0.2593739 0.54264796 0.055547446 0.40332621 0.4258377 0.59258628 0.12194929
		 -0.14276776 0.12966397 -0.30388266 0.07850334 -0.28722012 -0.20994377 0.13847604
		 0.035590559 -0.26598734 -0.26334664 0.18004414 -0.23937072 0.080018401 0.069813639
		 -0.12960093 -0.15516362 0.34737992 0.039615452 -0.26132125 0.041975558 -0.25143117
		 0.28320557 0.6447587 0.22729427 0.54455376 -0.06858331 0.21166885 0.21148017 -0.50839114
		 0.17832154 -0.48356566 0.46068427 -0.054742098 0.4373053 -0.039170444 0.35844502
		 -0.014644563 0.18334454 0.02519542 0.084207177 0.046552062 -0.018867642 0.066339552
		 -0.02846092 0.069212973 -0.017308921 -0.39403677 -0.021298528 -0.40267381 0.022210091
		 -0.42430013 -0.024953574 -0.40538639 0.079440773 -0.44371289 -0.076924831 -0.50857794
		 0.032455623 -0.57257509 0.1498704 -0.61578798 0.19433811 -0.64393127 0.18801251 -0.66171038
		 0.51485842 -0.1763345 0.42112488 -0.14763087 -0.07714197 -0.33098227 -0.0018669218
		 -0.43171954 -0.093623251 -0.39168441 -0.066012084 -0.45990941 -0.064816803 -0.45537442
		 -0.065983891 -0.52629584 0.08030805 0.014278173 0.028277159 -0.055612445 0.20200485
		 0.1364274 0.099537939 0.077054918 0.2656576 0.036140501 0.46386868 0.13640493 0.51538849
		 -0.058831334 0.14472714 -0.52522731 0.057146609 -0.32861921 -0.041230559 -0.28486446
		 -0.15145977 -0.17721915 0.16367894 0.25496638 -0.091760755 -0.31021908 0.13090515
		 0.18371636 0.14809737 0.15763563 0.18198597 0.28897047 0.30681682 0.18121344 0.53192693
		 0.1107707 0.084602326 -0.36887592 0.088535756 -0.35366261 -0.07885319 -0.15583885
		 -0.0078644603 -0.097884238 -0.16326885 -0.028227419 0.30013913 0.43572563 0.34502834
		 0.30881345 0.52546978 0.36437565 0.60712737 0.31599969 -0.10869201 -0.048769981 -0.20545752
		 -0.012557328 -0.17170992 -0.12897313 0.23450291 0.45150244 0.37540108 0.41468114
		 -0.028080851 -0.078622937 -0.095075011 -0.5458883 -0.0527834 -0.071312189 -0.10568815
		 -0.53971112 -0.10243583 -0.54285759 -0.092426568 -0.54989749 -0.075240046 -0.51833355
		 -0.079771161 0.18714955 0.63708258 0.40204829 0.30420914 0.46604091 0.37013072 -0.083485208
		 -0.97429454 0.61685222 -0.10582596 0.041413564 -0.61570799 0.47226655 -0.89666307
		 0.54573596 -0.10817039 0.22185341 0.11383331 0.49130934 0.033676207 0.011006415 -0.022711903
		 -0.046624303 -0.069125473 -0.073666155 -0.095342875 -0.28472245 -0.11918014 -0.21242571
		 0.17021793 0.33719695 -0.090490431 -0.067294359 -0.067798227 -0.03611356 -0.095756948
		 0.22162354 -0.060143113 0.078596056 0.074130207 -0.12590876 0.057776392 -0.074743032
		 -0.021623313 -0.033502653 -0.98944628 0.5705117 0.023944281 -0.14497489 -0.25017822
		 0.08118099 0.55311507 0.095253825;
	setAttr ".uvtk[250:258]" 0.54100132 -0.19453704 0.24526891 -0.36758706 0.20641387
		 -0.52353573 -0.27700949 0.18415347 -0.28967446 0.27009082 -0.23042777 0.27471361
		 0.28831142 -0.0017931461 -0.26671928 0.5118019 0.304333 0.0071764598;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV1.out" "pCubeShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing4.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak5.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polyTweak6.out" "polySplitRing13.ip";
connectAttr "pCubeShape1.wm" "polySplitRing13.mp";
connectAttr "polySplitRing12.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing14.ip";
connectAttr "pCubeShape1.wm" "polySplitRing14.mp";
connectAttr "polySplitRing13.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polySplitRing14.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace5.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySmoothFace1.ip";
connectAttr "polyExtrudeFace7.out" "polyTweak11.ip";
connectAttr "polySmoothFace1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "polyDelEdge5.ip";
connectAttr "polyDelEdge5.out" "polyDelEdge6.ip";
connectAttr "polyDelEdge6.out" "polyDelEdge7.ip";
connectAttr "polyDelEdge7.out" "polyDelEdge8.ip";
connectAttr "polyDelEdge8.out" "polyTriangulate1.ip";
connectAttr "polyTriangulate1.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polyReduce1.ip";
connectAttr "polyReduce1.out" "polyReduce2.ip";
connectAttr "polyTweak12.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyReduce2.out" "polyTweak12.ip";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of boot.ma
