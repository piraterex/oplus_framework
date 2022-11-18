.class public Landroid/media/audiopolicy/AudioMix$Builder;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCallbackFlags:I

.field private greylist-max-o mDeviceAddress:Ljava/lang/String;

.field private greylist-max-o mDeviceSystemType:I

.field private greylist-max-o mFormat:Landroid/media/AudioFormat;

.field private greylist-max-o mRouteFlags:I

.field private greylist-max-o mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 278
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 279
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 280
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 282
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 283
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/audiopolicy/AudioMixingRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 278
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 279
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 280
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 282
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 283
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 298
    if-eqz p1, :cond_0

    .line 301
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 302
    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/media/audiopolicy/AudioMix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    if-eqz v0, :cond_d

    .line 419
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 421
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 423
    :cond_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 425
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v0

    .line 426
    .local v0, "rate":I
    if-gtz v0, :cond_1

    .line 427
    const v0, 0xac44

    .line 429
    :cond_1
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    iput-object v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 430
    .end local v0    # "rate":I
    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 437
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_3

    .line 438
    new-instance v0, Landroid/media/AudioFormat$Builder;

    iget-object v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-direct {v0, v4}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 445
    :cond_3
    :goto_0
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    const v3, -0x7fffff00

    const v4, 0x8000

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_6

    .line 448
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 452
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 453
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported device on non-playback mix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have audio device without flag ROUTE_FLAG_RENDER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_6
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/lit8 v5, v0, 0x3

    if-eq v5, v2, :cond_c

    .line 460
    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    .line 461
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-nez v0, :cond_7

    .line 462
    iput v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    goto :goto_1

    .line 463
    :cond_7
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 464
    iput v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    goto :goto_1

    .line 466
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown mixing rule type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_9
    :goto_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->allowPrivilegedMediaPlaybackCapture()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 471
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioMix;->canBeUsedForPrivilegedMediaCapture(Landroid/media/AudioFormat;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_a

    goto :goto_2

    .line 473
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    .end local v0    # "error":Ljava/lang/String;
    :cond_b
    :goto_2
    new-instance v0, Landroid/media/audiopolicy/AudioMix;

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v5, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iget v6, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    iget v7, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    iget-object v8, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/media/audiopolicy/AudioMix-IA;)V

    return-object v0

    .line 457
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have flag ROUTE_FLAG_RENDER without an audio device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 328
    if-eqz p1, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal callback flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 333
    return-object p0
.end method

.method greylist-max-o setDevice(ILjava/lang/String;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 0
    .param p1, "deviceType"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 344
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 345
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public whitelist setDevice(Landroid/media/AudioDeviceInfo;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 399
    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 406
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 407
    return-object p0

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported device type on mix, not a sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioDeviceInfo argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 357
    if-eqz p1, :cond_0

    .line 360
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 361
    return-object p0

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 313
    if-eqz p1, :cond_0

    .line 316
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 317
    return-object p0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 4
    .param p1, "routeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 374
    if-eqz p1, :cond_2

    .line 377
    and-int/lit8 v0, p1, 0x3

    const-string/jumbo v1, "when configuring an AudioMix"

    if-eqz v0, :cond_1

    .line 381
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 385
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 386
    return-object p0

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown route flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid route flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal empty route flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
