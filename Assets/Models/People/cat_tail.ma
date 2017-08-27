//Maya ASCII 2016R2 scene
//Name: cat_tail.ma
//Last modified: Sun, Aug 27, 2017 07:21:57 PM
//Codeset: 1252
requires maya "2016R2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016 Extension 2";
fileInfo "cutIdentifier" "201603022110-988944-2";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "DA17E281-4169-5E31-9515-F0B85A711EC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.572017537169401 19.930195184786019 25.8140331565574 ;
	setAttr ".r" -type "double3" -383.13835271409323 2866.9999999996267 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D42546E0-4BA0-B886-6F38-F88A9D85D145";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 28.397205163037306;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7D1173A4-4517-3D2F-0B5C-E29851B9F4F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B815E36A-4BDE-CA8F-1CCD-B182AC114454";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "F0780A17-4E75-6370-6F4A-4FAC85784B3C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.19789174370829676 6.9265668782518528 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EB6B4E9D-4DB9-74A3-8D6C-2B8A4A9A84AF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 43.300092809299457;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "16F8A6B3-47C9-B846-7155-1C86AA27F3E5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DCD62B0A-48F9-95FE-56AB-2CBD3C904FF3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "DC2EF517-42D4-6FEE-70EA-FAB6C81333D9";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "47AF01CB-495A-1E24-EE8E-C1A88DCF8D00";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.35340706020360813 0.49999999348074198 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt";
	setAttr ".pt[86]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[87]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[88]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[89]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[90]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[91]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[92]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	rename -uid "B72E47A1-426F-F8F1-756E-5A96E031B586";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 137 ".uvst[0].uvsp[0:136]" -type "float2" 0.88811672 0.085363775
		 0.85145044 0.085363775 0.85339981 0.0018604617 0.85145044 0.19995874 0.82858944 0.084918283
		 0.88616735 0.0018604617 0.82858944 0.19668221 0.88811672 0.19995874 0.83296973 0.0018604617
		 0.91097772 0.084918283 0.82858974 0.49360126 0.88811648 0.49445465 0.91097772 0.19668221
		 0.90659744 0.0018604617 0.85145056 0.53240007 0.85144871 0.60992956 0.88812 0.64208335
		 0.91097742 0.49360126 0.8285771 0.72894639 0.85143358 0.72504145 0.91098118 0.65105939
		 0.8881287 0.7126193 0.91099608 0.7434389 0.88816148 0.75080919 0.82854283 0.772816
		 0.0019925886 0.084362797 0.0055052415 0.0018604617 0.035027713 0.084115557 0.068062834
		 0.036843453 0.035027713 0.19077808 0.035027713 0.0018604617 0.068062834 0.084362797
		 0.068062834 0.19259638 0.0019925886 0.19259638 0.064550184 0.0018604617 0.068062834
		 0.53631061 0.0019920084 0.44839382 0.035027713 0.5372721 0.068054907 0.66227704 0.0019941356
		 0.58152771 0.035027713 0.70171344 0.0020004206 0.66227704 0.068015166 0.76648909
		 0.00202614 0.74938762 0.0020909223 0.79156768 0.035027616 0.81295538 0.74206793 0.79555905
		 0.77751231 0.79555905 0.77831525 0.86080176 0.79930651 0.80210835 0.71831864 0.87900329
		 0.80126226 0.87900347 0.9072156 0.79658526 0.90892911 0.88836849 0.87596625 0.80030781
		 0.87596631 0.89893049 0.9002713 0.78169245 0.90891653 0.91414064 0.84300363 0.88836867
		 0.87568313 0.78352028 0.83645034 0.78850156 0.8465485 0.77680737 0.64040172 0.81598932
		 0.66602033 0.79555917 0.69796616 0.8028506 0.69796616 0.8618955 0.71218342 0.83237302
		 0.64040172 0.84875679 0.66602033 0.86918688 0.58318627 0.83479196 0.60540366 0.80565721
		 0.61828828 0.82148623 0.61344993 0.79555911 0.61755425 0.84838164 0.63426614 0.81735337
		 0.63426632 0.85279775 0.58928102 0.85938013 0.5868057 0.86632437 0.83026493 0.79555905
		 0.83031499 0.9320693 0.80743033 0.86443442 0.80739748 0.8012107 0.9511447 0.16895774
		 0.9511447 0.072526529 0.98407054 0.11956527 0.918208 0.044607181 0.98413223 0.0018604132
		 0.98410749 0.24206866 0.91819465 0.20736246 0.95114487 0.2498116 0.97491401 0.7835632
		 0.99800801 0.91721267 0.9152953 0.77680743 0.93801147 0.90406728 0.91506439 0.91721296
		 0.36320409 0.76913929 0.36040282 0.80412233 0.32845694 0.80412233 0.36314914 0.72162002
		 0.32747683 0.72106439 0.36727563 0.61338633 0.3320854 0.60930055 0.39138827 0.31238148
		 0.43072057 0.26967213 0.33013901 0.077036351 0.4091686 0.14370568 0.3371087 0.039493632
		 0.21940394 0.0018604132 0.25419638 0.033166718 0.29963678 0.080941275 0.096900553
		 0.04569659 0.11379085 0.068668596 0.07429821 0.14556368 0.71857524 0.084918283 0.71955532
		 0.0018604617 0.75424749 0.084362797 0.7515012 0.0018604617 0.75837392 0.19259638
		 0.72318375 0.19668221 0.78248656 0.49360126 0.80926704 0.44839382 0.82077479 0.58152771
		 0.76872635 0.65105939 0.80026698 0.66227704 0.74552441 0.74938762 0.70741427 0.7434389
		 0.68546033 0.79156768 0.57090408 0.77215624 0.52270514 0.78605813 0.48799905 0.76028597
		 0.50488949 0.73731393 0.43875238 0.66850275 0.63853896 0.75080919 0.48621297 0.65386975
		 0.55343932 0.79555905 0.57705092 0.82630765 0.56215811 0.82383233;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 66 ".vt[0:65]"  -0.72937906 -0.75 -0.3512505 -0.72937918 -0.75 0.35125044
		 0.80954975 -0.75 5.5879354e-009 0.56362379 1.018766522 -0.70823956 -0.8144598 1.040227175 -0.39304334
		 0.90398234 1.013466239 9.3132257e-009 0.65209067 3.33918571 -0.70823956 -0.70736682 3.49702787 -0.39304319
		 -0.70736682 3.49702787 0.3930434 0.98784935 3.30020356 9.3132257e-009 1.16904199 9.79242802 -0.88315386
		 0.57045054 9.81072235 0.39303896 2.34081912 10.72868729 8.5681677e-008 1.55023515 13.40866756 -0.70807016
		 -0.14408001 14.83798885 -0.88342583 0.5700478 12.2863884 -0.39308167 1.46253169 14.25414181 -3.5297126e-007
		 -0.79801732 14.75427151 -0.39340639 -5.14447784 15.50988293 -0.70668697 -4.50053596 14.62716007 -0.39714897
		 -4.78236151 15.017381668 0.88911611 -5.31047916 15.73631668 5.569309e-007 0.0053429324 15.64286804 -0.70721835
		 -1.77221382 15.778512 -0.88416111 -2.51812863 16.44968796 -0.70589548 -3.36707544 15.76436424 0.88462645
		 -4.78236723 15.01738739 -0.8891111 -5.6290493 13.3688345 -0.84718341 -0.18014172 -0.75 -0.78925264
		 0.56480229 9.7256844e-018 -0.70823956 -0.18014181 -0.75 0.78925258 0.50474602 -0.75 0.63293147
		 -5.18277073 13.22842216 -0.37993631 -6.46646786 13.62194633 -1.7024577e-006 -0.20115492 1.030676246 -0.88316029
		 -0.20115499 1.030676246 0.88316029 -0.10235114 3.42678213 -0.88316023 -0.10235126 3.42678213 0.88316035
		 2.012287617 10.70807362 -0.70823985 1.16904163 9.79242802 0.88315439 -3.57705402 16.63569069 2.0656735e-006
		 -1.5096662 16.63905907 1.6633421e-006 0.50474608 -0.75 -0.63293147 -6.20027494 13.54214001 0.66995233
		 -5.14447498 15.50987911 0.70668888 -4.40041208 16.06240654 0.70642012 0.37660852 15.27623081 0.70752132
		 1.74318707 8.82322598 0.7082513 0.56362373 1.018766522 0.70823967 -0.91110396 16.18052864 0.70613122
		 -0.44043401 15.14869404 0.88355398 1.55023468 13.40866661 0.70807153 1.98990214 11.67748356 0.70820612
		 0.65209061 3.33918595 0.70823961 -5.18276691 13.22842216 0.37995562 -1.91705072 15.30670643 0.394003
		 -0.56159973 14.48795509 0.39330006 0.33183637 12.97573471 0.39311388 0.68213958 10.62423515 -0.39304122
		 -0.81445986 1.040227175 0.39304325 0.87403452 13.16817093 0.88323432 -5.80155182 13.1181221 -0.63069052
		 -6.27787256 13.26203918 -0.0060703456 -5.52531862 13.031224251 -0.29133296 -6.14720678 13.22285175 0.52107459
		 -5.54105759 13.03592968 0.28527778;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  2 42 0 3 34 0 28 34 0 2 29 0 34 36 0 8 37 0 36 10 0
		 10 7 0 6 38 0 10 58 0 9 12 0 10 14 0 13 14 0 14 15 0 14 17 0 57 60 0 13 22 0 57 56 0
		 22 24 0 56 55 0 55 50 0 18 23 0 23 55 0 50 25 0 23 19 0 55 20 0 28 29 0 0 28 0 1 0 0
		 42 0 0 4 34 0 59 4 0 36 6 0 9 53 0 10 38 0 12 47 0 11 58 0 12 52 0 14 22 0 16 46 0
		 22 46 0 23 24 0 41 49 0 40 49 0 40 45 0 20 19 0 21 44 0 21 18 0 40 18 0 16 13 0 16 12 0
		 9 5 0 5 3 0 42 31 0 43 44 0 44 45 0 49 22 0 53 48 0 31 2 0 44 20 0 45 25 0 49 25 0
		 45 49 0 46 50 0 52 39 0 53 37 0 31 30 0 48 31 0 54 19 0 55 17 0 57 58 0 11 7 0 7 8 0
		 59 0 0 20 25 0 39 11 0 60 39 0 35 30 0 38 12 0 24 40 0 24 41 0 4 0 0 34 0 0 35 1 0
		 59 1 0 30 1 0 30 48 0 31 29 0 31 5 0 29 42 0 29 5 0 29 3 0 28 3 0 28 42 0 1 31 0
		 31 0 0 27 32 0 7 4 0 36 4 0 37 59 0 8 59 0 7 59 0 59 35 0 35 37 0 35 53 0 35 48 0
		 5 48 0 48 9 0 5 6 0 3 6 0 6 34 0 36 7 0 11 37 0 11 8 0 37 39 0 53 39 0 53 47 0 9 47 0
		 6 9 0 6 10 0 58 7 0 38 9 0 39 47 0 47 52 0 15 58 0 10 15 0 57 39 0 57 11 0 60 52 0
		 51 52 0 12 51 0 12 13 0 38 13 0 38 14 0 57 15 0 17 15 0 51 60 0 16 51 0 17 57 0 50 60 0
		 50 57 0 46 51 0 46 60 0 16 22 0 49 46 0 14 24 0 14 23 0 17 23 0 17 56 0 50 56 0 22 41 0
		 49 50 0 41 40 0 24 18 0 18 26 0 23 26 0 26 19 0 20 23 0 25 55 0 44 25 0 45 21 0 40 21 0
		 32 19 0 19 27 0 20 54 0 43 20 0;
	setAttr ".ed[166:191]" 44 33 0 21 33 0 18 33 0 18 27 0 26 27 0 54 32 0 33 43 0
		 27 33 1 54 43 1 27 61 0 33 62 0 61 62 0 32 63 0 61 63 0 62 63 0 43 64 0 62 64 0 54 65 0
		 62 65 0 65 64 0 65 63 0 61 33 1 63 27 1 33 64 1 43 65 1 54 63 1;
	setAttr -s 128 -ch 384 ".fc[0:127]" -type "polyFaces" 
		f 3 89 -94 26
		mu 0 3 95 96 97
		f 3 31 81 -74
		mu 0 3 0 1 2
		f 3 30 82 -82
		mu 0 3 1 4 2
		f 3 -3 -28 -83
		mu 0 3 4 8 2
		f 3 -78 83 -86
		mu 0 3 13 9 5
		f 3 -103 84 -84
		mu 0 3 9 0 5
		f 3 73 -29 -85
		mu 0 3 0 2 5
		f 3 77 86 -106
		mu 0 3 113 114 115
		f 3 -67 -68 -87
		mu 0 3 114 116 115
		f 3 58 3 -88
		mu 0 3 26 30 28
		f 3 67 88 106
		mu 0 3 25 26 27
		f 3 87 90 -89
		mu 0 3 26 28 27
		f 3 0 -90 -4
		mu 0 3 30 34 28
		f 3 -91 91 -53
		mu 0 3 27 28 31
		f 3 -27 92 -92
		mu 0 3 95 97 98
		f 3 -93 2 -2
		mu 0 3 98 97 99
		f 3 27 93 29
		mu 0 3 62 63 64
		f 3 85 94 66
		mu 0 3 68 67 65
		f 3 -95 28 -96
		mu 0 3 65 67 62
		f 3 53 95 -30
		mu 0 3 64 65 62
		f 3 -178 179 -181
		mu 0 3 69 70 71
		f 3 -183 184 185
		mu 0 3 76 69 73
		f 3 -187 -185 180
		mu 0 3 71 73 69
		f 3 -112 98 -98
		mu 0 3 3 6 1
		f 3 -5 -31 -99
		mu 0 3 6 4 1
		f 3 103 99 102
		mu 0 3 9 12 0
		f 3 -6 100 -100
		mu 0 3 12 7 0
		f 3 -73 101 -101
		mu 0 3 7 3 0
		f 3 97 -32 -102
		mu 0 3 3 1 0
		f 3 -104 104 65
		mu 0 3 118 113 117
		f 3 105 -58 -105
		mu 0 3 113 115 117
		f 3 57 107 33
		mu 0 3 33 25 29
		f 3 -107 -52 -108
		mu 0 3 25 27 29
		f 3 51 108 118
		mu 0 3 29 27 32
		f 3 52 109 -109
		mu 0 3 27 31 32
		f 3 32 110 4
		mu 0 3 101 100 99
		f 3 -110 1 -111
		mu 0 3 100 98 99
		f 3 -7 111 -8
		mu 0 3 10 6 3
		f 3 75 112 114
		mu 0 3 17 11 12
		f 3 -113 113 5
		mu 0 3 12 11 7
		f 3 71 72 -114
		mu 0 3 11 3 7
		f 3 -66 115 -115
		mu 0 3 118 117 119
		f 3 -116 116 -123
		mu 0 3 119 117 120
		f 3 -34 117 -117
		mu 0 3 33 29 36
		f 3 -33 6 -120
		mu 0 3 100 101 102
		f 3 -9 119 34
		mu 0 3 103 100 102
		f 3 36 120 -72
		mu 0 3 11 14 3
		f 3 -10 7 -121
		mu 0 3 14 10 3
		f 3 8 121 -119
		mu 0 3 32 35 29
		f 3 64 122 123
		mu 0 3 121 119 120
		f 3 35 -118 10
		mu 0 3 37 36 29
		f 3 -36 37 -124
		mu 0 3 36 37 39
		f 3 -11 -122 78
		mu 0 3 37 29 35
		f 3 134 124 -71
		mu 0 3 16 15 14
		f 3 -12 125 -14
		mu 0 3 18 10 15
		f 3 -126 9 -125
		mu 0 3 15 10 14
		f 3 -16 126 -77
		mu 0 3 20 16 17
		f 3 -127 127 -76
		mu 0 3 17 16 11
		f 3 70 -37 -128
		mu 0 3 16 14 11
		f 3 136 128 -130
		mu 0 3 123 122 121
		f 3 -129 76 -65
		mu 0 3 121 122 119
		f 3 -38 130 129
		mu 0 3 39 37 41
		f 3 -131 -51 137
		mu 0 3 41 37 40
		f 3 50 131 -50
		mu 0 3 40 37 38
		f 3 -79 132 -132
		mu 0 3 37 35 38
		f 3 -133 133 -13
		mu 0 3 105 103 104
		f 3 -35 11 -134
		mu 0 3 103 102 104
		f 3 -139 135 -135
		mu 0 3 16 19 15
		f 3 -15 13 -136
		mu 0 3 19 18 15
		f 3 -17 12 38
		mu 0 3 106 105 104
		f 3 -149 138 17
		mu 0 3 21 19 16
		f 3 -140 140 15
		mu 0 3 20 22 16
		f 3 149 -18 -141
		mu 0 3 22 21 16
		f 3 -142 142 -137
		mu 0 3 123 124 122
		f 3 63 139 -143
		mu 0 3 124 125 122
		f 3 39 141 -138
		mu 0 3 40 43 41
		f 3 -40 143 40
		mu 0 3 43 40 42
		f 3 49 16 -144
		mu 0 3 40 38 42
		f 3 -145 151 -64
		mu 0 3 124 126 125
		f 3 144 -41 -57
		mu 0 3 44 43 42
		f 3 -39 145 -19
		mu 0 3 106 104 107
		f 3 -146 146 41
		mu 0 3 107 104 108
		f 3 14 147 -147
		mu 0 3 104 109 108
		f 3 -23 -148 -70
		mu 0 3 23 24 19
		f 3 69 148 19
		mu 0 3 23 19 21
		f 3 -21 -20 -150
		mu 0 3 78 80 81
		f 3 150 42 56
		mu 0 3 42 45 44
		f 3 -151 18 80
		mu 0 3 83 86 84
		f 3 23 158 20
		mu 0 3 78 79 80
		f 3 -63 60 -62
		mu 0 3 126 128 127
		f 3 61 -24 -152
		mu 0 3 126 127 125
		f 3 152 43 -43
		mu 0 3 83 82 85
		f 3 62 -44 44
		mu 0 3 88 85 82
		f 3 -153 -81 79
		mu 0 3 82 83 84
		f 3 -80 153 -49
		mu 0 3 82 84 87
		f 3 -154 -42 -22
		mu 0 3 110 107 108
		f 3 21 155 -155
		mu 0 3 110 108 111
		f 3 -156 24 -157
		mu 0 3 94 92 93
		f 3 25 157 22
		mu 0 3 90 91 92
		f 3 45 -25 -158
		mu 0 3 91 93 92
		f 3 -75 -26 -159
		mu 0 3 127 130 132
		f 3 -56 159 -61
		mu 0 3 128 129 127
		f 3 59 74 -160
		mu 0 3 129 130 127
		f 3 55 160 46
		mu 0 3 53 57 55
		f 3 -45 161 -161
		mu 0 3 88 82 89
		f 3 -162 48 -48
		mu 0 3 89 82 87
		f 3 171 162 -69
		mu 0 3 46 47 48
		f 3 156 163 -171
		mu 0 3 51 48 49
		f 3 -97 -164 -163
		mu 0 3 47 49 48
		f 3 -46 164 68
		mu 0 3 48 50 46
		f 3 -55 165 -60
		mu 0 3 129 131 130
		f 3 -165 -166 -175
		mu 0 3 133 130 131
		f 3 54 166 172
		mu 0 3 52 53 54
		f 3 -47 167 -167
		mu 0 3 53 55 54
		f 3 47 168 -168
		mu 0 3 55 58 54
		f 3 -169 169 173
		mu 0 3 54 58 60
		f 3 154 170 -170
		mu 0 3 110 111 112
		f 3 -54 -1 -59
		mu 0 3 65 64 66
		f 3 175 187 -174
		mu 0 3 60 61 54
		f 3 -188 177 -177
		mu 0 3 54 61 59
		f 3 178 188 96
		mu 0 3 74 71 72
		f 3 -189 -180 -176
		mu 0 3 72 71 70
		f 3 -173 189 -182
		mu 0 3 52 54 56
		f 3 -190 176 182
		mu 0 3 56 54 59
		f 3 174 190 -184
		mu 0 3 75 77 73
		f 3 -191 181 -186
		mu 0 3 134 135 136
		f 3 -172 191 -179
		mu 0 3 74 75 71
		f 3 -192 183 186
		mu 0 3 71 75 73;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode joint -n "joint1";
	rename -uid "8EC41861-4C4B-2C95-9088-589718E3C15F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -0.064947707598790316 -0.044344672098265828 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.693608377729319 ;
	setAttr ".bps" -type "matrix" 0.005347517122609613 0.99998570192809433 0 0 -0.99998570192809433 0.005347517122609613 0 0
		 0 0 1 0 -0.064947707598790316 -0.044344672098265828 0 1;
	setAttr ".radi" 0.62443008678182932;
