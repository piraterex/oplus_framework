.class public final Landroid/bluetooth/OobData$ClassicBuilder;
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
    name = "ClassicBuilder"
.end annotation


# instance fields
.field private blacklist mClassOfDevice:[B

.field private final blacklist mClassicLength:[B

.field private blacklist mConfirmationHash:[B

.field private final blacklist mDeviceAddressWithType:[B

.field private blacklist mDeviceName:[B

.field private blacklist mRandomizerHash:[B


# direct methods
.method public constructor whitelist <init>([B[B[B)V
    .locals 3
    .param p1, "confirmationHash"    # [B
    .param p2, "classicLength"    # [B
    .param p3, "deviceAddressWithType"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    .line 463
    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    .line 475
    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    .line 513
    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    .line 537
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    array-length v0, p1

    if-ne v0, v1, :cond_2

    .line 544
    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    .line 545
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 549
    iput-object p2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassicLength:[B

    .line 550
    array-length v0, p3

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 554
    iput-object p3, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceAddressWithType:[B

    .line 555
    return-void

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddressWithType must be 7 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classicLength must be 2 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "confirmationHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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

    .line 639
    new-instance v0, Landroid/bluetooth/OobData;

    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassicLength:[B

    iget-object v2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceAddressWithType:[B

    iget-object v3, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/OobData;-><init>([B[B[BLandroid/bluetooth/OobData-IA;)V

    .line 643
    .local v0, "oob":Landroid/bluetooth/OobData;
    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V

    .line 644
    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    if-eqz v1, :cond_1

    .line 645
    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmClassOfDevice(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmClassOfDevice(Landroid/bluetooth/OobData;[B)V

    .line 646
    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V

    .line 647
    return-object v0
.end method

.method public whitelist setClassOfDevice([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .locals 2
    .param p1, "classOfDevice"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 620
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 625
    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    .line 626
    return-object p0

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classOfDevice must be 3 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDeviceName([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .locals 0
    .param p1, "deviceName"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 595
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    .line 597
    return-object p0
.end method

.method public whitelist setRandomizerHash([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .locals 2
    .param p1, "randomizerHash"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 570
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 575
    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    .line 576
    return-object p0

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "randomizerHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
