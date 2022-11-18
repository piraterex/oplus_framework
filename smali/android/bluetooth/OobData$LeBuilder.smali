.class public final Landroid/bluetooth/OobData$LeBuilder;
.super Ljava/lang/Object;
.source "OobData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/OobData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeBuilder"
.end annotation


# instance fields
.field private blacklist mConfirmationHash:[B

.field private final blacklist mDeviceAddressWithType:[B

.field private blacklist mDeviceName:[B

.field private blacklist mLeAppearance:[B

.field private final blacklist mLeDeviceRole:I

.field private blacklist mLeFlags:I

.field private blacklist mLeTemporaryKey:[B

.field private blacklist mRandomizerHash:[B


# direct methods
.method public constructor whitelist <init>([B[BI)V
    .locals 3
    .param p1, "confirmationHash"    # [B
    .param p2, "deviceAddressWithType"    # [B
    .param p3, "leDeviceRole"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    .line 189
    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    .line 199
    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    .line 252
    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    .line 261
    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeAppearance:[B

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    .line 311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    array-length v0, p1

    if-ne v0, v1, :cond_2

    .line 317
    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    .line 318
    array-length v0, p2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 322
    iput-object p2, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceAddressWithType:[B

    .line 323
    if-ltz p3, :cond_0

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    .line 327
    iput p3, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeDeviceRole:I

    .line 328
    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leDeviceRole must be a valid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "confirmationHash must be 7 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "confirmationHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/OobData;
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 420
    new-instance v0, Landroid/bluetooth/OobData;

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceAddressWithType:[B

    iget v2, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeDeviceRole:I

    iget-object v3, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/OobData;-><init>([BI[BLandroid/bluetooth/OobData-IA;)V

    .line 425
    .local v0, "oob":Landroid/bluetooth/OobData;
    nop

    .line 426
    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeTemporaryKey(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeTemporaryKey(Landroid/bluetooth/OobData;[B)V

    .line 427
    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeAppearance:[B

    if-eqz v1, :cond_1

    .line 428
    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeAppearance(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeAppearance(Landroid/bluetooth/OobData;[B)V

    .line 429
    iget v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeFlags(Landroid/bluetooth/OobData;)I

    move-result v1

    :goto_2
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeFlags(Landroid/bluetooth/OobData;I)V

    .line 430
    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_3
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V

    .line 431
    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V

    .line 432
    return-object v0
.end method

.method public whitelist setDeviceName([B)Landroid/bluetooth/OobData$LeBuilder;
    .locals 0
    .param p1, "deviceName"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    .line 219
    return-object p0
.end method

.method public whitelist setLeFlags(I)Landroid/bluetooth/OobData$LeBuilder;
    .locals 2
    .param p1, "leFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 401
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 404
    iput p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    .line 405
    return-object p0

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leFlags must be a valid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLeTemporaryKey([B)Landroid/bluetooth/OobData$LeBuilder;
    .locals 2
    .param p1, "leTemporaryKey"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 352
    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    .line 353
    return-object p0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leTemporaryKey must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRandomizerHash([B)Landroid/bluetooth/OobData$LeBuilder;
    .locals 2
    .param p1, "randomizerHash"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 369
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 374
    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    .line 375
    return-object p0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "randomizerHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