createNode joint -n "joint2" -p "joint1";
	rename -uid "A9E4D783-4BDE-EA84-B169-7689F7B33759";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.4056483444486982 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -11.461897309749977 ;
	setAttr ".bps" -type "matrix" 0.20395425411200124 0.97898041973760508 0 0 -0.97898041973760508 0.20395425411200124 0 0
		 0 0 1 0 -0.046735944763263822 3.3612549781455181 0 1;
	setAttr ".radi" 0.60992765400668159;
createNode joint -n "joint3" -p "joint2";
	rename -uid "6FDBA116-496B-A7FA-1431-44B9D7C14E93";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.1252679774625123 2.2204460492503131e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.647894549820341 ;
	setAttr ".bps" -type "matrix" 0.23202265969806443 0.97271038104187846 0 0 -0.97271038104187846 0.23202265969806443 0 0
		 0 0 1 0 0.59067575448022536 6.4208311345142643 0 1;
	setAttr ".radi" 0.6593904237807191;
createNode joint -n "joint4" -p "joint3";
	rename -uid "23D5BC45-4263-105B-2E6A-A48A1A7AACB6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.2358937634540441e-030 19.575346510984009 ;
	setAttr ".bps" -type "matrix" -0.10729075757589374 0.99422768686995999 -3.081487911019578e-033 0
		 0.99422768686996021 0.10729075757589365 1.2246467991473535e-016 0 1.2175777543489738e-016 1.3139328284341272e-017 -1 0
		 1.5376874219276957 10.390995432659427 0 1;
	setAttr ".radi" 0.57997235030642813;
