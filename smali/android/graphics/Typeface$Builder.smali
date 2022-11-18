.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final greylist-max-o BOLD_WEIGHT:I = 0x2bc

.field public static final greylist-max-o NORMAL_WEIGHT:I = 0x190


# instance fields
.field private final greylist-max-o mAssetManager:Landroid/content/res/AssetManager;

.field private greylist-max-o mFallbackFamilyName:Ljava/lang/String;

.field private final blacklist mFontBuilder:Landroid/graphics/fonts/Font$Builder;

.field private greylist-max-o mItalic:I

.field private final greylist-max-o mPath:Ljava/lang/String;

.field private greylist-max-o mWeight:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 507
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 508
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isAsset"    # Z
    .param p4, "cookie"    # I

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 453
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 520
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 521
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 522
    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 453
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 461
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 463
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 453
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 477
    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .local v0, "builder":Landroid/graphics/fonts/Font$Builder;
    goto :goto_0

    .line 478
    .end local v0    # "builder":Landroid/graphics/fonts/Font$Builder;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 484
    .local v0, "builder":Landroid/graphics/fonts/Font$Builder;
    :goto_0
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 485
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 486
    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 453
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 495
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 497
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 498
    return-void
.end method

.method private static greylist-max-o createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I
    .param p6, "fallback"    # Ljava/lang/String;

    .line 623
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 624
    .local v0, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 626
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const-string v4, "-"

    if-ge v3, v2, :cond_0

    .line 627
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 630
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    if-eqz p3, :cond_1

    .line 643
    array-length v3, p3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, p3, v5

    .line 644
    .local v6, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .end local v6    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o resolveFallbackTypeface()Landroid/graphics/Typeface;
    .locals 6

    .line 653
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    return-object v0

    .line 657
    :cond_0
    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 658
    .local v0, "base":Landroid/graphics/Typeface;
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v3, v2, :cond_1

    .line 659
    return-object v0

    .line 662
    :cond_1
    if-ne v1, v2, :cond_2

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I

    move-result v1

    .line 664
    .local v1, "weight":I
    :cond_2
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_3

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_3
    if-ne v3, v5, :cond_4

    :goto_0
    move v4, v5

    :cond_4
    move v2, v4

    .line 665
    .local v2, "italic":Z
    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->-$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/Typeface;
    .locals 9

    .line 674
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    if-nez v0, :cond_0

    .line 675
    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 678
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    .line 679
    .local v0, "font":Landroid/graphics/fonts/Font;
    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 680
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v4

    iget v5, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v6, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 682
    iget-object v7, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v7, :cond_2

    const-string/jumbo v7, "sans-serif"

    .line 679
    :cond_2
    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "key":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_4

    .line 685
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :try_start_1
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 687
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_3

    .line 688
    monitor-exit v2

    return-object v3

    .line 690
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/graphics/Typeface$Builder;
    :try_start_2
    throw v3

    .line 692
    .restart local p0    # "this":Landroid/graphics/Typeface$Builder;
    :cond_4
    :goto_1
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 693
    .local v2, "family":Landroid/graphics/fonts/FontFamily;
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 694
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v3

    goto :goto_2

    :cond_5
    nop

    .line 695
    .local v3, "weight":I
    :goto_2
    iget v5, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v5, v4, :cond_6

    .line 696
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v5

    goto :goto_3

    :cond_6
    nop

    :goto_3
    move v4, v5

    .line 697
    .local v4, "slant":I
    new-instance v5, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v5, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v3, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 698
    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v5

    .line 699
    .local v5, "builder":Landroid/graphics/Typeface$CustomFallbackBuilder;
    iget-object v6, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 700
    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 702
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v6

    .line 703
    .local v6, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_8

    .line 704
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 705
    :try_start_3
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v7

    goto :goto_4

    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Landroid/graphics/Typeface$Builder;
    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 708
    .restart local p0    # "this":Landroid/graphics/Typeface$Builder;
    :cond_8
    :goto_4
    return-object v6

    .line 709
    .end local v0    # "font":Landroid/graphics/fonts/Font;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "family":Landroid/graphics/fonts/FontFamily;
    .end local v3    # "weight":I
    .end local v4    # "slant":I
    .end local v5    # "builder":Landroid/graphics/Typeface$CustomFallbackBuilder;
    .end local v6    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 0
    .param p1, "familyName"    # Ljava/lang/String;

    .line 608
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    .line 609
    return-object p0
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "variationSettings"    # Ljava/lang/String;

    .line 571
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 572
    return-object p0
.end method

.method public whitelist setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 581
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    .line 582
    return-object p0
.end method

.method public whitelist setItalic(Z)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "italic"    # Z

    .line 546
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 547
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 548
    return-object p0
.end method

.method public whitelist setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "ttcIndex"    # I

    .line 559
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 560
    return-object p0
.end method

.method public whitelist setWeight(I)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "weight"    # I

    .line 533
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 534
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 535
    return-object p0
.end method
