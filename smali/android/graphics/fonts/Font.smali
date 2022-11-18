.class public final Landroid/graphics/fonts/Font;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/Font$Builder;
    }
.end annotation


# static fields
.field private static final blacklist BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

.field private static final blacklist FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

.field private static final blacklist NOT_SPECIFIED:I = -0x1

.field private static final blacklist STYLE_ITALIC:I = 0x1

.field private static final blacklist STYLE_NORMAL:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Font"


# instance fields
.field private blacklist mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mFile:Ljava/io/File;

.field private blacklist mFontStyle:Landroid/graphics/fonts/FontStyle;

.field private blacklist mIsFileInitialized:Z

.field private blacklist mLocaleList:Landroid/os/LocaleList;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNativePtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 64
    const-class v0, Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/fonts/Font;->nGetReleaseNativeFont()J

    move-result-wide v1

    .line 65
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/Font;->BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 68
    const-class v0, Landroid/graphics/fonts/Font;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 70
    invoke-static {}, Landroid/graphics/fonts/Font;->nGetReleaseNativeFont()J

    move-result-wide v1

    .line 69
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/Font;->FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 2
    .param p1, "nativePtr"    # J

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font;->mBuffer:Ljava/nio/ByteBuffer;

    .line 513
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/fonts/Font;->mIsFileInitialized:Z

    .line 515
    iput-object v0, p0, Landroid/graphics/fonts/Font;->mFile:Ljava/io/File;

    .line 517
    iput-object v0, p0, Landroid/graphics/fonts/Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    .line 519
    iput-object v0, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 521
    iput-object v0, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    .line 533
    iput-wide p1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    .line 535
    sget-object v0, Landroid/graphics/fonts/Font;->FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 536
    return-void
.end method