createNode joint -n "joint5" -p "joint4";
	rename -uid "FA621779-4A3A-BF8E-71CC-D8A3BEDC0CD9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.8757016166426021e-016 3.2298660953130217e-015 -27.407155705430334 ;
	setAttr ".bps" -type "matrix" -0.55290182175472835 0.83324640743318135 -5.6371797761745257e-017 0
		 0.83324640743318146 0.55290182175472813 1.0871898750322997e-016 0 1.2175777543489738e-016 1.3139328284341272e-017 -1 0
		 1.264510979394774 12.922430466797859 -6.2231118242140127e-032 1;
	setAttr ".radi" 0.569239704838852;
createNode joint -n "joint6" -p "joint5";
	rename -uid "0CCDC597-4DAD-2FCE-75C4-9398534C23BC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1655242459154753e-015 5.4840309707930347e-015 -23.997150663945142 ;
	setAttr ".bps" -type "matrix" -0.84398612185371125 0.53636501201917852 -9.5714396721679377e-017 0
		 0.53636501201917852 0.84398612185371091 7.6396021407031103e-017 0 1.2175777543489738e-016 1.3139328284341272e-017 -1 0
		 -0.028524181927733316 14.871089090199384 -1.6083873139476659e-031 1;
	setAttr ".radi" 0.56770044122666719;
