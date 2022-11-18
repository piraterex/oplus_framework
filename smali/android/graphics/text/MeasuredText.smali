.class public Landroid/graphics/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/MeasuredText$Builder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MeasuredText"


# instance fields
.field private final blacklist mBottom:I

.field private final blacklist mChars:[C

.field private final blacklist mComputeHyphenation:Z

.field private final blacklist mComputeLayout:Z

.field private final blacklist mNativePtr:J

.field private final blacklist mTop:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChars(Landroid/graphics/text/MeasuredText;)[C
    .locals 0

    iget-object p0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/text/MeasuredText;->mComputeLayout:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetReleaseFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/text/MeasuredText;->nGetReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J[CZZII)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "chars"    # [C
    .param p4, "computeHyphenation"    # Z
    .param p5, "computeLayout"    # Z
    .param p6, "top"    # I
    .param p7, "bottom"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    .line 71
    iput-object p3, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    .line 72
    iput-boolean p4, p0, Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z

    .line 73
    iput-boolean p5, p0, Landroid/graphics/text/MeasuredText;->mComputeLayout:Z

    .line 74
    iput p6, p0, Landroid/graphics/text/MeasuredText;->mTop:I

    .line 75
    iput p7, p0, Landroid/graphics/text/MeasuredText;->mBottom:I

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(J[CZZIILandroid/graphics/text/MeasuredText-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/graphics/text/MeasuredText;-><init>(J[CZZII)V

    return-void
.end method

.method private static native blacklist nGetBounds(J[CIILandroid/graphics/Rect;)V
.end method

.method private static native blacklist nGetCharWidthAt(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetExtent(J[CII)J
.end method

.method private static native blacklist nGetMemoryUsage(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetWidth(JII)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public whitelist getBounds(IILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 121
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 121
    const-string/jumbo v5, "start(%d) must be 0 <= start <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 123
    if-ltz p2, :cond_1

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 123
    const-string v5, "end(%d) must be 0 <= end <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 125
    if-gt p1, p2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 125
    const-string/jumbo v0, "start(%d) is larger than end(%d)"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-wide v4, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iget-object v6, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Landroid/graphics/text/MeasuredText;->nGetBounds(J[CIILandroid/graphics/Rect;)V

    .line 129
    return-void
.end method

.method public whitelist getCharWidthAt(I)F
    .locals 5
    .param p1, "offset"    # I

    .line 161
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-ge p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offset(%d) is larger than text length %d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v4, v4

    .line 162
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    .line 161
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/MeasuredText;->nGetCharWidthAt(JI)F

    move-result v0

    return v0
.end method

.method public blacklist getChars()[C
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    return-object v0
.end method

.method public whitelist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 140
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 140
    const-string/jumbo v5, "start(%d) must be 0 <= start <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    if-ltz p2, :cond_1

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 142
    const-string v5, "end(%d) must be 0 <= end <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    if-gt p1, p2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 144
    const-string/jumbo v0, "start(%d) is larger than end(%d)"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    invoke-static {v0, v1, v2, p1, p2}, Landroid/graphics/text/MeasuredText;->nGetExtent(J[CII)J

    move-result-wide v0

    .line 149
    .local v0, "packed":J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 150
    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 151
    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Landroid/graphics/text/MeasuredText;->mTop:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 152
    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p0, Landroid/graphics/text/MeasuredText;->mBottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 153
    return-void
.end method

.method public blacklist getMemoryUsage()I
    .locals 2

    .line 109
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/MeasuredText;->nGetMemoryUsage(J)I

    move-result v0

    return v0
.end method

.method public blacklist getNativePtr()J
    .locals 2

    .line 172
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getWidth(II)F
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 94
    const-string/jumbo v5, "start(%d) must be 0 <= start <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    if-ltz p2, :cond_1

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 96
    const-string v5, "end(%d) must be 0 <= end <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    if-gt p1, p2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 98
    const-string/jumbo v0, "start(%d) is larger than end(%d)"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/text/MeasuredText;->nGetWidth(JII)F

    move-result v0

    return v0
.end method
