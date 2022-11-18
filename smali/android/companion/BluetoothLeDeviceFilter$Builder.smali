.class public final Landroid/companion/BluetoothLeDeviceFilter$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "BluetoothLeDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/BluetoothLeDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/BluetoothLeDeviceFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mNamePattern:Ljava/util/regex/Pattern;

.field private greylist-max-o mRawDataFilter:[B

.field private greylist-max-o mRawDataFilterMask:[B

.field private greylist-max-o mRenameBytesFrom:I

.field private greylist-max-o mRenameBytesLength:I

.field private greylist-max-o mRenameBytesReverseOrder:Z

.field private greylist-max-o mRenameNameFrom:I

.field private greylist-max-o mRenameNameLength:I

.field private greylist-max-o mRenamePrefix:Ljava/lang/String;

.field private greylist-max-o mRenameSuffix:Ljava/lang/String;

.field private greylist-max-o mScanFilter:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 292
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    .line 301
    iput v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    return-void
.end method

.method private greylist-max-o checkRangeNotEmpty(I)V
    .locals 2
    .param p1, "length"    # I

    .line 409
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Range must be non-empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 410
    return-void
.end method

.method private greylist-max-o checkRenameNotSet()V
    .locals 2

    .line 405
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Renaming rule can only be set once"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 406
    return-void
.end method

.method private greylist-max-o setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 414
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/companion/BluetoothLeDeviceFilter;->getRenamePrefixLengthLimit()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Prefix is too long"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 417
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    .line 418
    iput-object p2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameSuffix:Ljava/lang/String;

    .line 419
    return-object p0
.end method


# virtual methods
.method public whitelist build()Landroid/companion/BluetoothLeDeviceFilter;
    .locals 14

    .line 426
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->markUsed()V

    .line 427
    new-instance v13, Landroid/companion/BluetoothLeDeviceFilter;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilter:[B

    iget-object v4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilterMask:[B

    iget-object v5, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    iget-object v6, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameSuffix:Ljava/lang/String;

    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    iget v8, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesLength:I

    iget v9, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    iget v10, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameLength:I

    iget-boolean v11, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/companion/BluetoothLeDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZLandroid/companion/BluetoothLeDeviceFilter-IA;)V

    return-object v13
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .locals 1

    .line 292
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->build()Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 0
    .param p1, "regex"    # Ljava/util/regex/Pattern;

    .line 311
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 312
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 313
    return-object p0
.end method

.method public whitelist setRawDataFilter([B[B)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 2
    .param p1, "rawDataFilter"    # [B
    .param p2, "rawDataFilterMask"    # [B

    .line 339
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 340
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    if-eqz p2, :cond_1

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Mask and filter should be the same length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 344
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilter:[B

    .line 345
    iput-object p2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilterMask:[B

    .line 346
    return-object p0
.end method

.method public whitelist setRenameFromBytes(Ljava/lang/String;Ljava/lang/String;IILjava/nio/ByteOrder;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "bytesFrom"    # I
    .param p4, "bytesLength"    # I
    .param p5, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 370
    invoke-direct {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRenameNotSet()V

    .line 371
    invoke-direct {p0, p4}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRangeNotEmpty(I)V

    .line 372
    iput p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    .line 373
    iput p4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesLength:I

    .line 374
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 375
    invoke-direct {p0, p1, p2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setRenameFromName(Ljava/lang/String;Ljava/lang/String;II)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "nameFrom"    # I
    .param p4, "nameLength"    # I

    .line 396
    invoke-direct {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRenameNotSet()V

    .line 397
    invoke-direct {p0, p4}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRangeNotEmpty(I)V

    .line 398
    iput p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    .line 399
    iput p4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameLength:I

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 401
    invoke-direct {p0, p1, p2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setScanFilter(Landroid/bluetooth/le/ScanFilter;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 0
    .param p1, "scanFilter"    # Landroid/bluetooth/le/ScanFilter;

    .line 324
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 325
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 326
    return-object p0
.end method