createNode joint -n "joint7" -p "joint6";
	rename -uid "E0253ED4-41F0-380C-76D4-AB934B87593D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.3000425763051007e-015 7.0111970021689744e-015 -36.324440162314616 ;
	setAttr ".bps" -type "matrix" -0.9976986090714306 -0.067804759839806383 -1.2236847219380476e-016 0
		 -0.067804759839806605 0.99769860907143026 4.8533328314279028e-018 0 1.2175777543489738e-016 1.3139328284341272e-017 -1 0
		 -1.9771828053292573 16.109488963015298 4.3080694752099226e-031 1;
	setAttr ".radi" 0.54552440547039782;
createNode joint -n "joint8" -p "joint7";
	rename -uid "E4901E59-4D92-C9CE-56E1-66AEEAE349B9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6351111180419978e-015 6.2488123729035022e-015 -29.327341932904112 ;
	setAttr ".bps" -type "matrix" -0.83661852862831243 -0.54778594136377612 -1.0906235024652582e-016 0
		 -0.54778594136377634 0.83661852862831221 -5.5704592138554506e-017 0 1.2175777543489738e-016 1.3139328284341272e-017 -1 0
		 -3.8529943773886703 15.982006623166603 3.8150314094467902e-031 1;
	setAttr ".radi" 0.54285537095337222;
createNode joint -n "joint9" -p "joint8";
	rename -uid "1F834068-488F-83DE-A626-06B813143EC8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0074229498839891e-015 2.8382356662274294e-015 -39.084320717595602 ;
	setAttr ".bps" -type "matrix" -0.30404017379319664 -0.95265921121868291 -4.953655732320308e-017 0
		 -0.95265921121868324 0.30404017379319659 -1.1199878265045381e-016 0 1.2175777543489738e-016 1.3139328284341272e-017 -1 0
		 -5.3827824555730412 14.980359667212543 8.0058549684334155e-031 1;
	setAttr ".radi" 0.54122289480348262;
createNode joint -n "joint10" -p "joint9";
	rename -uid "1144B61D-4E14-2AFF-A2AB-EAB4D47FA40E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.7969759662006624 3.5527136788005009e-015 -8.9016002958117703e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 72.299572211332787 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 3.3306690738754696e-016 2.4422245534963262e-016 0
		 -4.9960036108132044e-016 1 1.3139328284341232e-017 0 -2.4422245534963272e-016 -1.3139328284341321e-017 1 0
		 -5.9291353406388918 13.26845396067289 7.6360764191110662e-031 1;
	setAttr ".radi" 0.54122289480348262;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D50560B2-48A9-C3E1-ACE8-72AEB0EDEC11";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "BB3ED6E3-405B-B27C-D175-07A7891AB8B1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "16BB9B8C-4D8B-407F-5C96-8FB77882FE7A";
createNode displayLayerManager -n "layerManager";
	rename -uid "1AC0923C-454F-8A2F-2196-D6A3F22414C7";
createNode displayLayer -n "defaultLayer";
	rename -uid "4709544A-45B7-3CE3-336E-37B8DA4AEE1E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "576CA623-4370-BC86-9483-088D17EEE14F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7E2BF61A-41E3-1E76-C1BF-1F88C8369307";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A35E6BE0-4392-E77C-127E-DA828172FDA8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1714\n                -height 790\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1714\n            -height 790\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1713\n                -height 790\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1713\n            -height 790\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 3433\n                -height 1647\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 3433\n            -height 1647\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 2404\n                -height 1647\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2404\n            -height 1647\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 23 100 -ps 2 77 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showAssignedMaterials 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -isSet 0\\n    -isSetMember 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    -renderFilterVisible 0\\n    -renderFilterIndex 0\\n    -selectionOrder \\\"chronological\\\" \\n    -expandAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showAssignedMaterials 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -isSet 0\\n    -isSetMember 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    -renderFilterVisible 0\\n    -renderFilterIndex 0\\n    -selectionOrder \\\"chronological\\\" \\n    -expandAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2404\\n    -height 1647\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2404\\n    -height 1647\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D49C8F5F-4328-1953-A4E0-729423C4EA02";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 240 -ast 1 -aet 240 ";
	setAttr ".st" 6;
createNode animCurveTA -n "joint4_rotateX";
	rename -uid "70919D5B-461C-0C2D-9AB3-338EA2F8BFF1";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint4_rotateY";
	rename -uid "96665C25-486A-D074-5583-91BD81DBFC86";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint4_rotateZ";
	rename -uid "A30CBDCE-44EB-D7D3-70F3-8AA447122593";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -37.599761890578911 120 38.669545145938805
		 240 -37.599761890578911;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 0.87935882806777954;
	setAttr -s 3 ".koy[1:2]"  0 0.47615960240364075;
createNode animCurveTA -n "joint5_rotateX";
	rename -uid "45C878EE-4ADD-DE17-226D-CFA8455063DD";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "CE1E2BCD-43D0-42C4-3C97-9EBADEC69381";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint5_rotateZ";
	rename -uid "89D7F378-411D-881C-51A7-C7BD58B33171";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -37.599761890578911 120 38.669545145938805
		 240 -37.599761890578911;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 0.87935882806777954;
	setAttr -s 3 ".koy[1:2]"  0 0.47615960240364075;
createNode animCurveTA -n "joint6_rotateX";
	rename -uid "D465B0BA-4674-CD74-9D9D-FFAE07329C83";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint6_rotateY";
	rename -uid "2D932365-4BCE-4210-9844-4793119AA9E6";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint6_rotateZ";
	rename -uid "028A1058-43E9-4549-E4FE-59B1ABDED86B";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -37.599761890578911 120 38.669545145938805
		 240 -37.599761890578911;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 0.87935882806777954;
	setAttr -s 3 ".koy[1:2]"  0 0.47615960240364075;
createNode animCurveTA -n "joint7_rotateX";
	rename -uid "D70EE6FA-4258-BAE1-3E2F-C9A8BE8DB5B4";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint7_rotateY";
	rename -uid "69CEAE34-4218-0F64-A0D6-7CA77FAD0863";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint7_rotateZ";
	rename -uid "DF2EAAA5-416E-30A2-42C4-6CB01FBB6BA8";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -37.599761890578911 120 50.857337577656033
		 240 -37.599761890578911;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 0.87935882806777954;
	setAttr -s 3 ".koy[1:2]"  0 0.47615960240364075;
createNode animCurveTA -n "joint8_rotateX";
	rename -uid "97B57935-4027-58E7-D793-A0B702F8A75E";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint8_rotateY";
	rename -uid "C6E7E0DC-42A1-BFB8-3C1B-A888FBA37664";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint8_rotateZ";
	rename -uid "B9D323FC-4334-7118-7CF4-C98C24D83184";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -37.599761890578911 120 50.857337577656033
		 240 -37.599761890578911;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 0.87935882806777954;
	setAttr -s 3 ".koy[1:2]"  0 0.47615960240364075;
