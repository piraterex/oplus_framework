.class public final Landroid/bluetooth/le/AdvertiseSettings$Builder;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConnectable:Z

.field private blacklist mMode:I

.field private blacklist mOwnAddressType:I

.field private blacklist mTimeoutMillis:I

.field private blacklist mTxPowerLevel:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 180
    const/4 v1, 0x2

    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 181
    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/AdvertiseSettings;
    .locals 8

    .line 273
    new-instance v7, Landroid/bluetooth/le/AdvertiseSettings;

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    iget v2, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    iget v4, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    iget v5, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZIILandroid/bluetooth/le/AdvertiseSettings-IA;)V

    return-object v7
.end method

.method public whitelist setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 3
    .param p1, "advertiseMode"    # I

    .line 195
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 199
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 200
    return-object p0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 0
    .param p1, "connectable"    # Z

    .line 229
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 230
    return-object p0
.end method

.method public whitelist setOwnAddressType(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 3
    .param p1, "ownAddressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 261
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 265
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    .line 266
    return-object p0

    .line 263
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

.method public whitelist setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 2
    .param p1, "timeoutMillis"    # I

    .line 241
    if-ltz p1, :cond_0

    const v0, 0x2bf20

    if-gt p1, v0, :cond_0

    .line 245
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 246
    return-object p0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeoutMillis invalid (must be 0-180000 milliseconds)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 3
    .param p1, "txPowerLevel"    # I

    .line 214
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 218
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 219
    return-object p0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tx power level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
