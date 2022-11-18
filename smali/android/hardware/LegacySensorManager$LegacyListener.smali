.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private greylist-max-o mSensors:I

.field private greylist-max-o mTarget:Landroid/hardware/SensorListener;

.field private greylist-max-o mValues:[F

.field private final greylist-max-o mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/SensorListener;)V
    .locals 1
    .param p1, "target"    # Landroid/hardware/SensorListener;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 210
    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 213
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 215
    return-void
.end method

.method private static greylist-max-o getLegacySensorType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 355
    packed-switch p0, :pswitch_data_0

    .line 365
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 363
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 361
    :pswitch_2
    const/16 v0, 0x80

    return v0

    .line 359
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 357
    :pswitch_4
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o hasOrientationSensor(I)Z
    .locals 1
    .param p0, "sensors"    # I

    .line 245
    and-int/lit16 v0, p0, 0x81

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o mapSensorDataToWindow(I[FI)V
    .locals 8
    .param p1, "sensor"    # I
    .param p2, "values"    # [F
    .param p3, "orientation"    # I

    .line 289
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 290
    .local v1, "x":F
    const/4 v2, 0x1

    aget v3, p2, v2

    .line 291
    .local v3, "y":F
    const/4 v4, 0x2

    aget v5, p2, v4

    .line 293
    .local v5, "z":F
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 304
    :sswitch_0
    neg-float v1, v1

    .line 305
    neg-float v3, v3

    goto :goto_0

    .line 299
    :sswitch_1
    neg-float v1, v1

    .line 300
    neg-float v3, v3

    .line 301
    neg-float v5, v5

    .line 302
    goto :goto_0

    .line 296
    :sswitch_2
    neg-float v5, v5

    .line 297
    nop

    .line 308
    :goto_0
    aput v1, p2, v0

    .line 309
    aput v3, p2, v2

    .line 310
    aput v5, p2, v4

    .line 311
    const/4 v6, 0x3

    aput v1, p2, v6

    .line 312
    const/4 v6, 0x4

    aput v3, p2, v6

    .line 313
    const/4 v6, 0x5

    aput v5, p2, v6

    .line 315
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_1

    .line 317
    sparse-switch p1, :sswitch_data_1

    goto :goto_2

    .line 320
    :sswitch_3
    neg-float v6, v3

    aput v6, p2, v0

    .line 321
    aput v1, p2, v2

    .line 322
    aput v5, p2, v4

    .line 323
    goto :goto_2

    .line 326
    :sswitch_4
    const/high16 v6, 0x43870000    # 270.0f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_0

    const/16 v6, 0x5a

    goto :goto_1

    :cond_0
    const/16 v6, -0x10e

    :goto_1
    int-to-float v6, v6

    add-float/2addr v6, v1

    aput v6, p2, v0

    .line 327
    aput v5, p2, v2

    .line 328
    aput v3, p2, v4

    .line 332
    :cond_1
    :goto_2
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_3

    .line 333
    aget v1, p2, v0

    .line 334
    aget v3, p2, v2

    .line 335
    aget v5, p2, v4

    .line 337
    sparse-switch p1, :sswitch_data_2

    goto :goto_4

    .line 340
    :sswitch_5
    neg-float v6, v1

    aput v6, p2, v0

    .line 341
    neg-float v0, v3

    aput v0, p2, v2

    .line 342
    aput v5, p2, v4

    .line 343
    goto :goto_4

    .line 346
    :sswitch_6
    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v7, v1, v6

    if-ltz v7, :cond_2

    sub-float v6, v1, v6

    goto :goto_3

    :cond_2
    add-float/2addr v6, v1

    :goto_3
    aput v6, p2, v0

    .line 347
    neg-float v0, v3

    aput v0, p2, v2

    .line 348
    neg-float v0, v5

    aput v0, p2, v4

    .line 352
    :cond_3
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x80 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x8 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method greylist-max-o hasSensors()Z
    .locals 1

    .line 241
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 256
    :goto_0
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 259
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 260
    .local v0, "v":[F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 261
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 262
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    aput v1, v0, v4

    .line 263
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 264
    .local v1, "type":I
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v4

    .line 265
    .local v4, "legacyType":I
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    .line 266
    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 267
    iget v5, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 268
    iget-object v5, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v5, v6, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 270
    :cond_0
    iget v5, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    .line 271
    iget-object v5, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v8, v0, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result v5

    aput v5, v0, v2

    .line 272
    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v3, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 277
    :cond_2
    :goto_0
    return-void
.end method

.method greylist-max-o registerSensor(I)Z
    .locals 3
    .param p1, "legacyType"    # I

    .line 218
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int v1, v0, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 219
    return v2

    .line 221
    :cond_0
    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    .line 222
    .local v0, "alreadyHasOrientationSensor":Z
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 223
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    return v2

    .line 226
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method greylist-max-o unregisterSensor(I)Z
    .locals 3
    .param p1, "legacyType"    # I

    .line 230
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 231
    return v2

    .line 233
    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 234
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    return v2

    .line 237
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