createNode animCurveTA -n "joint9_rotateX";
	rename -uid "01A8E438-4494-5039-2A1F-9B9A136C3128";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint9_rotateY";
	rename -uid "77B9D24F-4FC2-921A-33C6-C0B6234008D8";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint9_rotateZ";
	rename -uid "0AD93F74-4FDC-19F1-A339-12B44BBC158F";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -37.599761890578911 120 50.857337577656033
		 240 -37.599761890578911;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 0.87935882806777954;
	setAttr -s 3 ".koy[1:2]"  0 0.47615960240364075;
createNode animCurveTU -n "joint4_visibility";
	rename -uid "44EC5E65-4AE7-4ACF-CA58-91BF47B2A198";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 5 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint4_translateX";
	rename -uid "0A402760-4E06-A43A-349B-F4AA4219863E";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 4.0815481930939024 120 4.0815481930939024
		 240 4.0815481930939024;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint4_translateY";
	rename -uid "BAB3B7DF-4C3E-1E89-753D-568C94E94018";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 6.2172489379008766e-015 120 6.2172489379008766e-015
		 240 6.2172489379008766e-015;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint4_translateZ";
	rename -uid "5852C568-4D94-852C-B3C6-2199B64738EB";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint4_scaleX";
	rename -uid "6FFD3D22-4D3C-2208-2BAF-81929087861F";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint4_scaleY";
	rename -uid "E0F21C52-453B-CF99-28FA-1EB1C92CA529";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint4_scaleZ";
	rename -uid "D5279F5C-413F-4F69-6E5F-F9901DFD64B7";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint5_visibility";
	rename -uid "51FDBF97-4EB1-4926-A4AC-0E92D64EE561";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 5 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint5_translateX";
	rename -uid "F2EA9ACF-4F10-7D0D-028B-0A9208F9E901";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 2.5461321059242756 120 2.5461321059242756
		 240 2.5461321059242756;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint5_translateY";
	rename -uid "5342D5E2-4F21-CD3E-4B35-93A77579DC7A";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -4.4408920985006262e-016 120 -4.4408920985006262e-016
		 240 -4.4408920985006262e-016;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint5_translateZ";
	rename -uid "9FC196AF-4C98-3AA8-06F4-A7AF02FADA72";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint5_scaleX";
	rename -uid "B9D9DB20-4156-5F86-F167-CDA4F4DAFB8A";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint5_scaleY";
	rename -uid "1475C161-4FD4-93A7-C026-87B9B3C46902";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint5_scaleZ";
	rename -uid "7F919D06-4DBD-4810-6B1A-C8AF223B608C";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint6_visibility";
	rename -uid "E8C239BD-4A8A-14C1-49CD-9AAFE3E49363";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 5 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint6_translateX";
	rename -uid "97FC86D7-4C75-C400-1B2C-A9A5B793EC16";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 2.3386342935511397 120 2.3386342935511397
		 240 2.3386342935511397;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint6_translateY";
	rename -uid "32C83A59-496D-E25B-5F54-539011911A69";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint6_translateZ";
	rename -uid "A0F937A5-4591-0588-8FCE-2D857DBA4736";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3183301943474674e-016 120 -1.3183301943474674e-016
		 240 -1.3183301943474674e-016;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint6_scaleX";
	rename -uid "F1455885-4A8F-99AB-0CA6-DFABA3EB5BD7";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint6_scaleY";
	rename -uid "BBC97458-41D0-572E-80FD-EAA9FFCE2F97";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint6_scaleZ";
	rename -uid "DC8FEB67-416B-502C-7452-FA819CD6C06A";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint7_visibility";
	rename -uid "3EC85338-4F32-95BA-053E-159730E826A5";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 5 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint7_translateX";
	rename -uid "D9AFB668-43DE-0399-6D02-A7A4BBDC7CEF";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 2.3088751970488994 120 2.3088751970488994
		 240 2.3088751970488994;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint7_translateY";
	rename -uid "4F2D72B7-4C26-EDC8-F4E3-4AB066F2904F";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 0 120 0 240 0;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint7_translateZ";
	rename -uid "057839C9-4CD7-1EBD-2C1B-AC97E6C35D66";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -2.209925965911846e-016 120 -2.209925965911846e-016
		 240 -2.209925965911846e-016;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint7_scaleX";
	rename -uid "65AA4409-4A1D-7926-E5CD-46A6E31DAC4B";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint7_scaleY";
	rename -uid "4543C962-4B3D-4411-1B34-F3B747BB2773";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint7_scaleZ";
	rename -uid "91D364BD-446B-13A2-CD20-AB94A85EAAB1";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint8_visibility";
	rename -uid "9390BEF3-4CCD-F232-CC6E-EE9B2100C3A3";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 5 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint8_translateX";
	rename -uid "193C5683-4271-E3B0-54E8-359D97E9D282";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1.8801385057610251 120 1.8801385057610251
		 240 1.8801385057610251;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint8_translateY";
	rename -uid "BF555D6F-4587-2701-A3E2-D1A82B4B3070";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 3.5527136788005009e-015 120 3.5527136788005009e-015
		 240 3.5527136788005009e-015;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint8_translateZ";
	rename -uid "0E0D6CDB-40F4-A935-7CC3-8A8577DDF725";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -2.3006967646271957e-016 120 -2.3006967646271957e-016
		 240 -2.3006967646271957e-016;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint8_scaleX";
	rename -uid "3FA917B0-4F9C-C7C5-1AF3-5EB8FBBB01A9";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint8_scaleY";
	rename -uid "36E75917-4369-A02D-EFAC-8BA649C1A1EB";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint8_scaleZ";
	rename -uid "987597E4-47E9-25F2-2618-3BADCFFEB8EF";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint9_visibility";
	rename -uid "6AF78294-4760-518E-13DA-209195E07858";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 5 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint9_translateX";
	rename -uid "92FD24FD-4174-752A-2D1D-E08010CB89F7";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1.8285371717651957 120 1.8285371717651957
		 240 1.8285371717651957;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint9_translateY";
	rename -uid "5DC4370B-4654-8E37-1808-E2BE504E3580";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -5.3290705182007514e-015 120 -5.3290705182007514e-015
		 240 -5.3290705182007514e-015;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint9_translateZ";
	rename -uid "05620487-4B55-7780-689B-E291D170AC5A";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9942456146584764e-016 120 -1.9942456146584764e-016
		 240 -1.9942456146584764e-016;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint9_scaleX";
	rename -uid "DD33EE6E-4F4F-7B2C-B5F2-2E9BE5DB0A5F";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint9_scaleY";
	rename -uid "A1D18B72-4C79-21B3-21C7-CBB5BDFDB982";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint9_scaleZ";
	rename -uid "C1047CA6-43E9-3CD3-0A57-EB85639D3716";
	setAttr ".tan" 1;
	setAttr -s 3 ".ktv[0:2]"  1 1 120 1 240 1;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  4.9583334922790527 5;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  5 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "82E13C9B-413E-EABF-3662-2E88B01AF995";
	setAttr -s 66 ".wl";
	setAttr -s 5 ".wl[0].w[0:4]"  0.99582950982210683 0.0036763385147548979 
		0.00039613752786635118 6.7192089066881071e-005 3.0822046204977396e-005;
	setAttr -s 5 ".wl[1].w[0:4]"  0.99582950896658984 0.0036763392670389815 
		0.00039613761034586859 6.7192103227103572e-005 3.0822052798173993e-005;
	setAttr -s 5 ".wl[2].w[0:4]"  0.99415788904754721 0.0050964746688721054 
		0.00059836424209188115 0.00010201269074291637 4.525935074574148e-005;
	setAttr -s 5 ".wl[3].w[0:4]"  0.97982394243215121 0.019160775222519931 
		0.00087994238209516008 9.7257040166814381e-005 3.8082923066880994e-005;
	setAttr -s 5 ".wl[4].w[0:4]"  0.98559919642556826 0.013780397243115675 
		0.00053626047718578545 5.9732286333886936e-005 2.4413567796415691e-005;
	setAttr -s 5 ".wl[5].w[0:4]"  0.9784086450523457 0.020462934659761369 
		0.00097867784311723776 0.00010793998033474079 4.180246444093122e-005;
	setAttr -s 5 ".wl[6].w[0:4]"  0.4902477141169761 0.50470752686805642 
		0.0048041749855202822 0.00018467489878118968 5.5909130666008588e-005;
	setAttr -s 5 ".wl[7].w[0:4]"  0.49909725862996807 0.49909725862996829 
		0.0017173292353829469 6.6671954845613343e-005 2.1481549834967283e-005;
	setAttr -s 5 ".wl[8].w[0:4]"  0.4990972581722542 0.49909725817225442 
		0.0017173301039338301 6.6671990255672681e-005 2.1481561301787893e-005;
	setAttr -s 5 ".wl[9].w[0:4]"  0.48773275974325303 0.50627066392369402 
		0.0057127533745329967 0.00021866758082356513 6.5155377696397631e-005;
	setAttr -s 5 ".wl[10].w[1:5]"  0.0030703992428734411 0.69738078408299542 
		0.29467010393054194 0.0042688365277686584 0.00060987621582044059;
	setAttr -s 5 ".wl[11].w[1:5]"  0.0035881116647097496 0.75204631767164565 
		0.23908171149270133 0.0045705575307204835 0.00071330164022292812;
	setAttr -s 5 ".wl[12].w[1:5]"  0.00055891644761926242 0.45345630244326329 
		0.53815281973310047 0.0073281914363900642 0.00050376993962681239;
	setAttr -s 5 ".wl[13].w[2:6]"  0.0033032761676126863 0.45412663153082716 
		0.53025019592809497 0.01157543341703905 0.00074446295642617392;
	setAttr -s 5 ".wl[14].w[3:7]"  0.0074346707898460896 0.48708063855671802 
		0.49497438755248796 0.009284513396248072 0.0012257897046999248;
	setAttr -s 5 ".wl[15].w[2:6]"  0.015912525346898722 0.65471070232494266 
		0.32185961130086005 0.006744893718926016 0.00077226730837257052;
	setAttr -s 5 ".wl[16].w[2:6]"  0.0022705470476128932 0.15402373237684214 
		0.76689416171795732 0.074642251057457615 0.0021693078001300027;
	setAttr -s 5 ".wl[17].w[3:7]"  0.002178670476931347 0.22707696139229278 
		0.75817340188800741 0.01148448650984584 0.00108647973292259;
	setAttr -s 5 ".wl[18].w[5:9]"  0.0018971385961960752 0.039384753416501869 
		0.63124536692218935 0.32150237576900809 0.0059703652961046426;
	setAttr -s 5 ".wl[19].w[5:9]"  0.0046043213829142816 0.060178862787799985 
		0.59978571954606896 0.31401908197865425 0.021412014304562594;
	setAttr -s 5 ".wl[20].w[5:9]"  0.0045912312265537361 0.066705637759997605 
		0.57641724707874908 0.33557627391714789 0.016709610017551623;
	setAttr -s 5 ".wl[21].w[5:9]"  0.00069651877888017371 0.018471124228598212 
		0.71366536902489064 0.265063087901798 0.002103900065832959;
	setAttr -s 5 ".wl[22].w[3:7]"  0.0055440988417717477 0.4146350607607332 
		0.5546533134553383 0.02309134385616151 0.0020761830859952922;
	setAttr -s 5 ".wl[23].w[4:8]"  0.016792261555148742 0.55176660433874447 
		0.41605745498265706 0.013649240241065997 0.0017344388823836358;
	setAttr -s 5 ".wl[24].w[4:8]"  0.0030841975216934379 0.31677117180132586 
		0.63623878395353373 0.041699441198904938 0.0022064055245420468;
	setAttr -s 5 ".wl[25].w[4:8]"  0.0025259474492356194 0.050956333991329907 
		0.57281247526685364 0.35998366340493387 0.013721579887647025;
	setAttr -s 5 ".wl[26].w[5:9]"  0.0045910959815395232 0.066704298050505775 
		0.57641938100238332 0.33557605784874472 0.016709167116826625;
	setAttr -s 5 ".wl[27].w[5:9]"  0.00066674279130081264 0.0027078804561520807 
		0.027215305938524954 0.5058415780018185 0.46356849281220369;
	setAttr -s 5 ".wl[28].w[0:4]"  0.99526421576590662 0.0041596467583813624 
		0.00046203379717447187 7.8508868540085787e-005 3.5594809997529931e-005;
	setAttr -s 5 ".wl[29].w[0:4]"  0.99403693758943146 0.0054075215274222172 
		0.00046020825857599052 6.6932496353975068e-005 2.8400128216436128e-005;
	setAttr -s 5 ".wl[30].w[0:4]"  0.99526421634466122 0.0041596462550463403 
		0.00046203373679905719 7.8508858149564268e-005 3.5594805343756443e-005;
	setAttr -s 5 ".wl[31].w[0:4]"  0.99451062169375093 0.0047990690128583407 
		0.00055385085507866103 9.4325606373335226e-005 4.2132831938738557e-005;
	setAttr -s 5 ".wl[32].w[5:9]"  0.00065189813847434065 0.0025342191824138426 
		0.021581626207857373 0.5129627754964351 0.46226948097481946;
	setAttr -s 5 ".wl[33].w[5:9]"  0.00011297924456655102 0.00050983415099616362 
		0.0085973566189544506 0.53269518841667995 0.45808464156880296;
	setAttr -s 5 ".wl[34].w[0:4]"  0.98302985247653651 0.016186374445292889 
		0.00067826501221613603 7.5301941462269312e-005 3.0206124492063785e-005;
	setAttr -s 5 ".wl[35].w[0:4]"  0.98302985171761026 0.01618637516915682 
		0.00067826504229984662 7.5301944958726789e-005 3.0206125974426462e-005;
	setAttr -s 5 ".wl[36].w[0:4]"  0.49668398301777522 0.50022094031520381 
		0.0029453301206469004 0.00011400416901028145 3.5742377363841006e-005;
	setAttr -s 5 ".wl[37].w[0:4]"  0.49668398438118883 0.5002209374031833 
		0.0029453315867587187 0.00011400423149957734 3.5742397369679964e-005;
	setAttr -s 5 ".wl[38].w[1:5]"  0.00070727135415142518 0.45142605024921179 
		0.53854026437482705 0.0086877546787838319 0.00063865934302597077;
	setAttr -s 5 ".wl[39].w[1:5]"  0.0030704063933419223 0.69738061475789836 
		0.29467025514933609 0.0042688460150933326 0.00060987768433034108;
	setAttr -s 5 ".wl[40].w[4:8]"  0.00039314101331094768 0.012053544635900637 
		0.60224043234637381 0.38261974632099555 0.0026931356834190368;
	setAttr -s 5 ".wl[41].w[4:8]"  0.0042563669447423557 0.50825586756143715 
		0.4836722882291869 0.0034332948422710198 0.00038218242236232427;
	setAttr -s 5 ".wl[42].w[0:4]"  0.9945106211227005 0.0047990695072018088 
		0.00055385091648472073 9.4325616979000566e-005 4.2132836634012526e-005;
	setAttr -s 5 ".wl[43].w[5:9]"  0.00026766849065022296 0.0011672840896747223 
		0.016320227511509734 0.51795624277078556 0.46428857713737981;
	setAttr -s 5 ".wl[44].w[5:9]"  0.0018971411782329197 0.039384764512547445 
		0.63124555590535369 0.32150215759620171 0.0059703808076641933;
	setAttr -s 5 ".wl[45].w[5:9]"  0.0058487410523988268 0.3664588446628807 
		0.59137645958881091 0.034218334742585552 0.0020976199533241364;
	setAttr -s 5 ".wl[46].w[3:7]"  0.007249756640805502 0.49217437554183474 
		0.49217437554183474 0.0074537358168445273 0.00094775645868048477;
	setAttr -s 5 ".wl[47].w[0:4]"  0.0005480643839993665 0.010669232084609003 
		0.91835939733000616 0.068418153765426093 0.0020051524359593828;
	setAttr -s 5 ".wl[48].w[0:4]"  0.9798239388052864 0.019160778648152261 
		0.00087994255579763978 9.725705987234949e-005 3.808293089133236e-005;
	setAttr -s 5 ".wl[49].w[3:7]"  0.0022885012525231839 0.064190508582659109 
		0.71308992343387556 0.21363024951182494 0.0068008172191171626;
	setAttr -s 5 ".wl[50].w[3:7]"  0.0050181721947005183 0.3551973548638197 
		0.61492120214363899 0.022685360493464694 0.0021779103043761457;
	setAttr -s 5 ".wl[51].w[2:6]"  0.003303286191745974 0.4541268260482228 
		0.5302499786350241 0.011575444776720361 0.00074446434828674202;
	setAttr -s 5 ".wl[52].w[1:5]"  0.00063838225067898056 0.10369213766896765 
		0.80601883617187664 0.087002519623735286 0.0026481242847415333;
	setAttr -s 5 ".wl[53].w[0:4]"  0.49024768188342643 0.50470755807430201 
		0.0048041760006778591 0.00018467490935824237 5.5909132235446161e-005;
	setAttr -s 5 ".wl[54].w[5:9]"  0.00065193639836089179 0.0025343628491577993 
		0.021582655343787251 0.51296170512507999 0.46226934028361411;
	setAttr -s 5 ".wl[55].w[4:8]"  0.013804578615369484 0.64637770422310203 
		0.32730038379498627 0.011115123136520516 0.0014022102300217136;
	setAttr -s 5 ".wl[56].w[3:7]"  0.0042842343878134034 0.44167289478333843 
		0.54658335496662225 0.0065945337555277667 0.00086498210669819773;
	setAttr -s 5 ".wl[57].w[2:6]"  0.0048557821382033883 0.31619340150910991 
		0.65532547988505618 0.022201166157829567 0.0014241703098009746;
	setAttr -s 5 ".wl[58].w[1:5]"  0.0012113683576139964 0.43512512005115977 
		0.55101382598242821 0.011547676659609325 0.0011020089491886927;
	setAttr -s 5 ".wl[59].w[0:4]"  0.98559919574972443 0.013780397889255575 
		0.00053626050269034735 5.973228927891559e-005 2.4413569050750285e-005;
	setAttr -s 5 ".wl[60].w[2:6]"  0.0048545136471809767 0.39291415872051316 
		0.58179843008826382 0.019176663337084024 0.0012562342069579427;
	setAttr -s 5 ".wl[61].w[5:9]"  0.0001648019330256384 0.00061626621132819894 
		0.0057992668546357198 0.49670983250050527 0.49670983250050516;
	setAttr -s 5 ".wl[62].w[5:9]"  1.0456281573366775e-005 4.1974411521175631e-005 
		0.00052518910249159758 0.49971119010220694 0.49971119010220694;
	setAttr -s 5 ".wl[63].w[5:9]"  9.3993869125724684e-005 0.00034337993943587538 
		0.0030251747757611609 0.49826872570783859 0.49826872570783859;
	setAttr -s 5 ".wl[64].w[5:9]"  7.6045498245628967e-005 0.00029722521647200365 
		0.0033019366750599547 0.49816239630511122 0.49816239630511122;
	setAttr -s 5 ".wl[65].w[5:9]"  8.2541950863628268e-005 0.00030258037097762714 
		0.002699262661959989 0.49845780750809937 0.49845780750809937;
	setAttr -s 10 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.0053475171226096121 -0.99998570192809411 0 -0 0.99998570192809411 0.0053475171226096121 -0 0
		 0 -0 1 -0 0.044691347033414305 -0.064709645078454961 -0 1;
	setAttr ".pm[1]" -type "matrix" 0.20395425411200119 -0.97898041973760486 0 -0 0.97898041973760486 0.20395425411200119 -0 0
		 0 -0 1 -0 -3.2810708145956018 -0.73129582676909366 -0 1;
	setAttr ".pm[2]" -type "matrix" 0.23202265969806438 -0.97271038104187824 0 -0 0.97271038104187824 0.23202265969806438 -0 0
		 0 -0 1 -0 -6.3826592590325877 -0.91522187908948094 -0 1;
	setAttr ".pm[3]" -type "matrix" -0.10729075757589358 0.99422768686995933 1.217577754348973e-016 -0
		 0.99422768686995955 0.10729075757589367 1.3139328284341281e-017 0 -7.7037197775489379e-033 1.2246467991473532e-016 -1 0
		 -10.16603570487575 -2.6436691805698849 -3.2375609999894162e-016 1;
	setAttr ".pm[4]" -type "matrix" -0.55290182175472791 0.83324640743318101 1.2175777543489733e-016 -0
		 0.83324640743318112 0.55290182175472813 1.31393282843413e-017 0 -5.637179776174527e-017 1.0871898750322997e-016 -1 0
		 -10.068418337628176 -8.1984845773318469 -3.2375609999894167e-016 1;
	setAttr ".pm[5]" -type "matrix" -0.84398612185371014 0.53636501201917808 1.2175777543489728e-016 -0
		 0.53636501201917808 0.84398612185371047 1.3139328284341293e-017 0 -9.571439672167934e-017 7.6396021407031066e-017 -1 0
		 -8.0004058922872971 -12.535693435795896 -1.9192308056419532e-016 1;
	setAttr ".pm[6]" -type "matrix" -0.9976986090714296 -0.067804759839806342 1.217577754348973e-016 -0
		 -0.067804759839806564 0.99769860907142993 1.3139328284341301e-017 0 -1.2236847219380476e-016 4.8533328314278967e-018 -1 0
		 -0.88033250447768052 -16.206477136526658 2.906951602698947e-017 1;
	setAttr ".pm[7]" -type "matrix" -0.83661852862831143 -0.54778594136377567 1.2175777543489728e-016 -0
		 -0.5477859413637759 0.83661852862831165 1.3139328284341293e-017 0 -1.0906235024652577e-016 -5.5704592138554506e-017 -1 0
		 5.531232056129352 -15.481459017688763 2.5913919248970902e-016 1;
	setAttr ".pm[8]" -type "matrix" -0.30404017379319637 -0.95265921121868224 1.2175777543489728e-016 -0
		 -0.95265921121868258 0.30404017379319642 1.313932828434129e-017 0 -4.9536557323203061e-017 -1.1199878265045381e-016 -1 0
		 12.634595511055471 -9.6825884449918664 4.5856375395555676e-016 1;
	setAttr ".pm[9]" -type "matrix" 0.99999999999999956 -3.3306690738754681e-016 -2.4422245534963253e-016 -0
		 4.9960036108132025e-016 1 -1.3139328284341353e-017 0 2.4422245534963262e-016 1.3139328284341239e-017 1 -0
		 5.9291353406388829 -13.268453960672892 -1.2736894185761604e-015 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".ma";
	setAttr -s 10 ".dpf[0:9]"  4 4 4 4 4 4 4 4 4 4;
	setAttr -s 10 ".lw";
	setAttr -s 10 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 10 ".ifcl";
	setAttr -s 10 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "0A39B099-4D86-C51A-53A5-8A81177CECB3";
