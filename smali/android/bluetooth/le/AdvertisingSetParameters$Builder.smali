.class public final Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertisingSetParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConnectable:Z

.field private blacklist mIncludeTxPower:Z

.field private blacklist mInterval:I

.field private blacklist mIsAnonymous:Z

.field private blacklist mIsLegacy:Z

.field private blacklist mOwnAddressType:I

.field private blacklist mPrimaryPhy:I

.field private blacklist mScannable:Z

.field private blacklist mSecondaryPhy:I

.field private blacklist mTxPowerLevel:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    .line 303
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    .line 304
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    .line 305
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    .line 306
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    .line 307
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    .line 308
    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    .line 309
    const/16 v0, 0xa0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    .line 310
    const/4 v0, -0x7

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/AdvertisingSetParameters;
    .locals 14

    .line 493
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    if-eqz v0, :cond_4

    .line 494
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    if-nez v0, :cond_3

    .line 498
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy advertisement can\'t be connectable and non-scannable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 504
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy advertising can\'t include TX power level in header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Legacy advertising can\'t be anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_4
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-nez v1, :cond_5

    goto :goto_1

    .line 509
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertising can\'t be both connectable and scannable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_6
    :goto_1
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    goto :goto_2

    .line 514
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertising can\'t be both connectable and anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_8
    :goto_2
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    iget-boolean v4, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    iget-boolean v5, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    iget-boolean v7, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    iget v8, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    iget v9, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    iget v10, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    iget v11, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    iget v12, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIIIILandroid/bluetooth/le/AdvertisingSetParameters-IA;)V

    return-object v0
.end method

.method public whitelist setAnonymous(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "isAnonymous"    # Z

    .line 360
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    .line 361
    return-object p0
.end method

.method public whitelist setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "connectable"    # Z

    .line 323
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    .line 324
    return-object p0
.end method

.method public whitelist setIncludeTxPower(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "includeTxPower"    # Z

    .line 372
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    .line 373
    return-object p0
.end method

.method public whitelist setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "interval"    # I

    .line 431
    const/16 v0, 0xa0

    if-lt p1, v0, :cond_0

    const v0, 0xffffff

    if-gt p1, v0, :cond_0

    .line 434
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    .line 435
    return-object p0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "isLegacy"    # Z

    .line 347
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    .line 348
    return-object p0
.end method

.method public whitelist setOwnAddressType(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "ownAddressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 479
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 483
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

    .line 484
    return-object p0

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown address type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPrimaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "primaryPhy"    # I

    .line 389
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad primaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    .line 394
    return-object p0
.end method

.method public whitelist setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "scannable"    # Z

    .line 336
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    .line 337
    return-object p0
.end method

.method public whitelist setSecondaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "secondaryPhy"    # I

    .line 412
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad secondaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    .line 418
    return-object p0
.end method

.method public whitelist setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 5
    .param p1, "txPowerLevel"    # I

    .line 452
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x7f

    if-eqz v1, :cond_1

    .line 454
    const/16 v1, 0x14

    .line 455
    .local v1, "maxPowerLevel":I
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 458
    .end local v1    # "maxPowerLevel":I
    goto :goto_0

    .line 456
    .restart local v1    # "maxPowerLevel":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid txPowerLevel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    .end local v1    # "maxPowerLevel":I
    :cond_1
    if-lt p1, v2, :cond_2

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    .line 463
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    .line 464
    return-object p0

    .line 460
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown txPowerLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
