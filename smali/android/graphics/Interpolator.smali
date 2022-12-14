.class public Landroid/graphics/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Interpolator$Result;
    }
.end annotation


# instance fields
.field private greylist-max-o mFrameCount:I

.field private greylist-max-o mValueCount:I

.field private greylist-max-o native_instance:J


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 2
    .param p1, "valueCount"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 26
    invoke-static {p1, v0}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 27
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2
    .param p1, "valueCount"    # I
    .param p2, "frameCount"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 31
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 32
    invoke-static {p1, p2}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 33
    return-void
.end method

.method private static native greylist-max-o nativeConstructor(II)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeReset(JII)V
.end method

.method private static native greylist-max-o nativeSetKeyFrame(JII[F[F)V
.end method

.method private static native greylist-max-o nativeSetRepeatMirror(JFZ)V
.end method

.method private static native greylist-max-o nativeTimeToValues(JI[F)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 149
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Interpolator;->nativeDestructor(J)V

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 151
    return-void
.end method

.method public final whitelist getKeyFrameCount()I
    .locals 1

    .line 56
    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    return v0
.end method

.method public final whitelist getValueCount()I
    .locals 1

    .line 60
    iget v0, p0, Landroid/graphics/Interpolator;->mValueCount:I

    return v0
.end method

.method public whitelist reset(I)V
    .locals 1
    .param p1, "valueCount"    # I

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Interpolator;->reset(II)V

    .line 42
    return-void
.end method

.method public whitelist reset(II)V
    .locals 2
    .param p1, "valueCount"    # I
    .param p2, "frameCount"    # I

    .line 50
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 51
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 52
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeReset(JII)V

    .line 53
    return-void
.end method

.method public whitelist setKeyFrame(II[F)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "msec"    # I
    .param p3, "values"    # [F

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    .line 75
    return-void
.end method

.method public whitelist setKeyFrame(II[F[F)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "msec"    # I
    .param p3, "values"    # [F
    .param p4, "blend"    # [F

    .line 88
    if-ltz p1, :cond_3

    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    if-ge p1, v0, :cond_3

    .line 91
    array-length v0, p3

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_2

    .line 94
    if-eqz p4, :cond_1

    array-length v0, p4

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    .line 97
    :cond_1
    :goto_0
    iget-wide v1, p0, Landroid/graphics/Interpolator;->native_instance:J

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Interpolator;->nativeSetKeyFrame(JII[F[F)V

    .line 98
    return-void

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    .line 89
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist setRepeatMirror(FZ)V
    .locals 2
    .param p1, "repeatCount"    # F
    .param p2, "mirror"    # Z

    .line 106
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 107
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeSetRepeatMirror(JFZ)V

    .line 109
    :cond_0
    return-void
.end method

.method public whitelist timeToValues(I[F)Landroid/graphics/Interpolator$Result;
    .locals 2
    .param p1, "msec"    # I
    .param p2, "values"    # [F

    .line 137
    if-eqz p2, :cond_1

    array-length v0, p2

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    .line 140
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeTimeToValues(JI[F)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    return-object v0

    .line 142
    :pswitch_0
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    return-object v0

    .line 141
    :pswitch_1
    sget-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist timeToValues([F)Landroid/graphics/Interpolator$Result;
    .locals 2
    .param p1, "values"    # [F

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Interpolator;->timeToValues(I[F)Landroid/graphics/Interpolator$Result;

    move-result-object v0

    return-object v0
.end method
