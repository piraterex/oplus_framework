.class public final Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastReceiveState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastReceiveState$BigEncryptionState;,
        Landroid/bluetooth/BluetoothLeBroadcastReceiveState$PaSyncState;
    }
.end annotation


# static fields
.field public static final whitelist BIG_ENCRYPTION_STATE_BAD_CODE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIG_ENCRYPTION_STATE_CODE_REQUIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIG_ENCRYPTION_STATE_DECRYPTING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BIG_ENCRYPTION_STATE_INVALID:I = 0xffff

.field public static final whitelist BIG_ENCRYPTION_STATE_NOT_ENCRYPTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastReceiveState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PA_SYNC_STATE_FAILED_TO_SYNCHRONIZE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PA_SYNC_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PA_SYNC_STATE_INVALID:I = 0xffff

.field public static final whitelist PA_SYNC_STATE_NO_PAST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PA_SYNC_STATE_SYNCHRONIZED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PA_SYNC_STATE_SYNCINFO_REQUEST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mBadCode:[B

.field private final blacklist mBigEncryptionState:I

.field private final blacklist mBisSyncState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBroadcastId:I

.field private final blacklist mNumSubgroups:I

.field private final blacklist mPaSyncState:I

.field private final blacklist mSourceAddressType:I

.field private final blacklist mSourceAdvertisingSid:I

.field private final blacklist mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mSourceId:I

.field private final blacklist mSubgroupMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 453
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/bluetooth/BluetoothDevice;IIII[BILjava/util/List;Ljava/util/List;)V
    .locals 16
    .param p1, "sourceId"    # I
    .param p2, "sourceAddressType"    # I
    .param p3, "sourceDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "sourceAdvertisingSid"    # I
    .param p5, "broadcastId"    # I
    .param p6, "paSyncState"    # I
    .param p7, "bigEncryptionState"    # I
    .param p8, "badCode"    # [B
    .param p9, "numSubgroups"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/bluetooth/BluetoothDevice;",
            "IIII[BI",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p10, "bisSyncState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p11, "subgroupMetadata":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioContentMetadata;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    if-ltz v1, :cond_b

    const/16 v10, 0xff

    if-gt v1, v10, :cond_b

    .line 208
    const-string/jumbo v10, "sourceDevice cannot be null"

    invoke-static {v3, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    const v10, 0xffff

    if-eq v2, v10, :cond_a

    .line 212
    const/4 v11, 0x1

    if-eq v2, v11, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sourceAddressType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is invalid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 217
    :cond_1
    :goto_0
    const-string v12, "bisSyncState cannot be null"

    invoke-static {v8, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v12

    const-string v13, " must be equal to numSubgroups "

    if-ne v12, v7, :cond_9

    .line 222
    const-string/jumbo v12, "subgroupMetadata cannot be null"

    invoke-static {v9, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v7, :cond_8

    .line 227
    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v4, :cond_3

    if-eq v4, v11, :cond_3

    if-eq v4, v13, :cond_3

    if-eq v4, v12, :cond_3

    const/4 v14, 0x4

    if-eq v4, v14, :cond_3

    if-ne v4, v10, :cond_2

    goto :goto_1

    .line 233
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unrecognized paSyncState "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 235
    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v11, :cond_5

    if-eq v5, v13, :cond_5

    if-eq v5, v12, :cond_5

    if-ne v5, v10, :cond_4

    goto :goto_2

    .line 240
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unrecognized bigEncryptionState "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 243
    :cond_5
    :goto_2
    if-eqz v6, :cond_7

    array-length v10, v6

    const/16 v11, 0x10

    if-ne v10, v11, :cond_6

    goto :goto_3

    .line 244
    :cond_6
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "badCode must be 16 bytes long of null, but is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " + bytes long"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 247
    :cond_7
    :goto_3
    iput v1, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceId:I

    .line 248
    iput v2, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAddressType:I

    .line 249
    iput-object v3, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 250
    move/from16 v10, p4

    iput v10, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAdvertisingSid:I

    .line 251
    move/from16 v11, p5

    iput v11, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBroadcastId:I

    .line 252
    iput v4, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mPaSyncState:I

    .line 253
    iput v5, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBigEncryptionState:I

    .line 254
    iput-object v6, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBadCode:[B

    .line 255
    iput v7, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mNumSubgroups:I

    .line 256
    iput-object v8, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBisSyncState:Ljava/util/List;

    .line 257
    iput-object v9, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSubgroupMetadata:Ljava/util/List;

    .line 258
    return-void

    .line 224
    :cond_8
    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "subgroupMetadata.size()  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 225
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 219
    :cond_9
    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bisSyncState.size() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 210
    :cond_a
    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "sourceAddressType cannot be ADDRESS_TYPE_UNKNOWN"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 204
    :cond_b
    move/from16 v10, p4

    move/from16 v11, p5

    .line 205
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sourceId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " does not fall between 0x00 and 0xFF"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBadCode()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBadCode:[B

    return-object v0
.end method

.method public whitelist getBigEncryptionState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 352
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBigEncryptionState:I

    return v0
.end method

.method public whitelist getBisSyncState()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBisSyncState:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getBroadcastId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 321
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBroadcastId:I

    return v0
.end method

.method public whitelist getNumSubgroups()I
    .locals 1

    .line 375
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mNumSubgroups:I

    return v0
.end method

.method public whitelist getPaSyncState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 337
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mPaSyncState:I

    return v0
.end method

.method public whitelist getSourceAddressType()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 285
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAddressType:I

    return v0
.end method

.method public whitelist getSourceAdvertisingSid()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 310
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAdvertisingSid:I

    return v0
.end method

.method public whitelist getSourceDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 297
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getSourceId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 271
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceId:I

    return v0
.end method

.method public whitelist getSubgroupMetadata()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSubgroupMetadata:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 428
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 431
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBroadcastId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mPaSyncState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBigEncryptionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBadCode:[B

    if-eqz v0, :cond_0

    .line 437
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBadCode:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 441
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    :goto_0
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mNumSubgroups:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBisSyncState:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 445
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSubgroupMetadata:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 446
    return-void
.end method
