.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;
    }
.end annotation


# instance fields
.field private final blacklist kPreviewSizeBound:Landroid/util/Size;

.field private blacklist mCameraId:I

.field private blacklist mCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisplaySize:Landroid/util/Size;

.field private blacklist mHwLevel:I

.field private blacklist mIsHiddenPhysicalCamera:Z

.field private blacklist mIsPreviewStabilizationSupported:Z

.field private blacklist mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private blacklist mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method public constructor blacklist <init>(IILandroid/util/Size;Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/StreamConfigurationMap;Z)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "hwLevel"    # I
    .param p3, "displaySize"    # Landroid/util/Size;
    .param p5, "sm"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p6, "smMaxResolution"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p7, "previewStabilization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "Z)V"
        }
    .end annotation

    .line 1337
    .local p4, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x440

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    .line 1338
    iput p1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    .line 1339
    iput-object p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    .line 1340
    iput-object p4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCapabilities:Ljava/util/List;

    .line 1341
    iput-object p5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1342
    iput-object p6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1343
    iput p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    .line 1344
    nop

    .line 1345
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsHiddenPhysicalCamera:Z

    .line 1346
    iput-boolean p7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    .line 1347
    return-void
.end method

.method private blacklist createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .locals 24
    .param p1, "combTemplate"    # Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .param p2, "substitutedFormat"    # I

    .line 1667
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1669
    .local v3, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1670
    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 1671
    .local v4, "isReprocess":Z
    const/16 v0, 0x20

    if-eqz v4, :cond_3

    .line 1672
    const/4 v7, -0x1

    .line 1673
    .local v7, "format":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    .local v8, "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    iget-object v9, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v10, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v9, v10, :cond_1

    .line 1675
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x22

    .line 1676
    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 1675
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    const/16 v7, 0x22

    goto :goto_1

    .line 1679
    :cond_1
    iget-object v9, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v10, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v9, v10, :cond_2

    .line 1680
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1681
    invoke-virtual {v9, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 1680
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    const/16 v7, 0x20

    goto :goto_1

    .line 1685
    :cond_2
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x23

    .line 1686
    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 1685
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    const/16 v7, 0x23

    .line 1690
    :goto_1
    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, v15

    move-object v10, v8

    move v11, v7

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/4 v13, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    .end local v7    # "format":I
    .end local v8    # "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    :cond_3
    nop

    .line 1698
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v7

    .line 1699
    .local v7, "availableDefaultNonRawSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    if-nez v7, :cond_4

    .line 1700
    const-string v0, "MandatoryStreamCombination"

    const-string v5, "Available size enumeration failed"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/4 v0, 0x0

    return-object v0

    .line 1703
    :cond_4
    iget-object v8, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1704
    invoke-virtual {v8, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    .line 1705
    .local v8, "defaultRawSizes":[Landroid/util/Size;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    .local v9, "availableDefaultRawSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    if-eqz v8, :cond_5

    .line 1707
    array-length v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1708
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1710
    :cond_5
    iget-object v10, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_c

    aget-object v13, v10, v12

    .line 1712
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget v15, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    .line 1714
    .local v15, "formatChosen":I
    iget-object v5, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 1717
    .local v5, "isUltraHighResolution":Z
    :goto_3
    if-eqz v5, :cond_7

    .line 1718
    iget-object v6, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    goto :goto_4

    :cond_7
    iget-object v6, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1719
    .local v6, "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_4
    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    move v1, v0

    .line 1721
    .local v1, "isMaximumSize":Z
    if-eqz p2, :cond_9

    if-eqz v1, :cond_9

    .line 1722
    move/from16 v15, p2

    .line 1725
    :cond_9
    if-eqz v5, :cond_a

    .line 1726
    invoke-virtual {v6, v15}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    goto :goto_6

    .line 1728
    :cond_a
    const/16 v0, 0x20

    if-ne v15, v0, :cond_b

    .line 1730
    move-object v14, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    goto :goto_6

    .line 1732
    :cond_b
    new-instance v0, Landroid/util/Pair;

    move-object/from16 v22, v6

    .end local v6    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v22, "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v23, v8

    .end local v8    # "defaultRawSizes":[Landroid/util/Size;
    .local v23, "defaultRawSizes":[Landroid/util/Size;
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1735
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/util/List;

    .line 1740
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    :goto_6
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move/from16 v18, v15

    move/from16 v19, v1

    move/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1748
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v1    # "isMaximumSize":Z
    .end local v5    # "isUltraHighResolution":Z
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v15    # "formatChosen":I
    .end local v22    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x20

    move-object/from16 v1, p0

    move-object/from16 v8, v23

    goto :goto_2

    .line 1742
    .restart local v1    # "isMaximumSize":Z
    .restart local v5    # "isUltraHighResolution":Z
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v15    # "formatChosen":I
    .restart local v22    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No available sizes found for format: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " size threshold: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " combination: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1746
    .local v6, "cause":Ljava/lang/String;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1751
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "isMaximumSize":Z
    .end local v5    # "isUltraHighResolution":Z
    .end local v6    # "cause":Ljava/lang/String;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v15    # "formatChosen":I
    .end local v22    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v23    # "defaultRawSizes":[Landroid/util/Size;
    .restart local v8    # "defaultRawSizes":[Landroid/util/Size;
    :cond_c
    move-object/from16 v23, v8

    .end local v8    # "defaultRawSizes":[Landroid/util/Size;
    .restart local v23    # "defaultRawSizes":[Landroid/util/Size;
    const/4 v0, 0x0

    .line 1752
    .local v0, "formatString":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 1760
    const-string v0, "YUV"

    move-object v1, v0

    goto :goto_7

    .line 1757
    :sswitch_0
    const-string v0, "JPEG"

    .line 1758
    move-object v1, v0

    goto :goto_7

    .line 1754
    :sswitch_1
    const-string v0, "RAW_SENSOR"

    .line 1755
    move-object v1, v0

    .line 1765
    .end local v0    # "formatString":Ljava/lang/String;
    .local v1, "formatString":Ljava/lang/String;
    :goto_7
    :try_start_1
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " still-capture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1772
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1773
    return-object v0

    .line 1768
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :catch_1
    move-exception v0

    .line 1769
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No stream information for mandatory combination: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1771
    .local v5, "cause":Ljava/lang/String;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist enumerateAvailableSizes()Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 2004
    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 2010
    .local v1, "formats":[I
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    .line 2011
    .local v2, "recordingMaxSize":Landroid/util/Size;
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v3, v3}, Landroid/util/Size;-><init>(II)V

    .line 2012
    .local v4, "previewMaxSize":Landroid/util/Size;
    new-instance v5, Landroid/util/Size;

    const/16 v6, 0x280

    const/16 v7, 0x1e0

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 2013
    .local v5, "vgaSize":Landroid/util/Size;
    new-instance v6, Landroid/util/Size;

    const/16 v7, 0x500

    const/16 v8, 0x2d0

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 2014
    .local v6, "s720pSize":Landroid/util/Size;
    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x780

    const/16 v9, 0x5a0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 2017
    .local v7, "s1440pSize":Landroid/util/Size;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsHiddenPhysicalCamera:Z

    if-eqz v8, :cond_0

    goto :goto_0

    .line 2020
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxRecordingSize()Landroid/util/Size;

    move-result-object v2

    goto :goto_1

    .line 2018
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxCameraRecordingSize()Landroid/util/Size;

    move-result-object v2

    .line 2022
    :goto_1
    const/4 v8, 0x0

    const-string v9, "MandatoryStreamCombination"

    if-nez v2, :cond_2

    .line 2023
    const-string v3, "Failed to find maximum recording size!"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    return-object v8

    .line 2027
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2028
    .local v10, "allSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Landroid/util/Size;>;"
    array-length v11, v1

    move v12, v3

    :goto_2
    if-ge v12, v11, :cond_4

    aget v13, v1, v12

    .line 2029
    .local v13, "format":I
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 2030
    .local v14, "intFormat":Ljava/lang/Integer;
    iget-object v15, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v15, v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v15

    .line 2031
    .local v15, "sizes":[Landroid/util/Size;
    if-nez v15, :cond_3

    .line 2032
    new-array v15, v3, [Landroid/util/Size;

    .line 2034
    :cond_3
    invoke-virtual {v10, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    .end local v13    # "format":I
    .end local v14    # "intFormat":Ljava/lang/Integer;
    .end local v15    # "sizes":[Landroid/util/Size;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2037
    :cond_4
    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x22

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 2038
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/util/Size;

    iget-object v12, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    .line 2037
    invoke-static {v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v11

    .line 2039
    .local v11, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v16, v1

    goto/16 :goto_4

    .line 2043
    :cond_5
    invoke-static {v11, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    .line 2045
    .local v8, "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-direct {v0, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v4

    .line 2047
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2050
    .local v9, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    array-length v12, v1

    :goto_3
    if-ge v3, v12, :cond_6

    aget v13, v1, v3

    .line 2051
    .restart local v13    # "format":I
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 2052
    .restart local v14    # "intFormat":Ljava/lang/Integer;
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/util/Size;

    .line 2053
    .restart local v15    # "sizes":[Landroid/util/Size;
    new-instance v0, Landroid/util/Pair;

    move-object/from16 v16, v1

    .end local v1    # "formats":[I
    .local v16, "formats":[I
    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v1, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2055
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .local v17, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2058
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2061
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2064
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2067
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2070
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v7}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v13    # "format":I
    .end local v14    # "intFormat":Ljava/lang/Integer;
    .end local v15    # "sizes":[Landroid/util/Size;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto :goto_3

    .line 2073
    .end local v16    # "formats":[I
    .restart local v1    # "formats":[I
    :cond_6
    return-object v9

    .line 2039
    .end local v8    # "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v9    # "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    :cond_7
    move-object/from16 v16, v1

    .line 2040
    .end local v1    # "formats":[I
    .restart local v16    # "formats":[I
    :goto_4
    const-string v0, "No preview sizes within preview size bound!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    return-object v8

    :array_0
    .array-data 4
        0x22
        0x23
        0x100
        0x36
    .end array-data
.end method

.method private blacklist fillUHMandatoryStreamCombinations(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            ">;)V"
        }
    .end annotation

    .line 1780
    .local p1, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    .local p2, "chosenTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1781
    .local v1, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    const/4 v2, 0x0

    .line 1782
    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1784
    .local v2, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mSubstituteYUV:Z

    if-eqz v3, :cond_0

    .line 1786
    const/16 v3, 0x20

    .line 1787
    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1789
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    const/16 v3, 0x100

    .line 1791
    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1793
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    .end local v1    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v2    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :cond_0
    goto :goto_0

    .line 1796
    :cond_1
    return-void
.end method

.method private blacklist generateAvailableCombinations(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1895
    .local p1, "availableTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "MandatoryStreamCombination"

    if-eqz v0, :cond_0

    .line 1896
    const-string v0, "No available stream templates!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    return-object v2

    .line 1900
    :cond_0
    nop

    .line 1901
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v4

    .line 1902
    .local v4, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    if-nez v4, :cond_1

    .line 1903
    const-string v0, "Available size enumeration failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    return-object v2

    .line 1908
    :cond_1
    iget-object v0, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    .line 1909
    .local v6, "rawSizes":[Landroid/util/Size;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1910
    .local v7, "availableRawSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    if-eqz v6, :cond_2

    .line 1911
    array-length v0, v6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1912
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1915
    :cond_2
    new-instance v0, Landroid/util/Size;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 1916
    .local v0, "maxPrivateInputSize":Landroid/util/Size;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1917
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 1916
    :cond_3
    move-object v9, v0

    .line 1921
    .end local v0    # "maxPrivateInputSize":Landroid/util/Size;
    .local v9, "maxPrivateInputSize":Landroid/util/Size;
    :goto_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 1922
    .local v0, "maxYUVInputSize":Landroid/util/Size;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1923
    iget-object v10, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v11, 0x23

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    .line 1922
    :cond_4
    move-object v10, v0

    .line 1929
    .end local v0    # "maxYUVInputSize":Landroid/util/Size;
    .local v10, "maxYUVInputSize":Landroid/util/Size;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1931
    .local v11, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1932
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1933
    .local v12, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1935
    .local v13, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v14, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1936
    iget-object v14, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const/4 v8, 0x1

    if-eq v14, v15, :cond_5

    move v14, v8

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    .line 1937
    .local v14, "isReprocessable":Z
    :goto_3
    if-eqz v14, :cond_7

    .line 1941
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    .local v15, "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v2, v5, :cond_6

    .line 1944
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    const/16 v2, 0x22

    .local v2, "format":I
    goto :goto_4

    .line 1948
    .end local v2    # "format":I
    :cond_6
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1949
    const/16 v2, 0x23

    .line 1951
    .restart local v2    # "format":I
    :goto_4
    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    invoke-direct {v5, v15, v2, v8, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZ)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1953
    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    invoke-direct {v5, v15, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    .end local v2    # "format":I
    .end local v15    # "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    :cond_7
    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v5, v2

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_a

    aget-object v8, v2, v15

    .line 1958
    .local v8, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/16 v16, 0x0

    .line 1959
    .local v16, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v17, v0

    iget v0, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    .line 1960
    move-object v0, v7

    move-object v1, v0

    move-object/from16 v18, v2

    move/from16 v19, v5

    .end local v16    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    goto :goto_6

    .line 1963
    .end local v0    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v16    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_8
    new-instance v0, Landroid/util/Pair;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/Integer;

    move/from16 v19, v5

    iget v5, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1965
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1969
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v16    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_6
    iget-object v0, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    move v2, v0

    .line 1972
    .local v2, "isMaximumSize":Z
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v5, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1980
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v2    # "isMaximumSize":Z
    .end local v8    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    goto :goto_5

    .line 1974
    .restart local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v2    # "isMaximumSize":Z
    .restart local v8    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    :catch_0
    move-exception v0

    .line 1975
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No available sizes found for format: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v15, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " size threshold: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " combination: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const/4 v3, 0x0

    return-object v3

    .line 1985
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v2    # "isMaximumSize":Z
    .end local v8    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    :cond_a
    move-object/from16 v17, v0

    :try_start_1
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-direct {v0, v13, v1, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1991
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1993
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v14    # "isReprocessable":Z
    move-object/from16 v0, v17

    const/4 v2, 0x0

    const/16 v5, 0x20

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 1987
    .restart local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .restart local v14    # "isReprocessable":Z
    :catch_1
    move-exception v0

    .line 1988
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/4 v1, 0x0

    return-object v1

    .line 1996
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v14    # "isReprocessable":Z
    :cond_b
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .param p1, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 2357
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;-><init>()V

    .line 2358
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2359
    .local v1, "sortedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2360
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2361
    if-nez p1, :cond_0

    .line 2362
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2365
    :cond_0
    return-object v1
.end method

.method private blacklist getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;
    .locals 24
    .param p1, "chosenStreamCombinations"    # [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .param p2, "s10Bit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1353
    move-object/from16 v1, p1

    .line 1354
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v2

    .line 1355
    .local v2, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    const/4 v3, 0x0

    const-string v4, "MandatoryStreamCombination"

    if-nez v2, :cond_0

    .line 1356
    const-string v0, "Available size enumeration failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return-object v3

    .line 1360
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1361
    .local v5, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    array-length v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1362
    array-length v0, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_7

    aget-object v8, v1, v7

    .line 1363
    .local v8, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .local v9, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1365
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    .line 1366
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/4 v14, 0x0

    .line 1368
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v15, Landroid/util/Pair;

    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v16, v0

    iget v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v15, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v15

    .line 1369
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1370
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v3, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz p2, :cond_2

    iget v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v14, 0x36

    if-ne v6, v14, :cond_2

    .line 1373
    new-instance v6, Landroid/util/Pair;

    iget-object v14, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v15, Ljava/lang/Integer;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .local v17, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    const/16 v0, 0x23

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v6, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v6

    .line 1375
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v6, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1376
    .local v6, "sdrYuvSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1377
    const-string v7, "The supported 10-bit YUV sizes are different from the supported 8-bit YUV sizes!"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v4, 0x0

    return-object v4

    .line 1376
    :cond_1
    move-object v6, v0

    goto :goto_2

    .line 1370
    .end local v6    # "sdrYuvSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    :cond_2
    move-object/from16 v17, v0

    .line 1384
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    move-object/from16 v6, v17

    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    :goto_2
    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v14, :cond_3

    const/16 v20, 0x1

    goto :goto_3

    :cond_3
    const/16 v20, 0x0

    .line 1387
    .local v20, "isMaximumSize":Z
    :goto_3
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v14, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1390
    if-eqz p2, :cond_5

    iget v15, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v1, 0x100

    if-eq v15, v1, :cond_4

    const/16 v23, 0x1

    goto :goto_4

    :cond_4
    const/16 v23, 0x0

    goto :goto_4

    .line 1391
    :cond_5
    const/16 v23, 0x0

    :goto_4
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move/from16 v19, v14

    invoke-direct/range {v17 .. v23}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1398
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v20    # "isMaximumSize":Z
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v16

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1392
    .restart local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v20    # "isMaximumSize":Z
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available sizes found for format: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " size threshold: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " combination: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v1, 0x0

    return-object v1

    .line 1403
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v20    # "isMaximumSize":Z
    :cond_6
    move/from16 v16, v0

    :try_start_1
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1409
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1411
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1405
    .restart local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_1
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No stream information for mandatory combination: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v1, 0x0

    return-object v1

    .line 1414
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :cond_7
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMaxCameraRecordingSize()Landroid/util/Size;
    .locals 13

    .line 2291
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 2293
    .local v0, "FULLHD":Landroid/util/Size;
    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 2295
    .local v1, "videoSizeArr":[Landroid/util/Size;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2296
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 2297
    .local v6, "sz":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 2298
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2296
    .end local v6    # "sz":Landroid/util/Size;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2301
    :cond_1
    invoke-static {v2, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 2302
    .local v3, "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "MandatoryStreamCombination"

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 2303
    .local v5, "sz":Landroid/util/Size;
    iget-object v7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v8, Landroid/media/MediaRecorder;

    invoke-virtual {v7, v8, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v7

    .line 2306
    .local v7, "minFrameDuration":J
    long-to-double v9, v7

    const-wide v11, 0x417faefbf5cb44e4L    # 3.3222591362126246E7

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    .line 2307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "External camera "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " has max video size:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    return-object v5

    .line 2310
    .end local v5    # "sz":Landroid/util/Size;
    .end local v7    # "minFrameDuration":J
    :cond_2
    goto :goto_1

    .line 2311
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support any 30fps video output"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    return-object v0
.end method

.method private blacklist getMaxPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 2316
    .local p1, "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz p1, :cond_1

    .line 2317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 2318
    .local v1, "size":Landroid/util/Size;
    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    .line 2319
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 2320
    return-object v1

    .line 2322
    .end local v1    # "size":Landroid/util/Size;
    :cond_0
    goto :goto_0

    .line 2325
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maximum preview size search failed with display size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryStreamCombination"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    return-object v0
.end method

.method private blacklist getMaxRecordingSize()Landroid/util/Size;
    .locals 8

    .line 2260
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-eqz v0, :cond_0

    .line 2261
    goto :goto_0

    .line 2262
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2263
    move v1, v7

    goto :goto_0

    .line 2264
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2265
    move v1, v6

    goto :goto_0

    .line 2266
    :cond_2
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2267
    move v1, v5

    goto :goto_0

    .line 2268
    :cond_3
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2269
    move v1, v4

    goto :goto_0

    .line 2270
    :cond_4
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2271
    move v1, v3

    goto :goto_0

    .line 2272
    :cond_5
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2273
    move v1, v2

    goto :goto_0

    .line 2274
    :cond_6
    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .line 2276
    .local v0, "quality":I
    if-gez v0, :cond_7

    .line 2277
    const/4 v1, 0x0

    return-object v1

    .line 2280
    :cond_7
    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 2281
    .local v1, "maxProfile":Landroid/media/CamcorderProfile;
    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public static varargs blacklist getMaxSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 7
    .param p0, "sizes"    # [Landroid/util/Size;

    .line 2114
    if-eqz p0, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    .line 2118
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 2119
    .local v1, "sz":Landroid/util/Size;
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 2120
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-le v4, v5, :cond_0

    .line 2121
    move-object v1, v3

    .line 2119
    .end local v3    # "size":Landroid/util/Size;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2125
    :cond_1
    return-object v1

    .line 2115
    .end local v1    # "sz":Landroid/util/Size;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizes was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getMinSize(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .locals 3
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    .line 2096
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2099
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 2100
    return-object p0

    .line 2102
    :cond_0
    return-object p1

    .line 2097
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizes was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;
    .locals 6
    .param p0, "sizes"    # [Landroid/util/Size;
    .param p1, "bound"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 2082
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 2084
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 2085
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2083
    .end local v3    # "size":Landroid/util/Size;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2089
    :cond_1
    return-object v0
.end method

.method private blacklist is10BitOutputSupported()Z
    .locals 1

    .line 2225
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isCapabilitySupported(I)Z
    .locals 2
    .param p1, "capability"    # I

    .line 2210
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCapabilities:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isColorOutputSupported()Z
    .locals 1

    .line 2217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isExternalCamera()Z
    .locals 2

    .line 2161
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isHardwareLevelAtLeast(I)Z
    .locals 7
    .param p1, "level"    # I

    .line 2133
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 2140
    .local v0, "sortedHwLevels":[I
    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 2141
    return v2

    .line 2144
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget v5, v0, v4

    .line 2145
    .local v5, "sortedlevel":I
    if-ne v5, p1, :cond_1

    .line 2146
    return v2

    .line 2147
    :cond_1
    iget v6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    if-ne v5, v6, :cond_2

    .line 2148
    return v3

    .line 2144
    .end local v5    # "sortedlevel":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2152
    :cond_3
    return v3

    nop

    :array_0
    .array-data 4
        0x2
        0x4
        0x0
        0x1
        0x3
    .end array-data
.end method

.method private blacklist isHardwareLevelAtLeastFull()Z
    .locals 1

    .line 2189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLegacy()Z
    .locals 1

    .line 2170
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLevel3()Z
    .locals 1

    .line 2198
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLimited()Z
    .locals 1

    .line 2180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isPrivateReprocessingSupported()Z
    .locals 1

    .line 2233
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isRemosaicReprocessingSupported()Z
    .locals 1

    .line 2249
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isYUVReprocessingSupported()Z
    .locals 1

    .line 2241
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getAvailableMandatory10BitStreamCombinations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1454
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgets10BitOutputStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1455
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->is10BitOutputSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1456
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device is not able to output 10-bit!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const/4 v1, 0x0

    return-object v1

    .line 1459
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryConcurrentStreamCombinations()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1545
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1546
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1547
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device is not backward compatible, depth streams are mandatory!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsConcurrentDepthOnlyStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1546
    :cond_0
    move-object v1, v0

    .line 1550
    .end local v0    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    :goto_0
    new-instance v0, Landroid/util/Size;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v2, v0

    .line 1551
    .local v2, "sizeVGAp":Landroid/util/Size;
    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    move-object v3, v0

    .line 1552
    .local v3, "size720p":Landroid/util/Size;
    new-instance v0, Landroid/util/Size;

    const/16 v4, 0x780

    const/16 v5, 0x5a0

    invoke-direct {v0, v4, v5}, Landroid/util/Size;-><init>(II)V

    move-object v4, v0

    .line 1554
    .local v4, "size1440p":Landroid/util/Size;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1556
    .local v5, "availableConcurrentStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    array-length v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1558
    array-length v0, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_2

    aget-object v8, v1, v7

    .line 1559
    .local v8, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    .local v9, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1562
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    .line 1564
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/4 v15, 0x0

    .line 1566
    .local v15, "formatSize":Landroid/util/Size;
    sget-object v16, Landroid/hardware/camera2/params/MandatoryStreamCombination$1;->$SwitchMap$android$hardware$camera2$params$MandatoryStreamCombination$SizeThreshold:[I

    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->ordinal()I

    move-result v6

    aget v6, v16, v6

    packed-switch v6, :pswitch_data_0

    .line 1574
    move-object v6, v3

    .end local v15    # "formatSize":Landroid/util/Size;
    .local v6, "formatSize":Landroid/util/Size;
    goto :goto_3

    .line 1571
    .end local v6    # "formatSize":Landroid/util/Size;
    .restart local v15    # "formatSize":Landroid/util/Size;
    :pswitch_0
    move-object v6, v2

    .line 1572
    .end local v15    # "formatSize":Landroid/util/Size;
    .restart local v6    # "formatSize":Landroid/util/Size;
    goto :goto_3

    .line 1568
    .end local v6    # "formatSize":Landroid/util/Size;
    .restart local v15    # "formatSize":Landroid/util/Size;
    :pswitch_1
    move-object v6, v4

    .line 1569
    .end local v15    # "formatSize":Landroid/util/Size;
    .restart local v6    # "formatSize":Landroid/util/Size;
    nop

    .line 1576
    :goto_3
    move-object/from16 v15, p0

    move/from16 v16, v0

    iget-object v0, v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v17, v1

    .end local v1    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .local v17, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    .line 1578
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 1577
    invoke-static {v6, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMinSize(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 1579
    .local v1, "sizeChosen":Landroid/util/Size;
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v1

    .end local v1    # "sizeChosen":Landroid/util/Size;
    .local v18, "sizeChosen":Landroid/util/Size;
    :try_start_1
    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .local v19, "sizeVGAp":Landroid/util/Size;
    :try_start_2
    invoke-direct {v0, v14, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1588
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1589
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v6    # "formatSize":Landroid/util/Size;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v18    # "sizeChosen":Landroid/util/Size;
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto :goto_2

    .line 1583
    .restart local v6    # "formatSize":Landroid/util/Size;
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v18    # "sizeChosen":Landroid/util/Size;
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    goto :goto_4

    .end local v18    # "sizeChosen":Landroid/util/Size;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .restart local v1    # "sizeChosen":Landroid/util/Size;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :catch_2
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 1584
    .end local v1    # "sizeChosen":Landroid/util/Size;
    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v18    # "sizeChosen":Landroid/util/Size;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No available sizes found for format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1587
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1594
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "formatSize":Landroid/util/Size;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v18    # "sizeChosen":Landroid/util/Size;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :cond_1
    move-object/from16 v15, p0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    .end local v1    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .restart local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    :try_start_3
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v9, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1600
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1601
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 1596
    .restart local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_3
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1603
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAvailableMandatoryMaximumResolutionStreamCombinations()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1618
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1619
    const-string v0, "MandatoryStreamCombination"

    const-string v1, "Device is not backward compatible!, no mandatory maximum res streams"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const/4 v0, 0x0

    return-object v0

    .line 1623
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1626
    .local v0, "chosenStreamCombinationTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    .line 1627
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1626
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    .local v1, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isRemosaicReprocessingSupported()Z

    move-result v2

    .line 1633
    .local v2, "addRemosaicReprocessing":Z
    const/4 v3, 0x0

    .line 1634
    .local v3, "remosaicSize":I
    iget-object v4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x23

    .line 1635
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v4

    .line 1636
    .local v4, "maxResYUVInputSizes":[Landroid/util/Size;
    iget-object v5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v6, 0x22

    .line 1637
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 1639
    .local v5, "maxResPRIVInputSizes":[Landroid/util/Size;
    if-eqz v2, :cond_1

    .line 1640
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1641
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1642
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1641
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1645
    :cond_1
    if-eqz v4, :cond_2

    array-length v6, v4

    if-eqz v6, :cond_2

    .line 1646
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1647
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1648
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1647
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1651
    :cond_2
    if-eqz v5, :cond_3

    array-length v6, v5

    if-eqz v6, :cond_3

    .line 1652
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1653
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1654
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1653
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1657
    :cond_3
    nop

    .line 1658
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v3

    .line 1657
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1659
    invoke-direct {p0, v1, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->fillUHMandatoryStreamCombinations(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1662
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public blacklist getAvailableMandatoryPreviewStabilizedStreamCombinations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1430
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsPreviewStabilizedStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1433
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    if-nez v1, :cond_0

    .line 1434
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device does not support preview stabilization"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v1, 0x0

    return-object v1

    .line 1438
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryStreamCombinations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1807
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MandatoryStreamCombination"

    if-nez v0, :cond_0

    .line 1808
    const-string v0, "Device is not backward compatible!"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    return-object v1

    .line 1812
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    if-gez v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1813
    const-string v0, "Invalid camera id"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    return-object v1

    .line 1817
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    .local v0, "availableTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLegacy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1820
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLegacyCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1824
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLimited()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1825
    :cond_3
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1827
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1828
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1831
    :cond_4
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1832
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1837
    :cond_5
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1839
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsBurstCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1842
    :cond_6
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastFull()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1843
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1845
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1846
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1849
    :cond_7
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1850
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1855
    :cond_8
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1857
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRawCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1859
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1860
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRAWPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1863
    :cond_9
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1864
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRAWYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1869
    :cond_a
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLevel3()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1870
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3Combinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1872
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1873
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3PrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1876
    :cond_b
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1877
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3YUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1882
    :cond_c
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->generateAvailableCombinations(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryStreamUseCaseCombinations()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1475
    const/16 v0, 0x13

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1477
    return-object v2

    .line 1480
    :cond_0
    nop

    .line 1481
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v3

    .line 1482
    .local v3, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    const-string v4, "MandatoryStreamCombination"

    if-nez v3, :cond_1

    .line 1483
    const-string v0, "Available size enumeration failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    return-object v2

    .line 1487
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1488
    .local v5, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1489
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    array-length v6, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v9, v0, v8

    .line 1490
    .local v9, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .local v10, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v11, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1494
    iget-object v11, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 1495
    .local v14, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/4 v15, 0x0

    .line 1497
    .local v15, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v7, Landroid/util/Pair;

    iget-object v2, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/Integer;

    iget v1, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v7, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v7

    .line 1499
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 1502
    .end local v15    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget-object v0, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v7, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v7, :cond_2

    const/4 v0, 0x1

    move/from16 v20, v0

    goto :goto_2

    :cond_2
    const/16 v20, 0x0

    .line 1505
    .local v20, "isMaximumSize":Z
    :goto_2
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v7, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v15, v11

    move/from16 v26, v12

    iget-wide v11, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mStreamUseCase:J

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v19, v7

    move-wide/from16 v24, v11

    invoke-direct/range {v17 .. v25}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1514
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v20    # "isMaximumSize":Z
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object v11, v15

    move-object/from16 v0, v16

    move/from16 v12, v26

    const/4 v2, 0x0

    goto :goto_1

    .line 1508
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v20    # "isMaximumSize":Z
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available sizes found for format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size threshold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " combination: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/4 v4, 0x0

    return-object v4

    .line 1519
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v20    # "isMaximumSize":Z
    :cond_3
    move-object/from16 v16, v0

    :try_start_1
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v10, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1525
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1527
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v9    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v10    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 1521
    .restart local v9    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v10    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_1
    move-exception v0

    .line 1522
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/4 v1, 0x0

    return-object v1

    .line 1530
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v10    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :cond_4
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