createNode objectSet -n "skinCluster1Set";
	rename -uid "CA65500D-4CF0-4939-372E-89BBACB76D11";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "CDFE34D3-412E-E5EB-168F-3483111EEB4C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "EB630A65-4F92-0814-BDC0-9AB0C5666785";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "6AE0603F-4469-8BD6-95F0-63BB57A3905C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "68788F40-4B1B-1CBC-4266-3C819D78D84C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "31C93BC7-4656-6AF1-5AFE-0E92C956288B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "ACB1DC29-4FDB-7D69-A8AC-9BB6626BB5BE";
	setAttr -s 10 ".wm";
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.064947707598790316
		 -0.044344672098265828 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70521361404803806 0.70899489318422093 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4056483444486982 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.099857220391761689 0.99500177664948475 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1252679774625123 2.2204460492503131e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.014380097160569294 0.99989660105715561 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.0815481930939024 6.2172489379008766e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98544449493715391 0.16999749232873287 1.0409344242172972e-017 6.0341072323108285e-017 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5461321059242756 -4.4408920985006262e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.23689881428982262 0.9715343286719601 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3386342935511397 0 -1.3183301943474674e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.20788736896880006 0.97815277018634972 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3088751970488994 0 -2.209925965911846e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.31170845431059263 0.95017779363196087 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8801385057610251 3.5527136788005009e-015
		 -2.3006967646271957e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.25314458661637779 0.9674284564074096 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8285371717651957 -5.3290705182007514e-015
		 -1.9942456146584764e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.3345003993577147 0.94239560845195447 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7969759662006624 3.5527136788005009e-015
		 -8.9016002958117703e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.58989822266506409 0.8074776076750354 3.6120848510474167e-017 4.9443743381119716e-017 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr ".bp" yes;
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "skinCluster1GroupId.id" "pCylinderShape1.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "pCylinderShape1.iog.og[2].gco";
connectAttr "groupId2.id" "pCylinderShape1.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "pCylinderShape1.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "pCylinderShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4_scaleX.o" "joint4.sx";
connectAttr "joint4_scaleY.o" "joint4.sy";
connectAttr "joint4_scaleZ.o" "joint4.sz";
connectAttr "joint4_rotateX.o" "joint4.rx";
connectAttr "joint4_rotateY.o" "joint4.ry";
connectAttr "joint4_rotateZ.o" "joint4.rz";
connectAttr "joint4_visibility.o" "joint4.v";
connectAttr "joint4_translateX.o" "joint4.tx";
connectAttr "joint4_translateY.o" "joint4.ty";
connectAttr "joint4_translateZ.o" "joint4.tz";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5_scaleX.o" "joint5.sx";
connectAttr "joint5_scaleY.o" "joint5.sy";
connectAttr "joint5_scaleZ.o" "joint5.sz";
connectAttr "joint5_rotateX.o" "joint5.rx";
connectAttr "joint5_rotateY.o" "joint5.ry";
connectAttr "joint5_rotateZ.o" "joint5.rz";
connectAttr "joint5_visibility.o" "joint5.v";
connectAttr "joint5_translateX.o" "joint5.tx";
connectAttr "joint5_translateY.o" "joint5.ty";
connectAttr "joint5_translateZ.o" "joint5.tz";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6_scaleX.o" "joint6.sx";
connectAttr "joint6_scaleY.o" "joint6.sy";
connectAttr "joint6_scaleZ.o" "joint6.sz";
connectAttr "joint6_rotateX.o" "joint6.rx";
connectAttr "joint6_rotateY.o" "joint6.ry";
connectAttr "joint6_rotateZ.o" "joint6.rz";
connectAttr "joint6_visibility.o" "joint6.v";
connectAttr "joint6_translateX.o" "joint6.tx";
connectAttr "joint6_translateY.o" "joint6.ty";
connectAttr "joint6_translateZ.o" "joint6.tz";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7_scaleX.o" "joint7.sx";
connectAttr "joint7_scaleY.o" "joint7.sy";
connectAttr "joint7_scaleZ.o" "joint7.sz";
connectAttr "joint7_rotateX.o" "joint7.rx";
connectAttr "joint7_rotateY.o" "joint7.ry";
connectAttr "joint7_rotateZ.o" "joint7.rz";
connectAttr "joint7_visibility.o" "joint7.v";
connectAttr "joint7_translateX.o" "joint7.tx";
connectAttr "joint7_translateY.o" "joint7.ty";
connectAttr "joint7_translateZ.o" "joint7.tz";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8_scaleX.o" "joint8.sx";
connectAttr "joint8_scaleY.o" "joint8.sy";
connectAttr "joint8_scaleZ.o" "joint8.sz";
connectAttr "joint8_rotateX.o" "joint8.rx";
connectAttr "joint8_rotateY.o" "joint8.ry";
connectAttr "joint8_rotateZ.o" "joint8.rz";
connectAttr "joint8_visibility.o" "joint8.v";
connectAttr "joint8_translateX.o" "joint8.tx";
connectAttr "joint8_translateY.o" "joint8.ty";
connectAttr "joint8_translateZ.o" "joint8.tz";
connectAttr "joint8.s" "joint9.is";
connectAttr "joint9_scaleX.o" "joint9.sx";
connectAttr "joint9_scaleY.o" "joint9.sy";
connectAttr "joint9_scaleZ.o" "joint9.sz";
connectAttr "joint9_rotateX.o" "joint9.rx";
connectAttr "joint9_rotateY.o" "joint9.ry";
connectAttr "joint9_rotateZ.o" "joint9.rz";
connectAttr "joint9_visibility.o" "joint9.v";
connectAttr "joint9_translateX.o" "joint9.tx";
connectAttr "joint9_translateY.o" "joint9.ty";
connectAttr "joint9_translateZ.o" "joint9.tz";
connectAttr "joint9.s" "joint10.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint5.wm" "skinCluster1.ma[4]";
connectAttr "joint6.wm" "skinCluster1.ma[5]";
connectAttr "joint7.wm" "skinCluster1.ma[6]";
connectAttr "joint8.wm" "skinCluster1.ma[7]";
connectAttr "joint9.wm" "skinCluster1.ma[8]";
connectAttr "joint10.wm" "skinCluster1.ma[9]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "joint6.liw" "skinCluster1.lw[5]";
connectAttr "joint7.liw" "skinCluster1.lw[6]";
connectAttr "joint8.liw" "skinCluster1.lw[7]";
connectAttr "joint9.liw" "skinCluster1.lw[8]";
connectAttr "joint10.liw" "skinCluster1.lw[9]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint10.obcc" "skinCluster1.ifcl[9]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinderShape1.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCylinderShape1.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose2.m[0]";
connectAttr "joint2.msg" "bindPose2.m[1]";
connectAttr "joint3.msg" "bindPose2.m[2]";
connectAttr "joint4.msg" "bindPose2.m[3]";
connectAttr "joint5.msg" "bindPose2.m[4]";
connectAttr "joint6.msg" "bindPose2.m[5]";
connectAttr "joint7.msg" "bindPose2.m[6]";
connectAttr "joint8.msg" "bindPose2.m[7]";
connectAttr "joint9.msg" "bindPose2.m[8]";
connectAttr "joint10.msg" "bindPose2.m[9]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "joint1.bps" "bindPose2.wm[0]";
connectAttr "joint2.bps" "bindPose2.wm[1]";
connectAttr "joint3.bps" "bindPose2.wm[2]";
connectAttr "joint4.bps" "bindPose2.wm[3]";
connectAttr "joint5.bps" "bindPose2.wm[4]";
connectAttr "joint6.bps" "bindPose2.wm[5]";
connectAttr "joint7.bps" "bindPose2.wm[6]";
connectAttr "joint8.bps" "bindPose2.wm[7]";
connectAttr "joint9.bps" "bindPose2.wm[8]";
connectAttr "joint10.bps" "bindPose2.wm[9]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of cat_tail.ma
