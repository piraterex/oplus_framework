.class public Landroid/content/res/ResourcesImpl$ThemeImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeImpl"
.end annotation


# instance fields
.field private greylist-max-o mAssets:Landroid/content/res/AssetManager;

.field private final greylist-max-o mKey:Landroid/content/res/Resources$ThemeKey;

.field private final greylist-max-o mTheme:J

.field private greylist-max-o mThemeResId:I

.field final synthetic blacklist this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/ResourcesImpl;)V
    .locals 3
    .param p1, "this$0"    # Landroid/content/res/ResourcesImpl;

    .line 1467
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 1465
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1468
    iget-object v0, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1469
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1470
    invoke-static {}, Landroid/content/res/ResourcesImpl;->-$$Nest$sfgetsThemeRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1471
    return-void
.end method


# virtual methods
.method greylist-max-o applyStyle(IZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 1500
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/content/res/AssetManager;->applyStyleToTheme(JIZ)V

    .line 1501
    iput p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1502
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V

    .line 1503
    return-void
.end method

.method public greylist-max-o dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1577
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V

    .line 1578
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1475
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1476
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    .line 1477
    return-void
.end method

.method greylist-max-o getAllAttributes()[I
    .locals 2

    .line 1567
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAppliedStyleResId()I
    .locals 1

    .line 1488
    iget v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    return v0
.end method

.method public blacklist getAttributeResolutionStack(III)[I
    .locals 6
    .param p1, "defStyleAttr"    # I
    .param p2, "defStyleRes"    # I
    .param p3, "explicitStyleRes"    # I

    .line 1637
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->getAttributeResolutionStack(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getChangingConfigurations()I
    .locals 2

    .line 1571
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1572
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeGetChangingConfigurations(J)I

    move-result v0

    .line 1573
    .local v0, "nativeChangingConfig":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v1

    return v1
.end method

.method greylist-max-o getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    .line 1480
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method

.method greylist-max-o getNativeTheme()J
    .locals 2

    .line 1484
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    return-wide v0
.end method

.method blacklist getParentThemeIdentifier(I)I
    .locals 1
    .param p1, "resId"    # I

    .line 1493
    if-lez p1, :cond_0

    .line 1494
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getParentThemeIdentifier(I)I

    move-result v0

    return v0

    .line 1496
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getTheme()[Ljava/lang/String;
    .locals 8

    .line 1581
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v0, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1582
    .local v0, "n":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1583
    .local v1, "themes":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "j":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 1584
    iget-object v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v4, v4, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v4, v4, v3

    .line 1585
    .local v4, "resId":I
    iget-object v5, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v5, v5, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v5, v5, v3

    .line 1587
    .local v5, "forced":Z
    :try_start_0
    iget-object v6, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v6, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    goto :goto_1

    .line 1588
    :catch_0
    move-exception v6

    .line 1589
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 1591
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    add-int/lit8 v6, v2, 0x1

    if-eqz v5, :cond_0

    const-string v7, "forced"

    goto :goto_2

    :cond_0
    const-string/jumbo v7, "not forced"

    :goto_2
    aput-object v7, v1, v6

    .line 1583
    .end local v4    # "resId":I
    .end local v5    # "forced":Z
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1593
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method greylist-max-o obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 16
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 1518
    move-object/from16 v0, p0

    move-object/from16 v12, p3

    array-length v13, v12

    .line 1519
    .local v13, "len":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v13}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1525
    .local v14, "array":Landroid/content/res/TypedArray;
    move-object/from16 v15, p2

    check-cast v15, Landroid/content/res/XmlBlock$Parser;

    .line 1526
    .local v15, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, v0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, v0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-wide v8, v14, Landroid/content/res/TypedArray;->mDataAddress:J

    iget-wide v10, v14, Landroid/content/res/TypedArray;->mIndicesAddress:J

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v15

    move-object/from16 v7, p3

    invoke-virtual/range {v1 .. v11}, Landroid/content/res/AssetManager;->applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V

    .line 1528
    move-object/from16 v1, p1

    iput-object v1, v14, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1529
    iput-object v15, v14, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1535
    iget-object v2, v0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    iget-object v2, v2, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v2, v14}, Landroid/content/res/IResourcesImplExt;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v2

    return-object v2
.end method

.method greylist-max-o rebase()V
    .locals 1

    .line 1602
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase(Landroid/content/res/AssetManager;)V

    .line 1603
    return-void
.end method

.method blacklist rebase(Landroid/content/res/AssetManager;)V
    .locals 7
    .param p1, "newAssets"    # Landroid/content/res/AssetManager;

    .line 1613
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v4, v3, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v5, v3, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v6, v3, Landroid/content/res/Resources$ThemeKey;->mCount:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/res/AssetManager;->rebaseTheme(JLandroid/content/res/AssetManager;[I[ZI)Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1614
    return-void
.end method

.method greylist-max-o resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 6
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 1563
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z

    move-result v0

    return v0
.end method

.method greylist-max-o resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;
    .locals 11
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "values"    # [I
    .param p3, "attrs"    # [I

    .line 1543
    array-length v0, p3

    .line 1544
    .local v0, "len":I
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 1549
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1550
    .local v1, "array":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v9, v1, Landroid/content/res/TypedArray;->mData:[I

    iget-object v10, v1, Landroid/content/res/TypedArray;->mIndices:[I

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v10}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    .line 1551
    iput-object p1, v1, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1552
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1558
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    iget-object v2, v2, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v2, v1}, Landroid/content/res/IResourcesImplExt;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v2

    return-object v2

    .line 1545
    .end local v1    # "array":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Base attribute values must the same length as attrs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .locals 6
    .param p1, "other"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1506
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-object v3, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v4, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->setThemeTo(JLandroid/content/res/AssetManager;J)V

    .line 1508
    iget v0, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1509
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    .line 1510
    return-void
.end method
