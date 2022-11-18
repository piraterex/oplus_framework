.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private greylist mPackedAxisBits:J

.field private greylist mPackedAxisValues:[F

.field public whitelist orientation:F

.field public whitelist pressure:F

.field public blacklist relativeX:F

.field public blacklist relativeY:F

.field public whitelist size:F

.field public whitelist toolMajor:F

.field public whitelist toolMinor:F

.field public whitelist touchMajor:F

.field public whitelist touchMinor:F

.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 4030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4040
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 4041
    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "size"    # I

    .line 4046
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 4047
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 4048
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 4047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4050
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .locals 2

    .line 4169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4171
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4172
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4173
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4174
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4175
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4176
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4177
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4178
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4179
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4180
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4181
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4182
    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 6
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4190
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4191
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4192
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 4193
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4194
    .local v2, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    .line 4195
    .local v3, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4196
    .local v4, "values":[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v3, v5, :cond_1

    .line 4197
    :cond_0
    array-length v5, v2

    new-array v4, v5, [F

    .line 4198
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4200
    :cond_1
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4203
    .end local v2    # "otherValues":[F
    .end local v3    # "count":I
    .end local v4    # "values":[F
    :cond_2
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4204
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4205
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4206
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4207
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4208
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4209
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4210
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4211
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4212
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4213
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4214
    return-void
.end method

.method public whitelist getAxisValue(I)F
    .locals 8
    .param p1, "axis"    # I

    .line 4226
    sparse-switch p1, :sswitch_data_0

    .line 4250
    if-ltz p1, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    .line 4253
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4254
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4255
    .local v2, "axisBit":J
    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 4256
    const/4 v4, 0x0

    return v4

    .line 4248
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    :sswitch_0
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return v0

    .line 4246
    :sswitch_1
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    return v0

    .line 4244
    :sswitch_2
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v0

    .line 4242
    :sswitch_3
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v0

    .line 4240
    :sswitch_4
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v0

    .line 4238
    :sswitch_5
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v0

    .line 4236
    :sswitch_6
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v0

    .line 4234
    :sswitch_7
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v0

    .line 4232
    :sswitch_8
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v0

    .line 4230
    :sswitch_9
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v0

    .line 4228
    :sswitch_a
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v0

    .line 4258
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    :cond_0
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4259
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    .line 4251
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist setAxisValue(IF)V
    .locals 10
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .line 4274
    sparse-switch p1, :sswitch_data_0

    .line 4309
    if-ltz p1, :cond_4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_4

    .line 4312
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4313
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4314
    .local v2, "axisBit":J
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4315
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4316
    .local v5, "values":[F
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 4317
    if-nez v5, :cond_0

    .line 4318
    const/16 v6, 0x8

    new-array v5, v6, [F

    .line 4319
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_0

    .line 4306
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :sswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4307
    goto :goto_1

    .line 4303
    :sswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4304
    goto :goto_1

    .line 4300
    :sswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4301
    goto :goto_1

    .line 4297
    :sswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4298
    goto :goto_1

    .line 4294
    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4295
    goto :goto_1

    .line 4291
    :sswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4292
    goto :goto_1

    .line 4288
    :sswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4289
    goto :goto_1

    .line 4285
    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4286
    goto :goto_1

    .line 4282
    :sswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4283
    goto :goto_1

    .line 4279
    :sswitch_9
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4280
    goto :goto_1

    .line 4276
    :sswitch_a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4277
    goto :goto_1

    .line 4321
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    .restart local v4    # "index":I
    .restart local v5    # "values":[F
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    .line 4322
    .local v6, "count":I
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 4323
    if-eq v4, v6, :cond_2

    .line 4324
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v6, v4

    invoke-static {v5, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4328
    :cond_1
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [F

    .line 4329
    .local v7, "newValues":[F
    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4330
    add-int/lit8 v8, v4, 0x1

    sub-int v9, v6, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4332
    move-object v5, v7

    .line 4333
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4336
    .end local v6    # "count":I
    .end local v7    # "newValues":[F
    :cond_2
    :goto_0
    or-long v6, v0, v2

    iput-wide v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4338
    :cond_3
    aput p2, v5, v4

    .line 4341
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :goto_1
    return-void

    .line 4310
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method
