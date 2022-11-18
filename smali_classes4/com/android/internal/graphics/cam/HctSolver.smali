.class public Lcom/android/internal/graphics/cam/HctSolver;
.super Ljava/lang/Object;
.source "HctSolver.java"


# static fields
.field static final blacklist CRITICAL_PLANES:[D

.field static final blacklist LINRGB_FROM_SCALED_DISCOUNT:[[D

.field static final blacklist SCALED_DISCOUNT_FROM_LINRGB:[[D

.field static final blacklist Y_FROM_LINRGB:[D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 31
    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/internal/graphics/cam/HctSolver;->SCALED_DISCOUNT_FROM_LINRGB:[[D

    .line 45
    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_3

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    new-array v2, v0, [D

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/internal/graphics/cam/HctSolver;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    .line 59
    new-array v0, v0, [D

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/graphics/cam/HctSolver;->Y_FROM_LINRGB:[D

    .line 65
    const/16 v0, 0xff

    new-array v0, v0, [D

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/internal/graphics/cam/HctSolver;->CRITICAL_PLANES:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3f53aca939f9bf80L    # 0.001200833568784504
        0x3f63938d761f2c49L    # 0.002389694492170889
        0x3f32527a6d20ac99L    # 2.795742885861124E-4
    .end array-data

    :array_1
    .array-data 8
        0x3f434dcd39abd367L    # 5.891086651375999E-4
        0x3f686678fe3bac59L    # 0.0029785502573438758
        0x3f356f44653168daL    # 3.270666104008398E-4
    .end array-data

    :array_2
    .array-data 8
        0x3f1a99547f1efd1dL    # 1.0146692491640572E-4
        0x3f4193d4431726edL    # 5.364214359186694E-4
        0x3f6b0448268cc828L    # 0.0032979401770712076
    .end array-data

    :array_3
    .array-data 8
        0x409574e125da5040L    # 1373.2198709594231
        -0x3f6ece4cad95c798L    # -1100.4251190754821
        -0x3fe2e2a16cb12fbfL    # -7.278681089101213
    .end array-data

    :array_4
    .array-data 8
        -0x3f8f02f1ca687dc0L    # -271.815969077903
        0x40817d43adeec650L    # 559.6580465940733
        -0x3fbfc50f292cbe56L    # -32.46047482791194
    .end array-data

    :array_5
    .array-data 8
        0x3fff658a28353577L    # 1.9622899599665666
        -0x3fb369c071f80c3fL    # -57.173814538844006
        0x40734b92b7c34f82L    # 308.7233197812385
    .end array-data

    :array_6
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_7
    .array-data 8
        0x3f8f14c71b1e49e2L    # 0.015176349177441876
        0x3fa74f955456b769L    # 0.045529047532325624
        0x3fb36cfc70f2ee2dL    # 0.07588174588720938
        0x3fbb322e37ba80a6L    # 0.10623444424209313
        0x3fc17bafff41098eL    # 0.13658714259697685
        0x3fc55e48e2a4d2cbL    # 0.16693984095186062
        0x3fc940e1c6089c06L    # 0.19729253930674434
        0x3fcd237aa96c6543L    # 0.2276452376616281
        0x3fd08309c6681740L    # 0.2579979360165119
        0x3fd274563819fbdeL    # 0.28835063437139563
        0x3fd467b652dbc0b0L    # 0.3188300904430532
        0x3fd675920d7da7b7L    # 0.350925934958123
        0x3fd8a114458f16a8L    # 0.3848314933096426
        0x3fdaeab2941ce8eeL    # 0.42057480301049466
        0x3fdd52dff06864acL    # 0.458183274052838
        0x3fdfda0cd6afa026L    # 0.4976837250274023
        0x3fe14053b5ba9b10L    # 0.5391024159806381
        0x3fe2a38dcdd9d833L    # 0.5824650784040898
        0x3fe416e99d2c6dbcL    # 0.6277969426914107
        0x3fe59a9b0dabee07L    # 0.6751227633498623
        0x3fe72ed5164ae78aL    # 0.7244668422128921
        0x3fe8d3c9c675c021L    # 0.775853049866786
        0x3fea89aa50b7831bL    # 0.829304845476233
        0x3fec50a71498c460L    # 0.8848452951698498
        0x3fee28efa7cbf7abL    # 0.942497089126609
        0x3ff009596f5c1eb0L    # 1.0022825574869039
        0x3ff1070f6a38d1ecL    # 1.0642236851973577
        0x3ff20db079160f60L    # 1.1283421258858297
        0x3ff31d52fb1a7c13L    # 1.1946592148522128
        0x3ff4360cfd3e997fL    # 1.2631959812511864
        0x3ff557f43d5f1b72L    # 1.3339731595349034
        0x3ff6831e2d2090c9L    # 1.407011200216447
        0x3ff7b79ff4a81f49L    # 1.4823302800086415
        0x3ff8f58e752cb288L    # 1.5599503113873272
        0x3ffa3cfe4b63a8afL    # 1.6398909516233677
        0x3ffb8e03d1cbbd1eL    # 1.7221716113234105
        0x3ffce8b322d8ae77L    # 1.8068114625156377
        0x3ffe4d201b01e2ceL    # 1.8938294463134073
        0x3fffbb5e5ab6180fL    # 1.9832442801866852
        0x400099c0a41b0043L    # 2.075074464868551
        0x40015ace08abc052L    # 2.1693382909216234
        0x400220e0d6998f93L    # 2.2660538449872063
        0x4002ec026ede8ab3L    # 2.36523901573795
        0x4003bc3c18a5a895L    # 2.4669114995532007
        0x400491970204ce3aL    # 2.5710888059345764
        0x40056c1c40ae8440L    # 2.6777882626779785
        0x40064bd4d29bd0e9L    # 2.7870270208169257
        0x400730c99eaeafeeL    # 2.898822059350997
        0x40081b03754d97e3L    # 3.0131901897720907
        0x40090a8b10f874ddL    # 3.1301480604002863
        0x4009ff6916d77856L    # 3.2497121605402226
        0x400af9a61744174aL    # 3.3718988244681087
        0x400bf94a8e4c897dL    # 3.4967242352587946
        0x400cfe5ee43216c1L    # 3.624204428461639
        0x400e08eb6de279d2L    # 3.754355295633311
        0x400f18f86d6c9be2L    # 3.887192587735158
        0x401017470938736eL    # 4.022731918402185
        0x4010a4da3d46b461L    # 4.160988767090289
        0x40113539d8e2ff50L    # 4.301978482107941
        0x4011c869d9745cf2L    # 4.445716283538092
        0x40125e6e33f75806L    # 4.592217266055746
        0x4012f74ad52cb09aL    # 4.741496401646282
        0x40139303a1c66fdaL    # 4.893568542229298
        0x4014319c7693702aL    # 5.048448422192488
        0x4014d31928a96beaL    # 5.20615066083972
        0x4015777d858da48eL    # 5.3666897647573375
        0x40161ecd535c325bL    # 5.5300801301023865
        0x4016c90c50ee0c43L    # 5.696336044816294
        0x4017763e35fdd6a4L    # 5.865471690767354
        0x40182666b34b8667L    # 6.037501145825082
        0x4018d98972bee5cfL    # 6.212438385869475
        0x40198faa17890716L    # 6.390297286737924
        0x401a48cc3e44b09eL    # 6.571091626112461
        0x401b04f37d15cd99L    # 6.7548350853498045
        0x401bc42363c7eda2L    # 6.941541251256611
        0x401c865f7bebdd24L    # 7.131223617812143
        0x401d4bab48f46014L    # 7.323895587840543
        0x401e140a485217a5L    # 7.5195704746346665
        0x401edf7ff18e9b89L    # 7.7182615035334345
        0x401fae0fb666ceb6L    # 7.919981813454504
        0x40203fde81723bbfL    # 8.124744458384042
        0x4020aa459ebb90eeL    # 8.332562408825165
        0x4021163ee38629a1L    # 8.543448553206703
        0x402183cbfd938b07L    # 8.757415699253682
        0x4021f2ee97fb71b0L    # 8.974476575321063
        0x402263a85b36f868L    # 9.194643831691977
        0x4022d5faed2b7406L    # 9.417930041841839
        0x402349e7f13506c4L    # 9.644347703669503
        0x4023bf710830edd2L    # 9.873909240696694
        0x40243697d0878b80L    # 10.106627003236781
        0x4024af5de6363078L    # 10.342513269534024
        0x402529c4e2d8a631L    # 10.58158024687427
        0x4025a5ce5db27ccdL    # 10.8238400726681
        0x4026237bebb81e6fL    # 11.069304815507364
        0x4026a2cf1f97aa0eL    # 11.317986476196008
        0x402723c989c19785L    # 11.569896988756009
        0x4027a66cb87126f5L    # 11.825048221409341
        0x40282aba37b49ccdL    # 12.083451977536606
        0x4028b0b391754c8fL    # 12.345119996613247
        0x4029385a4d7f7392L    # 12.610063955123938
        0x4029c1aff189e588L    # 12.878295467455942
        0x402a4cb6013d8c16L    # 13.149826086772048
        0x402ad96dfe3cbaefL    # 13.42466730586372
        0x402b67d9682a59d7L    # 13.702830557985108
        0x402bf7f9bcb0e5dbL    # 13.984327217668513
        0x402c89d077894ae9L    # 14.269168601521828
        0x402d1d5f12819719L    # 14.55736596900856
        0x402db2a7058388a2L    # 14.848930523210871
        0x402e49a9c69af7d4L    # 15.143873411576273
        0x402ee268c9fc1dedL    # 15.44220572664832
        0x402f7ce58209ba02L    # 15.743938506781891
        0x40300c90afad8a5bL    # 16.04908273684337
        0x40305b8ee860f20bL    # 16.35764934889634
        0x4030ab6e21a80812L    # 16.66964922287304
        0x4030fc2f112eac90L    # 16.985093187232053
        0x40314dd26bc67044L    # 17.30399201960269
        0x4031a058e5694aa2L    # 17.62635644741625
        0x4031f3c3313c4220L    # 17.95219714852476
        0x40324812019206eaL    # 18.281524751807332
        0x40329d4607ed8070L    # 18.614349837764564
        0x4032f35ff5044e3bL    # 18.95068293910138
        0x40334a6078c13c38L    # 19.290534541298456
        0x4033a2484246aaf7L    # 19.633915083172692
        0x4033fb17fff0ec0bL    # 19.98083495742689
        0x403454d05f589306L    # 20.331304511189067
        0x4034af720d54bb29L    # 20.685334046541502
        0x40350afdb5fd424fL    # 21.042933821039977
        0x4035677404acf91aL    # 21.404114048223256
        0x4035c4d5a403c8daL    # 21.76888489811322
        0x403623233de8cf6cL    # 22.137256497705877
        0x4036825d7b8c711bL    # 22.50923893145328
        0x4036e285056a611fL    # 22.884842241736916
        0x4037439a834ba09cL    # 23.264076429332462
        0x4037a59e9c487496L    # 23.6469514538663
        0x40380891f6ca5311L    # 24.033477234264016
        0x40386c75388dc754L    # 24.42366364919083
        0x4038d14906a44df5L    # 24.817520537484558
        0x4039370e0576286fL    # 25.21505769858089
        0x40399dc4d8c428bdL    # 25.61628489293138
        0x403a056e23a9751fL    # 26.021211842414342
        0x403a6e0a889d441aL    # 26.429848230738664
        0x403ad79aa9749101L    # 26.842203703840827
        0x403b421f2763c940L    # 27.258287870275353
        0x403bad98a3007244L    # 27.678110301598522
        0x403c1a07bc42c8a7L    # 28.10168053274597
        0x403c876d12875855L    # 28.529008062403893
        0x403cf5c944908e0fL    # 28.96010235337422
        0x403d651cf0884284L    # 29.39497283293396
        0x403dd568b4013ebdL    # 29.83362889318845
        0x403e46ad2bf8bab1L    # 30.276079891419332
        0x403eb8eaf4d7d567L    # 30.722335150426627
        0x403f2c22aa75073fL    # 31.172403958865512
        0x403fa054e8158e76L    # 31.62629557157785
        0x40400ac124376ae6L    # 32.08401920991837
        0x404045d5b2d3eadeL    # 32.54558406207592
        0x404081686cad3812L    # 33.010999283389665
        0x4040bd799e4a633aL    # 33.4802739966603
        0x4040fa0993ed4580L    # 33.953417292456834
        0x4041371899932659L    # 34.430438229418264
        0x404174a6faf55f12L    # 34.911345834551085
        0x4041b2b50389fbc7L    # 35.39614910352207
        0x4041f142fe8459f4L    # 35.88485700094671
        0x4042305136d5c4beL    # 36.37747846067349
        0x40426fdff72e0ed9L    # 36.87402238606382
        0x4042afef89fc2a2bL    # 37.37449765026789
        0x4042f080396ebd4eL    # 37.87891309649659
        0x404331924f74b6c1L    # 38.38727753828926
        0x4043732615bdde1fL    # 38.89959975977785
        0x4043b53bd5bb6319L    # 39.41588851594697
        0x4043f7d3d8a06a8dL    # 39.93615253289054
        0x40443aee67629979L    # 40.460400508064545
        0x40447e8bcaba9e04L    # 40.98864111053629
        0x4044c2ac4b24b69dL    # 41.520882981230194
        0x4045075030e1373cL    # 42.05713473317016
        0x40454c77c3f50cabL    # 42.597404951718396
        0x404592234c2a3e29L    # 43.141702194811224
        0x4045d85311106d15L    # 43.6900349931913
        0x40461f0759fd5306L    # 44.24241185063697
        0x404666406e0d3e0eL    # 44.798841244188324
        0x4046adfe94238b52L    # 45.35933162437017
        0x4046f64212eb2003L    # 45.92389141541209
        0x40473f0b30d6e0b4L    # 46.49252901546552
        0x4047885a3422271aL    # 47.065252796817916
        0x4047d22f62d13639L    # 47.64207110610409
        0x40481c8b02b1acffL    # 48.22299226451468
        0x4048676d595af778L    # 48.808024568002054
        0x4048b2d6ac2ebe65L    # 49.3971762874833
        0x4048fec740595582L    # 49.9904556690408
        0x40494b3f5ad2283bL    # 50.587870934119984
        0x4049983f405c2519L    # 51.189430279724725
        0x4049e5c7358627c0L    # 51.79514187861014
        0x404a33d77eab618dL    # 52.40501387947288
        0x404a82705ff3c0f7L    # 53.0190544071392
        0x404ad1921d545781L    # 53.637271562750364
        0x404b213cfa8fbe81L    # 54.259673423945976
        0x404b71713b367a9aL    # 54.88626804504493
        0x404bc22f22a75de3L    # 55.517063457223934
        0x404c1376f40fe90dL    # 56.15206766869424
        0x404c6548f26cab1cL    # 56.79128866487574
        0x404cb7a56089a00fL    # 57.43473440856916
        0x404d0a8c81028e68L    # 58.08241284012621
        0x404d5dfe96436370L    # 58.734331877617365
        0x404db1fbe2888e90L    # 59.39049941699807
        0x404e0684a7df5b5dL    # 60.05092333227251
        0x404e5b9928264aa1L    # 60.715611475655585
        0x404eb139a50d6a71L    # 61.38457167773311
        0x404f07666016ad10L    # 62.057811747619894
        0x404f5e1f9a963eceL    # 62.7353394731159
        0x404fb56595b2db0bL    # 63.417162620860914
        0x4050069c49330fffL    # 64.10328893648692
        0x405032cc68be70e4L    # 64.79372614476921
        0x40505f4349cbbe28L    # 65.48848194977529
        0x40508c010c951223L    # 66.18756403501224
        0x4050b905d13e9baaL    # 66.89098006357258
        0x4050e651b7d6c597L    # 67.59873767827808
        0x405113e4e0565df1L    # 68.31084450182222
        0x405141bf6aa0bc9eL    # 69.02730813691093
        0x40516fe17683e997L    # 69.74813616640164
        0x40519e4b23b8c2ceL    # 70.47333615344107
        0x4051ccfc91e3217eL    # 71.20291564160104
        0x4051fbf5e091ff31L    # 71.93688215501312
        0x40522b372f3f9a53L    # 72.67524319850172
        0x40525ac09d519a4fL    # 73.41800625771542
        0x40528a924a193361L    # 74.16517879925733
        0x4052baac54d349eaL    # 74.9167682708136
        0x4052eb0edca8956eL    # 75.67278210128072
        0x40531bba00adc335L    # 76.43322770089146
        0x40534caddfe39879L    # 77.1981124613393
        0x40537dea9937144bL    # 77.96744375590167
        0x4053af704b81910dL    # 78.74122893956174
        0x4053e13f1588e598L    # 79.51947534912904
        0x4054135715ff8602L    # 80.30219030335869
        0x405445b86b84a40cL    # 81.08938110306934
        0x4054786334a44f3aL    # 81.88105503125999
        0x4054ab578fd79492L    # 82.67721935322541
        0x4054de959b849e0fL    # 83.4778813166706
        0x4055121d75fed1acL    # 84.28304815182372
        0x405545ef3d86f02fL    # 85.09272707154808
        0x40557a0b104b33a0L    # 85.90692527145302
        0x4055ae710c676d67L    # 86.72564993000343
        0x4055e3214fe52419L    # 87.54890820862819
        0x4056181bf8bbb106L    # 88.3767072518277
        0x40564d6124d05d6fL    # 89.2090541872801
        0x405682f0f1f67f71L    # 90.04595612594655
        0x4056b8cb7def969eL    # 90.88742016217518
        0x4056eef0e66b685dL    # 91.73345337380438
        0x4057256149081bfcL    # 92.58406282226491
        0x40575c1cc3525664L    # 93.43925555268066
        0x4057932372c555aeL    # 94.29903859396902
        0x4057ca7574cb0c4fL    # 95.16341895893969
        0x40580212e6bc3c09L    # 96.03240364439274
        0x405839fbe5e090aaL    # 96.9059996312159
        0x405872308f6eba68L    # 97.78421388448044
        0x4058aab1008c881eL    # 98.6670533535366
        0x4058e37d564f0129L    # 99.55452497210776
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist areInCyclicOrder(DDD)Z
    .locals 5
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 392
    sub-double v0, p2, p0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/cam/HctSolver;->sanitizeRadians(D)D

    move-result-wide v0

    .line 393
    .local v0, "deltaAB":D
    sub-double v2, p4, p0

    invoke-static {v2, v3}, Lcom/android/internal/graphics/cam/HctSolver;->sanitizeRadians(D)D

    move-result-wide v2

    .line 394
    .local v2, "deltaAC":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method static blacklist bisectToLimit(DD)I
    .locals 25
    .param p0, "y"    # D
    .param p2, "targetHue"    # D

    .line 552
    invoke-static/range {p0 .. p3}, Lcom/android/internal/graphics/cam/HctSolver;->bisectToSegment(DD)[[D

    move-result-object v0

    .line 553
    .local v0, "segment":[[D
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 554
    .local v2, "left":[D
    invoke-static {v2}, Lcom/android/internal/graphics/cam/HctSolver;->hueOf([D)D

    move-result-wide v3

    .line 555
    .local v3, "leftHue":D
    const/4 v5, 0x1

    aget-object v6, v0, v5

    .line 556
    .local v6, "right":[D
    const/4 v7, 0x0

    .local v7, "axis":I
    :goto_0
    const/4 v8, 0x3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-ge v7, v8, :cond_5

    .line 557
    aget-wide v11, v2, v7

    aget-wide v13, v6, v7

    cmpl-double v8, v11, v13

    if-eqz v8, :cond_4

    .line 558
    const/4 v8, -0x1

    .line 559
    .local v8, "lPlane":I
    const/16 v11, 0xff

    .line 560
    .local v11, "rPlane":I
    aget-wide v12, v2, v7

    aget-wide v14, v6, v7

    cmpg-double v12, v12, v14

    if-gez v12, :cond_0

    .line 561
    aget-wide v12, v2, v7

    invoke-static {v12, v13}, Lcom/android/internal/graphics/cam/HctSolver;->trueDelinearized(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/graphics/cam/HctSolver;->criticalPlaneBelow(D)I

    move-result v8

    .line 562
    aget-wide v12, v6, v7

    invoke-static {v12, v13}, Lcom/android/internal/graphics/cam/HctSolver;->trueDelinearized(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/graphics/cam/HctSolver;->criticalPlaneAbove(D)I

    move-result v11

    goto :goto_1

    .line 564
    :cond_0
    aget-wide v12, v2, v7

    invoke-static {v12, v13}, Lcom/android/internal/graphics/cam/HctSolver;->trueDelinearized(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/graphics/cam/HctSolver;->criticalPlaneAbove(D)I

    move-result v8

    .line 565
    aget-wide v12, v6, v7

    invoke-static {v12, v13}, Lcom/android/internal/graphics/cam/HctSolver;->trueDelinearized(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/graphics/cam/HctSolver;->criticalPlaneBelow(D)I

    move-result v11

    .line 567
    :goto_1
    const/4 v12, 0x0

    move/from16 v17, v11

    move v15, v12

    .end local v11    # "rPlane":I
    .local v15, "i":I
    .local v17, "rPlane":I
    :goto_2
    const/16 v11, 0x8

    if-ge v15, v11, :cond_3

    .line 568
    sub-int v11, v17, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v5, :cond_1

    .line 569
    goto :goto_4

    .line 571
    :cond_1
    add-int v11, v8, v17

    int-to-double v11, v11

    div-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v13, v11

    .line 572
    .local v13, "mPlane":I
    sget-object v11, Lcom/android/internal/graphics/cam/HctSolver;->CRITICAL_PLANES:[D

    aget-wide v11, v11, v13

    .line 573
    .local v11, "midPlaneCoordinate":D
    invoke-static {v2, v11, v12, v6, v7}, Lcom/android/internal/graphics/cam/HctSolver;->setCoordinate([DD[DI)[D

    move-result-object v18

    .line 574
    .local v18, "mid":[D
    invoke-static/range {v18 .. v18}, Lcom/android/internal/graphics/cam/HctSolver;->hueOf([D)D

    move-result-wide v19

    .line 575
    .local v19, "midHue":D
    move-wide/from16 v21, v11

    .end local v11    # "midPlaneCoordinate":D
    .local v21, "midPlaneCoordinate":D
    move-wide v11, v3

    move/from16 v23, v13

    .end local v13    # "mPlane":I
    .local v23, "mPlane":I
    move-wide/from16 v13, p2

    move/from16 v24, v15

    .end local v15    # "i":I
    .local v24, "i":I
    move-wide/from16 v15, v19

    invoke-static/range {v11 .. v16}, Lcom/android/internal/graphics/cam/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 576
    move-object/from16 v6, v18

    .line 577
    move/from16 v11, v23

    move/from16 v17, v11

    .end local v17    # "rPlane":I
    .local v11, "rPlane":I
    goto :goto_3

    .line 579
    .end local v11    # "rPlane":I
    .restart local v17    # "rPlane":I
    :cond_2
    move-object/from16 v2, v18

    .line 580
    move-wide/from16 v3, v19

    .line 581
    move/from16 v8, v23

    .line 567
    .end local v18    # "mid":[D
    .end local v19    # "midHue":D
    .end local v21    # "midPlaneCoordinate":D
    .end local v23    # "mPlane":I
    :goto_3
    add-int/lit8 v15, v24, 0x1

    .end local v24    # "i":I
    .restart local v15    # "i":I
    goto :goto_2

    :cond_3
    move/from16 v24, v15

    .line 556
    .end local v8    # "lPlane":I
    .end local v15    # "i":I
    .end local v17    # "rPlane":I
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 587
    .end local v7    # "axis":I
    :cond_5
    aget-wide v7, v2, v1

    aget-wide v11, v6, v1

    add-double/2addr v7, v11

    div-double v11, v7, v9

    aget-wide v7, v2, v5

    aget-wide v13, v6, v5

    add-double/2addr v7, v13

    div-double v13, v7, v9

    const/4 v1, 0x2

    aget-wide v7, v2, v1

    aget-wide v15, v6, v1

    add-double/2addr v7, v15

    div-double v15, v7, v9

    invoke-static/range {v11 .. v16}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromLinrgbComponents(DDD)I

    move-result v1

    return v1
.end method

.method static blacklist bisectToSegment(DD)[[D
    .locals 18
    .param p0, "y"    # D
    .param p2, "targetHue"    # D

    .line 502
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 503
    .local v0, "left":[D
    move-object v1, v0

    .line 504
    .local v1, "right":[D
    const-wide/16 v2, 0x0

    .line 505
    .local v2, "leftHue":D
    const-wide/16 v4, 0x0

    .line 506
    .local v4, "rightHue":D
    const/4 v6, 0x0

    .line 507
    .local v6, "initialized":Z
    const/4 v7, 0x1

    .line 508
    .local v7, "uncut":Z
    const/4 v8, 0x0

    move-wide v10, v4

    move v12, v6

    move v13, v7

    move v14, v8

    move-wide v8, v2

    .end local v2    # "leftHue":D
    .end local v4    # "rightHue":D
    .end local v6    # "initialized":Z
    .end local v7    # "uncut":Z
    .local v8, "leftHue":D
    .local v10, "rightHue":D
    .local v12, "initialized":Z
    .local v13, "uncut":Z
    .local v14, "n":I
    :goto_0
    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ge v14, v2, :cond_5

    .line 509
    move-wide/from16 v6, p0

    invoke-static {v6, v7, v14}, Lcom/android/internal/graphics/cam/HctSolver;->nthVertex(DI)[D

    move-result-object v15

    .line 510
    .local v15, "mid":[D
    aget-wide v2, v15, v3

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 511
    goto :goto_1

    .line 513
    :cond_0
    invoke-static {v15}, Lcom/android/internal/graphics/cam/HctSolver;->hueOf([D)D

    move-result-wide v16

    .line 514
    .local v16, "midHue":D
    if-nez v12, :cond_1

    .line 515
    move-object v0, v15

    .line 516
    move-object v1, v15

    .line 517
    move-wide/from16 v2, v16

    .line 518
    .end local v8    # "leftHue":D
    .restart local v2    # "leftHue":D
    move-wide/from16 v4, v16

    .line 519
    .end local v10    # "rightHue":D
    .restart local v4    # "rightHue":D
    const/4 v8, 0x1

    .line 520
    .end local v12    # "initialized":Z
    .local v8, "initialized":Z
    move-wide v10, v4

    move v12, v8

    move-wide v8, v2

    goto :goto_1

    .line 522
    .end local v2    # "leftHue":D
    .end local v4    # "rightHue":D
    .local v8, "leftHue":D
    .restart local v10    # "rightHue":D
    .restart local v12    # "initialized":Z
    :cond_1
    if-nez v13, :cond_2

    move-wide v2, v8

    move-wide/from16 v4, v16

    move-wide v6, v10

    invoke-static/range {v2 .. v7}, Lcom/android/internal/graphics/cam/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 523
    :cond_2
    const/4 v13, 0x0

    .line 524
    move-wide v2, v8

    move-wide/from16 v4, p2

    move-wide/from16 v6, v16

    invoke-static/range {v2 .. v7}, Lcom/android/internal/graphics/cam/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    move-object v1, v15

    .line 526
    move-wide/from16 v2, v16

    move-wide v10, v2

    .end local v10    # "rightHue":D
    .local v2, "rightHue":D
    goto :goto_1

    .line 528
    .end local v2    # "rightHue":D
    .restart local v10    # "rightHue":D
    :cond_3
    move-object v0, v15

    .line 529
    move-wide/from16 v2, v16

    move-wide v8, v2

    .line 508
    .end local v15    # "mid":[D
    .end local v16    # "midHue":D
    :cond_4
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 533
    .end local v14    # "n":I
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [[D

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2

    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method static blacklist chromaticAdaptation(D)D
    .locals 6
    .param p0, "component"    # D

    .line 352
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 353
    .local v0, "af":D
    invoke-static {p0, p1}, Lcom/android/internal/graphics/cam/CamUtils;->signum(D)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    mul-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v4, 0x403b2147ae147ae1L    # 27.13

    add-double/2addr v4, v0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method static blacklist criticalPlaneAbove(D)I
    .locals 2
    .param p0, "x"    # D

    .line 541
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method static blacklist criticalPlaneBelow(D)I
    .locals 2
    .param p0, "x"    # D

    .line 537
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method static blacklist findResultByJ(DDD)I
    .locals 75
    .param p0, "hueRadians"    # D
    .param p2, "chroma"    # D
    .param p4, "y"    # D

    .line 608
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    mul-double/2addr v0, v2

    .line 612
    .local v0, "j":D
    sget-object v4, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    .line 613
    .local v4, "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    invoke-virtual {v4}, Lcom/android/internal/graphics/cam/Frame;->getN()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v7, v5

    const-wide v5, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    .line 614
    .local v5, "tInnerCoeff":D
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    add-double v11, p0, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide v13, 0x400e666666666666L    # 3.8

    add-double/2addr v11, v13

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v11, v13

    .line 615
    .local v11, "eHue":D
    const-wide v13, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double/2addr v13, v11

    invoke-virtual {v4}, Lcom/android/internal/graphics/cam/Frame;->getNc()F

    move-result v15

    float-to-double v9, v15

    mul-double/2addr v13, v9

    .line 616
    invoke-virtual {v4}, Lcom/android/internal/graphics/cam/Frame;->getNcb()F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v13, v9

    .line 617
    .local v13, "p1":D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 618
    .local v9, "hSin":D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 619
    .local v18, "hCos":D
    const/4 v15, 0x0

    .local v15, "iterationRound":I
    :goto_0
    const/4 v2, 0x5

    if-ge v15, v2, :cond_9

    .line 623
    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v7, v0, v22

    .line 624
    .local v7, "jNormalized":D
    const-wide/16 v22, 0x0

    cmpl-double v2, p2, v22

    if-eqz v2, :cond_1

    cmpl-double v2, v0, v22

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v26, p2, v26

    goto :goto_2

    :cond_1
    :goto_1
    move-wide/from16 v26, v22

    .line 625
    .local v26, "alpha":D
    :goto_2
    move-object v2, v4

    .end local v4    # "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    .local v2, "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    mul-double v3, v26, v5

    move-wide/from16 v29, v5

    .end local v5    # "tInnerCoeff":D
    .local v29, "tInnerCoeff":D
    const-wide v5, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 626
    .local v3, "t":D
    invoke-virtual {v2}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v5, v24, v5

    move-wide/from16 v31, v11

    .end local v11    # "eHue":D
    .local v31, "eHue":D
    invoke-virtual {v2}, Lcom/android/internal/graphics/cam/Frame;->getZ()F

    move-result v11

    float-to-double v11, v11

    div-double/2addr v5, v11

    .line 627
    .local v5, "acExponent":D
    invoke-virtual {v2}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v11

    float-to-double v11, v11

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    mul-double v11, v11, v33

    .line 628
    .local v11, "ac":D
    move-wide/from16 v33, v5

    .end local v5    # "acExponent":D
    .local v33, "acExponent":D
    invoke-virtual {v2}, Lcom/android/internal/graphics/cam/Frame;->getNbb()F

    move-result v5

    float-to-double v5, v5

    div-double v5, v11, v5

    .line 629
    .local v5, "p2":D
    const-wide v35, 0x3fd3851eb851eb85L    # 0.305

    add-double v35, v5, v35

    const-wide/high16 v37, 0x4037000000000000L    # 23.0

    mul-double v35, v35, v37

    mul-double v35, v35, v3

    mul-double v37, v37, v13

    const-wide/high16 v20, 0x4026000000000000L    # 11.0

    mul-double v39, v3, v20

    mul-double v39, v39, v18

    add-double v37, v37, v39

    const-wide/high16 v39, 0x405b000000000000L    # 108.0

    mul-double v39, v39, v3

    mul-double v39, v39, v9

    add-double v37, v37, v39

    div-double v35, v35, v37

    .line 630
    .local v35, "gamma":D
    mul-double v37, v35, v18

    .line 631
    .local v37, "a":D
    mul-double v39, v35, v9

    .line 632
    .local v39, "b":D
    const-wide v41, 0x407cc00000000000L    # 460.0

    mul-double v43, v5, v41

    const-wide v45, 0x407c300000000000L    # 451.0

    mul-double v45, v45, v37

    add-double v43, v43, v45

    const-wide/high16 v45, 0x4072000000000000L    # 288.0

    mul-double v45, v45, v39

    add-double v43, v43, v45

    const-wide v45, 0x4095ec0000000000L    # 1403.0

    div-double v43, v43, v45

    .line 633
    .local v43, "rA":D
    mul-double v47, v5, v41

    const-wide v49, 0x408bd80000000000L    # 891.0

    mul-double v49, v49, v37

    sub-double v47, v47, v49

    const-wide v49, 0x4070500000000000L    # 261.0

    mul-double v49, v49, v39

    sub-double v47, v47, v49

    div-double v47, v47, v45

    .line 634
    .local v47, "gA":D
    mul-double v41, v41, v5

    const-wide v49, 0x406b800000000000L    # 220.0

    mul-double v49, v49, v37

    sub-double v41, v41, v49

    const-wide v49, 0x40b89c0000000000L    # 6300.0

    mul-double v49, v49, v39

    sub-double v41, v41, v49

    div-double v41, v41, v45

    .line 635
    .local v41, "bA":D
    invoke-static/range {v43 .. v44}, Lcom/android/internal/graphics/cam/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v45

    .line 636
    .local v45, "rCScaled":D
    invoke-static/range {v47 .. v48}, Lcom/android/internal/graphics/cam/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v49

    .line 637
    .local v49, "gCScaled":D
    invoke-static/range {v41 .. v42}, Lcom/android/internal/graphics/cam/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v51

    .line 638
    .local v51, "bCScaled":D
    sget-object v53, Lcom/android/internal/graphics/cam/HctSolver;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    .line 639
    .local v53, "matrix":[[D
    const/16 v28, 0x0

    aget-object v54, v53, v28

    aget-wide v54, v54, v28

    mul-double v54, v54, v45

    aget-object v56, v53, v28

    const/16 v57, 0x1

    aget-wide v58, v56, v57

    mul-double v58, v58, v49

    add-double v54, v54, v58

    aget-object v56, v53, v28

    const/16 v58, 0x2

    aget-wide v59, v56, v58

    mul-double v59, v59, v51

    add-double v54, v54, v59

    .line 641
    .local v54, "linrgbR":D
    aget-object v56, v53, v57

    aget-wide v59, v56, v28

    mul-double v59, v59, v45

    aget-object v56, v53, v57

    aget-wide v61, v56, v57

    mul-double v61, v61, v49

    add-double v59, v59, v61

    aget-object v56, v53, v57

    aget-wide v61, v56, v58

    mul-double v61, v61, v51

    add-double v59, v59, v61

    .line 643
    .local v59, "linrgbG":D
    aget-object v56, v53, v58

    const/16 v28, 0x0

    aget-wide v61, v56, v28

    mul-double v61, v61, v45

    aget-object v56, v53, v58

    aget-wide v63, v56, v57

    mul-double v63, v63, v49

    add-double v61, v61, v63

    aget-object v56, v53, v58

    aget-wide v63, v56, v58

    mul-double v63, v63, v51

    add-double v67, v61, v63

    .line 648
    .local v67, "linrgbB":D
    cmpg-double v56, v54, v22

    if-ltz v56, :cond_8

    cmpg-double v56, v59, v22

    if-ltz v56, :cond_8

    cmpg-double v56, v67, v22

    if-gez v56, :cond_2

    move-object/from16 v22, v2

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 651
    :cond_2
    sget-object v56, Lcom/android/internal/graphics/cam/HctSolver;->Y_FROM_LINRGB:[D

    const/16 v28, 0x0

    aget-wide v69, v56, v28

    .line 652
    .local v69, "kR":D
    aget-wide v71, v56, v57

    .line 653
    .local v71, "kG":D
    aget-wide v56, v56, v58

    .line 654
    .local v56, "kB":D
    mul-double v61, v69, v54

    mul-double v63, v71, v59

    add-double v61, v61, v63

    mul-double v63, v56, v67

    add-double v73, v61, v63

    .line 655
    .local v73, "fnj":D
    cmpg-double v22, v73, v22

    if-gtz v22, :cond_3

    .line 656
    const/16 v16, 0x0

    return v16

    .line 658
    :cond_3
    move-object/from16 v22, v2

    .end local v2    # "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    .local v22, "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    const/4 v2, 0x4

    if-eq v15, v2, :cond_5

    sub-double v61, v73, p4

    invoke-static/range {v61 .. v62}, Ljava/lang/Math;->abs(D)D

    move-result-wide v61

    const-wide v63, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v2, v61, v63

    if-gez v2, :cond_4

    goto :goto_3

    .line 666
    :cond_4
    sub-double v61, v73, p4

    mul-double v61, v61, v0

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v63, v73, v16

    div-double v61, v61, v63

    sub-double v0, v0, v61

    .line 619
    .end local v3    # "t":D
    .end local v5    # "p2":D
    .end local v7    # "jNormalized":D
    .end local v11    # "ac":D
    .end local v26    # "alpha":D
    .end local v33    # "acExponent":D
    .end local v35    # "gamma":D
    .end local v37    # "a":D
    .end local v39    # "b":D
    .end local v41    # "bA":D
    .end local v43    # "rA":D
    .end local v45    # "rCScaled":D
    .end local v47    # "gA":D
    .end local v49    # "gCScaled":D
    .end local v51    # "bCScaled":D
    .end local v53    # "matrix":[[D
    .end local v54    # "linrgbR":D
    .end local v56    # "kB":D
    .end local v59    # "linrgbG":D
    .end local v67    # "linrgbB":D
    .end local v69    # "kR":D
    .end local v71    # "kG":D
    .end local v73    # "fnj":D
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v2, v20

    move-object/from16 v4, v22

    move-wide/from16 v7, v24

    move-wide/from16 v5, v29

    move-wide/from16 v11, v31

    goto/16 :goto_0

    .line 659
    .restart local v3    # "t":D
    .restart local v5    # "p2":D
    .restart local v7    # "jNormalized":D
    .restart local v11    # "ac":D
    .restart local v26    # "alpha":D
    .restart local v33    # "acExponent":D
    .restart local v35    # "gamma":D
    .restart local v37    # "a":D
    .restart local v39    # "b":D
    .restart local v41    # "bA":D
    .restart local v43    # "rA":D
    .restart local v45    # "rCScaled":D
    .restart local v47    # "gA":D
    .restart local v49    # "gCScaled":D
    .restart local v51    # "bCScaled":D
    .restart local v53    # "matrix":[[D
    .restart local v54    # "linrgbR":D
    .restart local v56    # "kB":D
    .restart local v59    # "linrgbG":D
    .restart local v67    # "linrgbB":D
    .restart local v69    # "kR":D
    .restart local v71    # "kG":D
    .restart local v73    # "fnj":D
    :cond_5
    :goto_3
    const-wide v16, 0x405900a3d70a3d71L    # 100.01

    cmpl-double v2, v54, v16

    if-gtz v2, :cond_7

    cmpl-double v2, v59, v16

    if-gtz v2, :cond_7

    cmpl-double v2, v67, v16

    if-lez v2, :cond_6

    goto :goto_4

    .line 662
    :cond_6
    move-wide/from16 v61, v54

    move-wide/from16 v63, v59

    move-wide/from16 v65, v67

    invoke-static/range {v61 .. v66}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromLinrgbComponents(DDD)I

    move-result v2

    return v2

    .line 660
    :cond_7
    :goto_4
    const/4 v2, 0x0

    return v2

    .line 648
    .end local v22    # "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    .end local v56    # "kB":D
    .end local v69    # "kR":D
    .end local v71    # "kG":D
    .end local v73    # "fnj":D
    .restart local v2    # "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    :cond_8
    move-object/from16 v22, v2

    const/4 v2, 0x0

    .line 649
    .end local v2    # "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    .restart local v22    # "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    :goto_5
    return v2

    .line 619
    .end local v3    # "t":D
    .end local v7    # "jNormalized":D
    .end local v22    # "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    .end local v26    # "alpha":D
    .end local v29    # "tInnerCoeff":D
    .end local v31    # "eHue":D
    .end local v33    # "acExponent":D
    .end local v35    # "gamma":D
    .end local v37    # "a":D
    .end local v39    # "b":D
    .end local v41    # "bA":D
    .end local v43    # "rA":D
    .end local v45    # "rCScaled":D
    .end local v47    # "gA":D
    .end local v49    # "gCScaled":D
    .end local v51    # "bCScaled":D
    .end local v53    # "matrix":[[D
    .end local v54    # "linrgbR":D
    .end local v59    # "linrgbG":D
    .end local v67    # "linrgbB":D
    .restart local v4    # "viewingConditions":Lcom/android/internal/graphics/cam/Frame;
    .local v5, "tInnerCoeff":D
    .local v11, "eHue":D
    :cond_9
    const/4 v2, 0x0

    .line 668
    .end local v15    # "iterationRound":I
    return v2
.end method

.method static blacklist hueOf([D)D
    .locals 22
    .param p0, "linrgb"    # [D

    .line 365
    sget-object v0, Lcom/android/internal/graphics/cam/HctSolver;->SCALED_DISCOUNT_FROM_LINRGB:[[D

    .line 366
    .local v0, "matrix":[[D
    move-object/from16 v1, p0

    .line 367
    .local v1, "row":[D
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    aget-object v5, v0, v2

    aget-wide v5, v5, v2

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    aget-object v8, v0, v2

    aget-wide v8, v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    const/4 v6, 0x2

    aget-wide v7, v1, v6

    aget-object v9, v0, v2

    aget-wide v9, v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 368
    .local v3, "rD":D
    aget-wide v7, p0, v2

    aget-object v9, v0, v5

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    aget-wide v9, v1, v5

    aget-object v11, v0, v5

    aget-wide v11, v11, v5

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    aget-wide v9, v1, v6

    aget-object v11, v0, v5

    aget-wide v11, v11, v6

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    .line 369
    .local v7, "gD":D
    aget-wide v9, p0, v2

    aget-object v11, v0, v6

    aget-wide v11, v11, v2

    mul-double/2addr v9, v11

    aget-wide v11, v1, v5

    aget-object v2, v0, v6

    aget-wide v13, v2, v5

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aget-wide v11, v1, v6

    aget-object v2, v0, v6

    aget-wide v5, v2, v6

    mul-double/2addr v11, v5

    add-double/2addr v9, v11

    .line 371
    .local v9, "bD":D
    invoke-static {v3, v4}, Lcom/android/internal/graphics/cam/HctSolver;->chromaticAdaptation(D)D

    move-result-wide v5

    .line 372
    .local v5, "rA":D
    invoke-static {v7, v8}, Lcom/android/internal/graphics/cam/HctSolver;->chromaticAdaptation(D)D

    move-result-wide v11

    .line 373
    .local v11, "gA":D
    invoke-static {v9, v10}, Lcom/android/internal/graphics/cam/HctSolver;->chromaticAdaptation(D)D

    move-result-wide v13

    .line 375
    .local v13, "bA":D
    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    mul-double v17, v5, v15

    const-wide/high16 v19, -0x3fd8000000000000L    # -12.0

    mul-double v19, v19, v11

    add-double v17, v17, v19

    add-double v17, v17, v13

    move-object v2, v0

    move-object/from16 v19, v1

    .end local v0    # "matrix":[[D
    .end local v1    # "row":[D
    .local v2, "matrix":[[D
    .local v19, "row":[D
    div-double v0, v17, v15

    .line 377
    .local v0, "a":D
    add-double v15, v5, v11

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v17, v17, v13

    sub-double v15, v15, v17

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    move-wide/from16 v20, v3

    move-object v4, v2

    .end local v2    # "matrix":[[D
    .end local v3    # "rD":D
    .local v4, "matrix":[[D
    .local v20, "rD":D
    div-double v2, v15, v17

    .line 378
    .local v2, "b":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    return-wide v15
.end method

.method static blacklist intercept(DDD)D
    .locals 4
    .param p0, "source"    # D
    .param p2, "mid"    # D
    .param p4, "target"    # D

    .line 406
    cmpl-double v0, p4, p0

    if-nez v0, :cond_0

    .line 407
    return-wide p4

    .line 409
    :cond_0
    sub-double v0, p2, p0

    sub-double v2, p4, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static blacklist inverseChromaticAdaptation(D)D
    .locals 8
    .param p0, "adapted"    # D

    .line 593
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 594
    .local v0, "adaptedAbs":D
    const-wide v2, 0x403b2147ae147ae1L    # 27.13

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    sub-double/2addr v4, v0

    div-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 595
    .local v2, "base":D
    invoke-static {p0, p1}, Lcom/android/internal/graphics/cam/CamUtils;->signum(D)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method static blacklist isBounded(D)Z
    .locals 2
    .param p0, "x"    # D

    .line 445
    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist lerpPoint([DD[D)[D
    .locals 8
    .param p0, "source"    # [D
    .param p1, "t"    # D
    .param p3, "target"    # [D

    .line 421
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    aget-wide v4, p3, v1

    aget-wide v6, p0, v1

    sub-double/2addr v4, v6

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    aget-wide v4, p3, v1

    aget-wide v6, p0, v1

    sub-double/2addr v4, v6

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aget-wide v2, p0, v1

    aget-wide v4, p3, v1

    aget-wide v6, p0, v1

    sub-double/2addr v4, v6

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    return-object v0
.end method

.method static blacklist nthVertex(DI)[D
    .locals 25
    .param p0, "y"    # D
    .param p2, "n"    # I

    .line 458
    move/from16 v0, p2

    sget-object v1, Lcom/android/internal/graphics/cam/HctSolver;->Y_FROM_LINRGB:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    .line 459
    .local v3, "kR":D
    const/4 v5, 0x1

    aget-wide v6, v1, v5

    .line 460
    .local v6, "kG":D
    const/4 v8, 0x2

    aget-wide v9, v1, v8

    .line 461
    .local v9, "kB":D
    rem-int/lit8 v1, v0, 0x4

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    if-gt v1, v5, :cond_0

    move-wide v15, v11

    goto :goto_0

    :cond_0
    move-wide v15, v13

    .line 462
    .local v15, "coordA":D
    :goto_0
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v11, v13

    .line 463
    .local v11, "coordB":D
    :goto_1
    const/4 v1, 0x4

    const/4 v13, 0x3

    if-ge v0, v1, :cond_3

    .line 464
    move-wide/from16 v17, v15

    .line 465
    .local v17, "g":D
    move-wide/from16 v19, v11

    .line 466
    .local v19, "b":D
    mul-double v21, v17, v6

    sub-double v21, p0, v21

    mul-double v23, v19, v9

    sub-double v21, v21, v23

    div-double v21, v21, v3

    .line 467
    .local v21, "r":D
    invoke-static/range {v21 .. v22}, Lcom/android/internal/graphics/cam/HctSolver;->isBounded(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    new-array v1, v13, [D

    aput-wide v21, v1, v2

    aput-wide v17, v1, v5

    aput-wide v19, v1, v8

    return-object v1

    .line 470
    :cond_2
    new-array v1, v13, [D

    fill-array-data v1, :array_0

    return-object v1

    .line 472
    .end local v17    # "g":D
    .end local v19    # "b":D
    .end local v21    # "r":D
    :cond_3
    const/16 v1, 0x8

    if-ge v0, v1, :cond_5

    .line 473
    move-wide/from16 v17, v15

    .line 474
    .local v17, "b":D
    move-wide/from16 v19, v11

    .line 475
    .local v19, "r":D
    mul-double v21, v19, v3

    sub-double v21, p0, v21

    mul-double v23, v17, v9

    sub-double v21, v21, v23

    div-double v21, v21, v6

    .line 476
    .local v21, "g":D
    invoke-static/range {v21 .. v22}, Lcom/android/internal/graphics/cam/HctSolver;->isBounded(D)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    new-array v1, v13, [D

    aput-wide v19, v1, v2

    aput-wide v21, v1, v5

    aput-wide v17, v1, v8

    return-object v1

    .line 479
    :cond_4
    new-array v1, v13, [D

    fill-array-data v1, :array_1

    return-object v1

    .line 482
    .end local v17    # "b":D
    .end local v19    # "r":D
    .end local v21    # "g":D
    :cond_5
    move-wide/from16 v17, v15

    .line 483
    .local v17, "r":D
    move-wide/from16 v19, v11

    .line 484
    .local v19, "g":D
    mul-double v21, v17, v3

    sub-double v21, p0, v21

    mul-double v23, v19, v6

    sub-double v21, v21, v23

    div-double v21, v21, v9

    .line 485
    .local v21, "b":D
    invoke-static/range {v21 .. v22}, Lcom/android/internal/graphics/cam/HctSolver;->isBounded(D)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 486
    new-array v1, v13, [D

    aput-wide v17, v1, v2

    aput-wide v19, v1, v5

    aput-wide v21, v1, v8

    return-object v1

    .line 488
    :cond_6
    new-array v1, v13, [D

    fill-array-data v1, :array_2

    return-object v1

    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static blacklist sanitizeDegreesDouble(D)D
    .locals 4
    .param p0, "degrees"    # D

    .line 701
    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    .line 702
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    .line 703
    add-double/2addr p0, v0

    .line 705
    :cond_0
    return-wide p0
.end method

.method static blacklist sanitizeRadians(D)D
    .locals 4
    .param p0, "angle"    # D

    .line 331
    const-wide v0, 0x403921fb54442d18L    # 25.132741228718345

    add-double/2addr v0, p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method static blacklist setCoordinate([DD[DI)[D
    .locals 6
    .param p0, "source"    # [D
    .param p1, "coordinate"    # D
    .param p3, "target"    # [D
    .param p4, "axis"    # I

    .line 439
    aget-wide v0, p0, p4

    aget-wide v4, p3, p4

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/graphics/cam/HctSolver;->intercept(DDD)D

    move-result-wide v0

    .line 440
    .local v0, "t":D
    invoke-static {p0, v0, v1, p3}, Lcom/android/internal/graphics/cam/HctSolver;->lerpPoint([DD[D)[D

    move-result-object v2

    return-object v2
.end method

.method public static blacklist solveToCam(DDD)Lcom/android/internal/graphics/cam/Cam;
    .locals 1
    .param p0, "hueDegrees"    # D
    .param p2, "chroma"    # D
    .param p4, "lstar"    # D

    .line 719
    invoke-static/range {p0 .. p5}, Lcom/android/internal/graphics/cam/HctSolver;->solveToInt(DDD)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist solveToInt(DDD)I
    .locals 10
    .param p0, "hueDegrees"    # D
    .param p2, "chroma"    # D
    .param p4, "lstar"    # D

    .line 682
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_2

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x4058fffe5c91d14eL    # 99.9999

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/graphics/cam/HctSolver;->sanitizeDegreesDouble(D)D

    move-result-wide p0

    .line 686
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 687
    .local v6, "hueRadians":D
    invoke-static {p4, p5}, Lcom/android/internal/graphics/cam/CamUtils;->yFromLstar(D)D

    move-result-wide v8

    .line 688
    .local v8, "y":D
    move-wide v0, v6

    move-wide v2, p2

    move-wide v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/graphics/cam/HctSolver;->findResultByJ(DDD)I

    move-result v0

    .line 689
    .local v0, "exactAnswer":I
    if-eqz v0, :cond_1

    .line 690
    return v0

    .line 692
    :cond_1
    invoke-static {v8, v9, v6, v7}, Lcom/android/internal/graphics/cam/HctSolver;->bisectToLimit(DD)I

    move-result v1

    return v1

    .line 683
    .end local v0    # "exactAnswer":I
    .end local v6    # "hueRadians":D
    .end local v8    # "y":D
    :cond_2
    :goto_0
    invoke-static {p4, p5}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromLstar(D)I

    move-result v0

    return v0
.end method

.method static blacklist trueDelinearized(D)D
    .locals 6
    .param p0, "rgbComponent"    # D

    .line 341
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p0, v0

    .line 343
    .local v0, "normalized":D
    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 344
    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v2, v0

    .local v2, "delinearized":D
    goto :goto_0

    .line 346
    .end local v2    # "delinearized":D
    :cond_0
    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v4, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v2, v4, v2

    .line 348
    .restart local v2    # "delinearized":D
    :goto_0
    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v2

    return-wide v4
.end method
