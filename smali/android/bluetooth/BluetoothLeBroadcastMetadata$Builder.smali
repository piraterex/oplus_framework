.class public final Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastMetadata.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBroadcastCode:[B

.field private blacklist mBroadcastId:I

.field private blacklist mIsEncrypted:Z

.field private blacklist mPaSyncInterval:I

.field private blacklist mPresentationDelayMicros:I

.field private blacklist mSourceAddressType:I

.field private blacklist mSourceAdvertisingSid:I

.field private blacklist mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private blacklist mSubgroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 319
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    .line 320
    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    .line 321
    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    .line 322
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    .line 323
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    .line 324
    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    .line 333
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 3
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 319
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    .line 320
    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    .line 321
    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    .line 322
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    .line 323
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    .line 324
    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    .line 343
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    .line 344
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 345
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    .line 346
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    .line 347
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    .line 348
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    .line 349
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    .line 350
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPresentationDelayMicros()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    .line 351
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    .line 352
    return-void
.end method


# virtual methods
.method public whitelist addSubgroup(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 1
    .param p1, "subgroup"    # Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 501
    const-string/jumbo v0, "subgroup cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-object p0
.end method

.method public whitelist build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .locals 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 529
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    const v1, 0xffff

    if-eq v0, v1, :cond_3

    .line 532
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sourceAddressType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v1, "mSourceDevice cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 541
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    iget v5, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    iget v6, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    iget-boolean v7, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    iget-object v8, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    iget v9, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    iget-object v10, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;-><init>(ILandroid/bluetooth/BluetoothDevice;IIIZ[BILjava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata-IA;)V

    return-object v0

    .line 539
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must contain at least one subgroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SourceAddressTyp cannot be unknown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearSubgroup()Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 515
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 516
    return-object p0
.end method

.method public whitelist setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 0
    .param p1, "broadcastCode"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 464
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    .line 465
    return-object p0
.end method

.method public whitelist setBroadcastId(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 0
    .param p1, "broadcastId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 413
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    .line 414
    return-object p0
.end method

.method public whitelist setEncrypted(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 0
    .param p1, "isEncrypted"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 444
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    .line 445
    return-object p0
.end method

.method public whitelist setPaSyncInterval(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 0
    .param p1, "paSyncInterval"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 427
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    .line 428
    return-object p0
.end method

.method public whitelist setPresentationDelayMicros(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 3
    .param p1, "presentationDelayMicros"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 483
    if-ltz p1, :cond_0

    const v0, 0xffffff

    if-ge p1, v0, :cond_0

    .line 487
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    .line 488
    return-object p0

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presentationDelayMicros "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fall in [0, 0xFFFFFF]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSourceAdvertisingSid(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 0
    .param p1, "sourceAdvertisingSid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 400
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    .line 401
    return-object p0
.end method

.method public whitelist setSourceDevice(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .locals 3
    .param p1, "sourceDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceAddressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 374
    const v0, 0xffff

    if-eq p2, v0, :cond_2

    .line 378
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sourceAddressType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    :goto_0
    const-string/jumbo v0, "sourceDevice cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    iput p2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    .line 385
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 386
    return-object p0

    .line 375
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sourceAddressType cannot be ADDRESS_TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
