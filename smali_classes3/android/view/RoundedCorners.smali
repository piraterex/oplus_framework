.class public Landroid/view/RoundedCorners;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RoundedCorners;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

.field public static final blacklist ROUNDED_CORNER_POSITION_LENGTH:I = 0x4

.field private static blacklist sCachedDisplayHeight:I

.field private static blacklist sCachedDisplayWidth:I

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedRadii:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCachedRoundedCorners:Landroid/view/RoundedCorners;


# instance fields
.field public final blacklist mRoundedCorners:[Landroid/view/RoundedCorner;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 51
    new-instance v0, Landroid/view/RoundedCorners;

    new-instance v1, Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v2, Landroid/view/RoundedCorner;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v3, Landroid/view/RoundedCorner;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v4, Landroid/view/RoundedCorner;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/view/RoundedCorner;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/RoundedCorners;-><init>(Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;)V

    sput-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    .line 590
    new-instance v0, Landroid/view/RoundedCorners$1;

    invoke-direct {v0}, Landroid/view/RoundedCorners$1;-><init>()V

    sput-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;)V
    .locals 2
    .param p1, "topLeft"    # Landroid/view/RoundedCorner;
    .param p2, "topRight"    # Landroid/view/RoundedCorner;
    .param p3, "bottomRight"    # Landroid/view/RoundedCorner;
    .param p4, "bottomLeft"    # Landroid/view/RoundedCorner;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/RoundedCorner;

    iput-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 83
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 84
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 85
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 86
    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/RoundedCorners;)V
    .locals 5
    .param p1, "roundedCorners"    # Landroid/view/RoundedCorners;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    iput-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 92
    iget-object v2, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    new-instance v3, Landroid/view/RoundedCorner;

    iget-object v4, p1, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    aput-object v3, v2, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>([Landroid/view/RoundedCorner;)V
    .locals 0
    .param p1, "roundedCorners"    # [Landroid/view/RoundedCorner;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 78
    return-void
.end method

.method private static blacklist createRoundedCorner(IIII)Landroid/view/RoundedCorner;
    .locals 4
    .param p0, "position"    # I
    .param p1, "radius"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .line 514
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :pswitch_0
    new-instance v1, Landroid/view/RoundedCorner;

    const/4 v2, 0x3

    .line 537
    if-lez p1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 538
    :goto_0
    if-lez p1, :cond_1

    sub-int v0, p3, p1

    :cond_1
    invoke-direct {v1, v2, p1, v3, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 534
    return-object v1

    .line 528
    :pswitch_1
    new-instance v1, Landroid/view/RoundedCorner;

    const/4 v2, 0x2

    .line 531
    if-lez p1, :cond_2

    sub-int v3, p2, p1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 532
    :goto_1
    if-lez p1, :cond_3

    sub-int v0, p3, p1

    :cond_3
    invoke-direct {v1, v2, p1, v3, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 528
    return-object v1

    .line 522
    :pswitch_2
    new-instance v1, Landroid/view/RoundedCorner;

    const/4 v2, 0x1

    .line 525
    if-lez p1, :cond_4

    sub-int v3, p2, p1

    goto :goto_2

    :cond_4
    move v3, v0

    .line 526
    :goto_2
    if-lez p1, :cond_5

    move v0, p1

    :cond_5
    invoke-direct {v1, v2, p1, v3, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 522
    return-object v1

    .line 516
    :pswitch_3
    new-instance v1, Landroid/view/RoundedCorner;

    .line 519
    if-lez p1, :cond_6

    move v2, p1

    goto :goto_3

    :cond_6
    move v2, v0

    .line 520
    :goto_3
    if-lez p1, :cond_7

    move v3, p1

    goto :goto_4

    :cond_7
    move v3, v0

    :goto_4
    invoke-direct {v1, v0, p1, v2, v3}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 516
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist fromRadii(Landroid/util/Pair;II)Landroid/view/RoundedCorners;
    .locals 1
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Landroid/view/RoundedCorners;"
        }
    .end annotation

    .line 113
    .local p0, "radii":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2, p1, p2}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;
    .locals 9
    .param p1, "physicalDisplayWidth"    # I
    .param p2, "physicalDisplayHeight"    # I
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIII)",
            "Landroid/view/RoundedCorners;"
        }
    .end annotation

    .line 118
    .local p0, "radii":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v0

    .line 125
    .local v0, "physicalPixelDisplaySizeRatio":F
    sget-object v1, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v2, Landroid/view/RoundedCorners;->sCachedRadii:Landroid/util/Pair;

    invoke-virtual {p0, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/view/RoundedCorners;->sCachedDisplayWidth:I

    if-ne v2, p3, :cond_1

    sget v2, Landroid/view/RoundedCorners;->sCachedDisplayHeight:I

    if-ne v2, p4, :cond_1

    sget v2, Landroid/view/RoundedCorners;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    .line 129
    sget-object v2, Landroid/view/RoundedCorners;->sCachedRoundedCorners:Landroid/view/RoundedCorners;

    monitor-exit v1

    return-object v2

    .line 131
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    const/4 v1, 0x4

    new-array v2, v1, [Landroid/view/RoundedCorner;

    .line 134
    .local v2, "roundedCorners":[Landroid/view/RoundedCorner;
    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v4

    .line 135
    .local v3, "topRadius":I
    :goto_0
    iget-object v5, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v4, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 136
    .local v4, "bottomRadius":I
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_4

    .line 137
    int-to-float v5, v3

    mul-float/2addr v5, v0

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v3, v5

    .line 138
    int-to-float v5, v4

    mul-float/2addr v5, v0

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v4, v5

    .line 140
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_6

    .line 141
    nop

    .line 143
    const/4 v6, 0x1

    if-gt v5, v6, :cond_5

    move v6, v3

    goto :goto_2

    :cond_5
    move v6, v4

    .line 141
    :goto_2
    invoke-static {v5, v6, p3, p4}, Landroid/view/RoundedCorners;->createRoundedCorner(IIII)Landroid/view/RoundedCorner;

    move-result-object v6

    aput-object v6, v2, v5

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 148
    .end local v5    # "i":I
    :cond_6
    new-instance v1, Landroid/view/RoundedCorners;

    invoke-direct {v1, v2}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    move-object v5, v1

    .line 149
    .local v5, "result":Landroid/view/RoundedCorners;
    sget-object v6, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 150
    :try_start_1
    sput p3, Landroid/view/RoundedCorners;->sCachedDisplayWidth:I

    .line 151
    sput p4, Landroid/view/RoundedCorners;->sCachedDisplayHeight:I

    .line 152
    sput-object p0, Landroid/view/RoundedCorners;->sCachedRadii:Landroid/util/Pair;

    .line 153
    sput-object v5, Landroid/view/RoundedCorners;->sCachedRoundedCorners:Landroid/view/RoundedCorners;

    .line 154
    sput v0, Landroid/view/RoundedCorners;->sCachedPhysicalPixelDisplaySizeRatio:F

    .line 155
    monitor-exit v6

    .line 156
    return-object v5

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 131
    .end local v2    # "roundedCorners":[Landroid/view/RoundedCorner;
    .end local v3    # "topRadius":I
    .end local v4    # "bottomRadius":I
    .end local v5    # "result":Landroid/view/RoundedCorners;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static blacklist fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;
    .param p2, "physicalDisplayWidth"    # I
    .param p3, "physicalDisplayHeight"    # I
    .param p4, "displayWidth"    # I
    .param p5, "displayHeight"    # I

    .line 103
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->loadRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getBuiltInDisplayIsRound(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 328
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "index":I
    const v1, 0x1070026

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 331
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 332
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .local v2, "isRound":Z
    goto :goto_0

    .line 334
    .end local v2    # "isRound":Z
    :cond_0
    const v2, 0x111017d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 336
    .restart local v2    # "isRound":Z
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    return v2
.end method

.method private static blacklist getRotatedIndex(II)I
    .locals 1
    .param p0, "position"    # I
    .param p1, "rotation"    # I

    .line 546
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static blacklist getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 236
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "index":I
    const v1, 0x1070091

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 240
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_0

    .line 243
    .end local v2    # "radius":I
    :cond_0
    const v2, 0x105026c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 245
    .restart local v2    # "radius":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return v2
.end method

.method public static blacklist getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 192
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "index":I
    const v1, 0x1070093

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 195
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_0

    .line 198
    .end local v2    # "radius":I
    :cond_0
    const v2, 0x105026a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 200
    .restart local v2    # "radius":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    return v2
.end method

.method public static blacklist getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 259
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "index":I
    const v1, 0x1070092

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 263
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_0

    .line 266
    .end local v2    # "radius":I
    :cond_0
    const v2, 0x105026b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 268
    .restart local v2    # "radius":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    return v2
.end method

.method public static blacklist getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 306
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, "index":I
    const v1, 0x1070090

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 310
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 311
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_0

    .line 313
    .end local v2    # "radius":I
    :cond_0
    const v2, 0x105026d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 315
    .restart local v2    # "radius":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    return v2
.end method

.method public static blacklist getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 282
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "index":I
    const v1, 0x1070094

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 286
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 287
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_0

    .line 289
    .end local v2    # "radius":I
    :cond_0
    const v2, 0x105026f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 291
    .restart local v2    # "radius":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    return v2
.end method

.method public static blacklist getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 214
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, "index":I
    const v1, 0x1070095

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 217
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_0

    .line 220
    .end local v2    # "radius":I
    :cond_0
    const v2, 0x105026e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 222
    .restart local v2    # "radius":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    return v2
.end method

.method private blacklist insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;
    .locals 4
    .param p1, "position"    # I
    .param p2, "radius"    # I
    .param p3, "centerX"    # I
    .param p4, "centerY"    # I
    .param p5, "insetLeft"    # I
    .param p6, "insetTop"    # I
    .param p7, "insetRight"    # I
    .param p8, "insetBottom"    # I

    .line 404
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Landroid/view/RoundedCorner;

    invoke-direct {v0, p1}, Landroid/view/RoundedCorner;-><init>(I)V

    return-object v0

    .line 409
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :pswitch_0
    if-le p2, p8, :cond_1

    if-le p2, p5, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 421
    .local v0, "hasRoundedCorner":Z
    :goto_0
    goto :goto_4

    .line 417
    .end local v0    # "hasRoundedCorner":Z
    :pswitch_1
    if-le p2, p8, :cond_2

    if-le p2, p7, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 418
    .restart local v0    # "hasRoundedCorner":Z
    :goto_1
    goto :goto_4

    .line 414
    .end local v0    # "hasRoundedCorner":Z
    :pswitch_2
    if-le p2, p6, :cond_3

    if-le p2, p7, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 415
    .restart local v0    # "hasRoundedCorner":Z
    :goto_2
    goto :goto_4

    .line 411
    .end local v0    # "hasRoundedCorner":Z
    :pswitch_3
    if-le p2, p6, :cond_4

    if-le p2, p5, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    .line 412
    .restart local v0    # "hasRoundedCorner":Z
    :goto_3
    nop

    .line 426
    :goto_4
    new-instance v2, Landroid/view/RoundedCorner;

    .line 428
    if-eqz v0, :cond_5

    sub-int v3, p3, p5

    goto :goto_5

    :cond_5
    move v3, v1

    .line 429
    :goto_5
    if-eqz v0, :cond_6

    sub-int v1, p4, p6

    :cond_6
    invoke-direct {v2, p1, p2, v3, v1}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 426
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist loadRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "radiusDefault":I
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "radiusTop":I
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "radiusBottom":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 174
    const/4 v3, 0x0

    return-object v3

    .line 176
    :cond_0
    new-instance v3, Landroid/util/Pair;

    .line 177
    if-lez v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 178
    if-lez v2, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .local v3, "radii":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 560
    if-ne p1, p0, :cond_0

    .line 561
    const/4 v0, 0x1

    return v0

    .line 563
    :cond_0
    instance-of v0, p1, Landroid/view/RoundedCorners;

    if-eqz v0, :cond_1

    .line 564
    move-object v0, p1

    check-cast v0, Landroid/view/RoundedCorners;

    .line 565
    .local v0, "r":Landroid/view/RoundedCorners;
    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    iget-object v2, v0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 567
    .end local v0    # "r":Landroid/view/RoundedCorners;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllRoundedCorners()[Landroid/view/RoundedCorner;
    .locals 5

    .line 463
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    .line 464
    .local v1, "roundedCorners":[Landroid/view/RoundedCorner;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 465
    new-instance v3, Landroid/view/RoundedCorner;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    aput-object v3, v1, v2

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public blacklist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .locals 2
    .param p1, "position"    # I

    .line 441
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/RoundedCorner;

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    .line 441
    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 553
    .local v4, "roundedCorner":Landroid/view/RoundedCorner;
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 552
    .end local v4    # "roundedCorner":Landroid/view/RoundedCorner;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    :cond_0
    return v0
.end method

.method public blacklist inset(IIII)Landroid/view/RoundedCorners;
    .locals 13
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 393
    move-object v9, p0

    const/4 v10, 0x4

    new-array v11, v10, [Landroid/view/RoundedCorner;

    .line 394
    .local v11, "roundedCorners":[Landroid/view/RoundedCorner;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 395
    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v12

    .line 396
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 395
    move-object v0, p0

    move v1, v12

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/RoundedCorners;->insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;

    move-result-object v0

    aput-object v0, v11, v12

    .line 394
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 399
    .end local v12    # "i":I
    :cond_0
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v11}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0
.end method

.method public blacklist insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .locals 20
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "roundedCornerFrame"    # Landroid/graphics/Rect;

    .line 348
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int v12, v0, v1

    .line 349
    .local v12, "insetLeft":I
    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v1, v11, Landroid/graphics/Rect;->top:I

    sub-int v13, v0, v1

    .line 350
    .local v13, "insetTop":I
    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, v10, Landroid/graphics/Rect;->right:I

    sub-int v14, v0, v1

    .line 351
    .local v14, "insetRight":I
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v0, v1

    .line 352
    .local v15, "insetBottom":I
    const/4 v8, 0x4

    new-array v7, v8, [Landroid/view/RoundedCorner;

    .line 354
    .local v7, "roundedCorners":[Landroid/view/RoundedCorner;
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 355
    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Landroid/view/RoundedCorner;

    invoke-direct {v0, v6}, Landroid/view/RoundedCorner;-><init>(I)V

    aput-object v0, v7, v6

    .line 357
    move v9, v6

    move-object v10, v7

    move/from16 v19, v8

    goto/16 :goto_2

    .line 359
    :cond_0
    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v16

    .line 360
    .local v16, "radius":I
    packed-switch v6, :pswitch_data_0

    .line 378
    move v9, v6

    .end local v6    # "i":I
    .local v9, "i":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    .end local v9    # "i":I
    .restart local v6    # "i":I
    :pswitch_0
    move/from16 v0, v16

    .line 375
    .local v0, "centerX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v1, v16

    .line 376
    .local v1, "centerY":I
    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_1

    .line 370
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, v0, v16

    .line 371
    .restart local v0    # "centerX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v1, v16

    .line 372
    .restart local v1    # "centerY":I
    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_1

    .line 366
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, v0, v16

    .line 367
    .restart local v0    # "centerX":I
    move/from16 v1, v16

    .line 368
    .restart local v1    # "centerY":I
    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_1

    .line 362
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :pswitch_3
    move/from16 v0, v16

    .line 363
    .restart local v0    # "centerX":I
    move/from16 v1, v16

    .line 364
    .restart local v1    # "centerY":I
    move/from16 v17, v0

    move/from16 v18, v1

    .line 381
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .local v17, "centerX":I
    .local v18, "centerY":I
    :goto_1
    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v12

    move v9, v6

    .end local v6    # "i":I
    .restart local v9    # "i":I
    move v6, v13

    move-object v10, v7

    .end local v7    # "roundedCorners":[Landroid/view/RoundedCorner;
    .local v10, "roundedCorners":[Landroid/view/RoundedCorner;
    move v7, v14

    move/from16 v19, v8

    move v8, v15

    invoke-direct/range {v0 .. v8}, Landroid/view/RoundedCorners;->insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;

    move-result-object v0

    aput-object v0, v10, v9

    .line 354
    .end local v16    # "radius":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    :goto_2
    add-int/lit8 v6, v9, 0x1

    move-object/from16 v9, p0

    move-object v7, v10

    move/from16 v8, v19

    move-object/from16 v10, p1

    .end local v9    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_0

    .end local v10    # "roundedCorners":[Landroid/view/RoundedCorner;
    .restart local v7    # "roundedCorners":[Landroid/view/RoundedCorner;
    :cond_1
    move-object v10, v7

    .line 384
    .end local v6    # "i":I
    .end local v7    # "roundedCorners":[Landroid/view/RoundedCorner;
    .restart local v10    # "roundedCorners":[Landroid/view/RoundedCorner;
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v10}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist rotate(III)Landroid/view/RoundedCorners;
    .locals 7
    .param p1, "rotation"    # I
    .param p2, "initialDisplayWidth"    # I
    .param p3, "initialDisplayHeight"    # I

    .line 495
    if-nez p1, :cond_0

    .line 496
    return-object p0

    .line 498
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 499
    .local v0, "isSizeFlipped":Z
    :cond_2
    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/RoundedCorner;

    .line 501
    .local v1, "newCorners":[Landroid/view/RoundedCorner;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 502
    invoke-static {v2, p1}, Landroid/view/RoundedCorners;->getRotatedIndex(II)I

    move-result v3

    .line 503
    .local v3, "newPosistion":I
    iget-object v4, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v2

    .line 505
    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    .line 506
    if-eqz v0, :cond_3

    move v5, p3

    goto :goto_2

    :cond_3
    move v5, p2

    .line 507
    :goto_2
    if-eqz v0, :cond_4

    move v6, p2

    goto :goto_3

    :cond_4
    move v6, p3

    .line 503
    :goto_3
    invoke-static {v3, v4, v5, v6}, Landroid/view/RoundedCorners;->createRoundedCorner(IIII)Landroid/view/RoundedCorner;

    move-result-object v4

    aput-object v4, v1, v3

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 509
    .end local v2    # "i":I
    .end local v3    # "newPosistion":I
    :cond_5
    new-instance v2, Landroid/view/RoundedCorners;

    invoke-direct {v2, v1}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v2
.end method

.method public blacklist scale(F)Landroid/view/RoundedCorners;
    .locals 8
    .param p1, "scale"    # F

    .line 474
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 475
    return-object p0

    .line 478
    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    .line 479
    .local v1, "roundedCorners":[Landroid/view/RoundedCorner;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 480
    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v3, v3, v2

    .line 481
    .local v3, "roundedCorner":Landroid/view/RoundedCorner;
    new-instance v4, Landroid/view/RoundedCorner;

    .line 483
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 484
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    float-to-int v6, v6

    .line 485
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/view/RoundedCorner;-><init>(IIII)V

    aput-object v4, v1, v2

    .line 479
    .end local v3    # "roundedCorner":Landroid/view/RoundedCorner;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v1}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0
.end method

.method public blacklist setRoundedCorner(ILandroid/view/RoundedCorner;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "roundedCorner"    # Landroid/view/RoundedCorner;

    .line 452
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    if-nez p2, :cond_0

    .line 453
    new-instance v1, Landroid/view/RoundedCorner;

    invoke-direct {v1, p1}, Landroid/view/RoundedCorner;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    aput-object v1, v0, p1

    .line 454
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedCorners{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 582
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    invoke-virtual {p0, v0}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 585
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 588
    :goto_0
    return-void
.end method