.method public static blacklist getAvailableFonts()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation

    .line 869
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 870
    .local v0, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;>;"
    invoke-static {}, Landroid/graphics/fonts/Font;->nGetAvailableFontSet()[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 871
    .local v4, "nativePtr":J
    new-instance v6, Landroid/graphics/fonts/Font;

    invoke-direct {v6, v4, v5}, Landroid/graphics/fonts/Font;-><init>(J)V

    .line 872
    .local v6, "font":Landroid/graphics/fonts/Font;
    invoke-virtual {v0, v6, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    .end local v4    # "nativePtr":J
    .end local v6    # "font":Landroid/graphics/fonts/Font;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isSameSource(Landroid/graphics/fonts/Font;)Z
    .locals 5
    .param p1, "other"    # Landroid/graphics/fonts/Font;

    .line 777
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 780
    .local v0, "myBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 783
    .local v1, "otherBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 784
    return v2

    .line 788
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 789
    const/4 v2, 0x0

    return v2

    .line 796
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 797
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 798
    return v2

    .line 804
    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static native blacklist nCloneFont(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetAvailableFontSet()[J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetAxisCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetAxisInfo(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetBufferAddress(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFontPath(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetGlyphBounds(JIJLandroid/graphics/RectF;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetIndex(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLocaleList(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetMinikinFontPtr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetPackedStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetReleaseNativeFont()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetSourceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nNewByteBuffer(J)Ljava/nio/ByteBuffer;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 818
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 819
    return v0

    .line 821
    :cond_0
    instance-of v1, p1, Landroid/graphics/fonts/Font;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 822
    return v2

    .line 825
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/graphics/fonts/Font;

    .line 829
    .local v1, "f":Landroid/graphics/fonts/Font;
    iget-wide v3, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/graphics/fonts/Font;->nGetMinikinFontPtr(J)J

    move-result-wide v3

    iget-wide v5, v1, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/graphics/fonts/Font;->nGetMinikinFontPtr(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 830
    return v0

    .line 833
    :cond_2
    invoke-virtual {p0, v1}, Landroid/graphics/fonts/Font;->paramEquals(Landroid/graphics/fonts/Font;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 834
    return v2

    .line 837
    :cond_3
    invoke-direct {p0, v1}, Landroid/graphics/fonts/Font;->isSameSource(Landroid/graphics/fonts/Font;)Z

    move-result v0

    return v0
.end method

.method public whitelist getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .locals 11

    .line 625
    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_0
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v1, :cond_0

    .line 627
    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nGetAxisCount(J)I

    move-result v1

    .line 628
    .local v1, "axisCount":I
    new-array v2, v1, [Landroid/graphics/fonts/FontVariationAxis;

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 629
    const/4 v2, 0x4

    new-array v2, v2, [C

    .line 630
    .local v2, "charBuffer":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 631
    iget-wide v4, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v4, v5, v3}, Landroid/graphics/fonts/Font;->nGetAxisInfo(JI)J

    move-result-wide v4

    .line 632
    .local v4, "packedAxis":J
    const-wide v6, 0xffffffffL

    and-long/2addr v6, v4

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 633
    .local v6, "value":F
    const/4 v7, 0x0

    const-wide/high16 v8, -0x100000000000000L

    and-long/2addr v8, v4

    const/16 v10, 0x38

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 634
    const-wide/high16 v7, 0xff000000000000L

    and-long/2addr v7, v4

    const/16 v9, 0x30

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    int-to-char v7, v7

    const/4 v8, 0x1

    aput-char v7, v2, v8

    .line 635
    const/4 v7, 0x2

    const-wide v8, 0xff0000000000L

    and-long/2addr v8, v4

    const/16 v10, 0x28

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 636
    const/4 v7, 0x3

    const-wide v8, 0xff00000000L

    and-long/2addr v8, v4

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 637
    iget-object v7, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    new-instance v8, Landroid/graphics/fonts/FontVariationAxis;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v8, v9, v6}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    aput-object v8, v7, v3

    .line 630
    .end local v4    # "packedAxis":J
    .end local v6    # "value":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 640
    .end local v1    # "axisCount":I
    .end local v2    # "charBuffer":[C
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    iget-object v0, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object v0

    .line 640
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getBuffer()Ljava/nio/ByteBuffer;
    .locals 5

    .line 547
    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 552
    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nCloneFont(J)J

    move-result-wide v1

    .line 553
    .local v1, "ref":J
    iget-wide v3, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/graphics/fonts/Font;->nNewByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 556
    .local v3, "fromNative":Ljava/nio/ByteBuffer;
    sget-object v4, Landroid/graphics/fonts/Font;->BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v4, v3, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 559
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/fonts/Font;->mBuffer:Ljava/nio/ByteBuffer;

    .line 561
    .end local v1    # "ref":J
    .end local v3    # "fromNative":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mBuffer:Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getFile()Ljava/io/File;
    .locals 3

    .line 573
    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-boolean v1, p0, Landroid/graphics/fonts/Font;->mIsFileInitialized:Z

    if-nez v1, :cond_1

    .line 575
    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nGetFontPath(J)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mFile:Ljava/io/File;

    .line 579
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/fonts/Font;->mIsFileInitialized:Z

    .line 581
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mFile:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getGlyphBounds(ILandroid/graphics/Paint;Landroid/graphics/RectF;)F
    .locals 6
    .param p1, "glyphId"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "outBoundingBox"    # Landroid/graphics/RectF;

    .line 678
    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    move v2, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/fonts/Font;->nGetGlyphBounds(JIJLandroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public whitelist getLocaleList()Landroid/os/LocaleList;
    .locals 3

    .line 651
    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    if-nez v1, :cond_1

    .line 653
    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nGetLocaleList(J)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "langTags":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    goto :goto_0

    .line 657
    :cond_0
    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    .line 660
    .end local v1    # "langTags":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object v1

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getMetrics(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "outMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 695
    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/fonts/Font;->nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F

    .line 696
    return-void
.end method

.method public blacklist getNativePtr()J
    .locals 2

    .line 700
    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getSourceIdentifier()I
    .locals 2

    .line 756
    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/Font;->nGetSourceId(J)I

    move-result v0

    return v0
.end method

.method public whitelist getStyle()Landroid/graphics/fonts/FontStyle;
    .locals 5

    .line 593
    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    if-nez v1, :cond_1

    .line 595
    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nGetPackedStyle(J)I

    move-result v1

    .line 596
    .local v1, "packedStyle":I
    new-instance v2, Landroid/graphics/fonts/FontStyle;

    .line 597
    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->unpackWeight(I)I

    move-result v3

    .line 598
    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->unpackItalic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v2, v3, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    .line 601
    .end local v1    # "packedStyle":I
    :cond_1
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    monitor-exit v0

    return-object v1

    .line 602
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getTtcIndex()I
    .locals 2

    .line 614
    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/Font;->nGetIndex(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 842
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 843
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 844
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 845
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 850
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 842
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist paramEquals(Landroid/graphics/fonts/Font;)Z
    .locals 2
    .param p1, "f"    # Landroid/graphics/fonts/Font;

    .line 809
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/fonts/FontStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 811
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 809
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font {path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 856
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 857
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ttcIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 858
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", axes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 859
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 860
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 861
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    return-object v0
.end method
