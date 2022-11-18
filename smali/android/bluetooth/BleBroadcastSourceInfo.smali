.class public final Landroid/bluetooth/BleBroadcastSourceInfo;
.super Ljava/lang/Object;
.source "BleBroadcastSourceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleBroadcastSourceInfo$BroadcastAssistEncryptionState;,
        Landroid/bluetooth/BleBroadcastSourceInfo$BroadcastAssistAudioSyncState;,
        Landroid/bluetooth/BleBroadcastSourceInfo$BroadcastAssistMetadataSyncState;,
        Landroid/bluetooth/BleBroadcastSourceInfo$BroadcastAssistAddressType;
    }
.end annotation


# static fields
.field private static final blacklist BASS_DBG:Z

.field private static final blacklist BIS_NO_PREF:I = -0x1

.field public static final blacklist BROADCASTER_ID_INVALID:I = 0xffff

.field public static final blacklist BROADCAST_ASSIST_ADDRESS_TYPE_INVALID:I = 0xffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BROADCAST_ASSIST_ADDRESS_TYPE_PUBLIC:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BROADCAST_ASSIST_ADDRESS_TYPE_RANDOM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BROADCAST_ASSIST_AUDIO_SYNC_STATE_INVALID:I = 0xffff

.field public static final blacklist BROADCAST_ASSIST_AUDIO_SYNC_STATE_NOT_SYNCHRONIZED:I = 0x0

.field public static final blacklist BROADCAST_ASSIST_AUDIO_SYNC_STATE_SYNCHRONIZED:I = 0x1

.field public static final blacklist BROADCAST_ASSIST_ENC_STATE_BADCODE:I = 0x3

.field public static final blacklist BROADCAST_ASSIST_ENC_STATE_DECRYPTING:I = 0x2

.field public static final blacklist BROADCAST_ASSIST_ENC_STATE_INVALID:I = 0xffff

.field public static final blacklist BROADCAST_ASSIST_ENC_STATE_PIN_NEEDED:I = 0x1

.field public static final blacklist BROADCAST_ASSIST_ENC_STATE_UNENCRYPTED:I = 0x0

.field public static final blacklist BROADCAST_ASSIST_INVALID_SOURCE_ID:B = 0x0t

.field public static final blacklist BROADCAST_ASSIST_PA_SYNC_STATE_IDLE:I = 0x0

.field public static final blacklist BROADCAST_ASSIST_PA_SYNC_STATE_INVALID:I = 0xffff

.field public static final blacklist BROADCAST_ASSIST_PA_SYNC_STATE_IN_SYNC:I = 0x2

.field public static final blacklist BROADCAST_ASSIST_PA_SYNC_STATE_NO_PAST:I = 0x4

.field public static final blacklist BROADCAST_ASSIST_PA_SYNC_STATE_SYNCINFO_REQ:I = 0x1

.field public static final blacklist BROADCAST_ASSIST_PA_SYNC_STATE_SYNC_FAIL:I = 0x3

.field private static final blacklist BROADCAST_CODE_SIZE:I = 0x10

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_MAX_NUM_SOURCE_INFOS:Ljava/lang/String; = "android.bluetooth.device.extra.MAX_NUM_SOURCE_INFOS"

.field public static final blacklist EXTRA_SOURCE_INFO:Ljava/lang/String; = "android.bluetooth.device.extra.SOURCE_INFO"

.field public static final blacklist EXTRA_SOURCE_INFO_INDEX:Ljava/lang/String; = "android.bluetooth.device.extra.SOURCE_INFO_INDEX"

.field private static final blacklist TAG:Ljava/lang/String; = "BleBroadcastSourceInfo"


# instance fields
.field private blacklist mAudioBisIndexList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAudioSyncState:I

.field private blacklist mBadBroadcastCode:[B

.field private blacklist mBroadcastCode:Ljava/lang/String;

.field private blacklist mBroadcasterId:I

.field private blacklist mEncyptionStatus:I

.field private blacklist mMetaDataSyncState:I

.field private blacklist mMetadataList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mNumSubGroups:B

.field private blacklist mSourceAddressType:I

.field private blacklist mSourceAdvSid:B

.field private blacklist mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private blacklist mSourceId:B


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadMapFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->readMapFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smreadMetadataListFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->readMetadataListFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 80
    const-string v0, "BleBroadcastSourceInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_DBG:Z

    .line 1001
    new-instance v0, Landroid/bluetooth/BleBroadcastSourceInfo$1;

    invoke-direct {v0}, Landroid/bluetooth/BleBroadcastSourceInfo$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BleBroadcastSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(B)V
    .locals 3
    .param p1, "sourceId"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    .line 306
    iput-byte p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    .line 307
    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    .line 308
    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    .line 309
    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 311
    const/4 v2, 0x0

    iput-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    .line 312
    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    .line 313
    iput-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    .line 314
    iput-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    .line 315
    iput-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    .line 316
    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    .line 317
    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;BBIIIIILjava/lang/String;[BBLjava/util/Map;Ljava/util/Map;)V
    .locals 15
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # B
    .param p3, "advSid"    # B
    .param p4, "broadcasterId"    # I
    .param p5, "addressType"    # I
    .param p6, "metadataSyncstate"    # I
    .param p7, "audioSyncstate"    # I
    .param p8, "encryptionStatus"    # I
    .param p9, "broadcastCode"    # Ljava/lang/String;
    .param p10, "badCode"    # [B
    .param p11, "numSubGroups"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "BBIIIII",
            "Ljava/lang/String;",
            "[BB",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 553
    .local p12, "bisIndiciesList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p13, "metadataList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    move-object v0, p0

    move-object/from16 v1, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    .line 286
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    .line 554
    move/from16 v2, p2

    iput-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    .line 555
    move/from16 v3, p6

    iput v3, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    .line 556
    move/from16 v4, p7

    iput v4, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    .line 557
    move/from16 v5, p8

    iput v5, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    .line 558
    move/from16 v6, p5

    iput v6, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 559
    move-object/from16 v7, p1

    iput-object v7, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 560
    move/from16 v8, p3

    iput-byte v8, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    .line 561
    move/from16 v9, p4

    iput v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    .line 562
    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    .line 563
    if-eqz v1, :cond_0

    array-length v11, v1

    if-eqz v11, :cond_0

    .line 564
    array-length v11, v1

    new-array v11, v11, [B

    iput-object v11, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    .line 565
    array-length v12, v1

    const/4 v13, 0x0

    invoke-static {v1, v13, v11, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    :cond_0
    move/from16 v11, p11

    iput-byte v11, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    .line 568
    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v13, p12

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v12, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    .line 569
    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v14, p13

    invoke-direct {v12, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v12, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    .line 570
    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;BBIIII[BBILjava/util/Map;Ljava/util/Map;)V
    .locals 16
    .param p1, "audioSource"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # B
    .param p3, "advSid"    # B
    .param p4, "broadcasterId"    # I
    .param p5, "addressType"    # I
    .param p6, "metadataSyncstate"    # I
    .param p7, "encryptionStatus"    # I
    .param p8, "badCode"    # [B
    .param p9, "numSubGroups"    # B
    .param p10, "audioSyncstate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "BBIIII[BBI",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    .local p11, "selectedBISIndiciesList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;>;"
    .local p12, "metadataList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    .line 286
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    .line 424
    move/from16 v2, p2

    iput-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    .line 425
    move/from16 v3, p5

    iput v3, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 426
    move-object/from16 v4, p1

    iput-object v4, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 427
    move/from16 v5, p3

    iput-byte v5, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    .line 428
    move/from16 v6, p4

    iput v6, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    .line 429
    move/from16 v7, p6

    iput v7, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    .line 430
    move/from16 v8, p10

    iput v8, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    .line 431
    move/from16 v9, p7

    iput v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    .line 432
    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 433
    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    .line 434
    array-length v12, v11

    invoke-static {v1, v10, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    :cond_0
    move/from16 v11, p9

    iput-byte v11, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    .line 437
    const/4 v12, 0x0

    .line 438
    .local v12, "audioBisIndex":I
    if-eqz p11, :cond_4

    .line 439
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 440
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 441
    .local v15, "selectedBISIndicies":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    const-string v10, "BleBroadcastSourceInfo"

    if-nez v15, :cond_1

    .line 443
    const-string/jumbo v1, "selectedBISIndiciesList is null"

    invoke-static {v10, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 445
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 446
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 447
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v2

    shl-int v2, v3, v2

    or-int/2addr v12, v2

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p2

    move/from16 v3, p5

    goto :goto_1

    .line 452
    .end local v1    # "i":I
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subGroupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "audioBisIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v1, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;>;"
    .end local v15    # "selectedBISIndicies":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    move/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v1, p8

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 456
    :cond_4
    if-eqz p12, :cond_6

    .line 457
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 458
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 459
    .local v3, "metadata":[B
    if-eqz v3, :cond_5

    array-length v10, v3

    if-eqz v10, :cond_5

    .line 460
    array-length v10, v3

    new-array v10, v10, [B

    .line 461
    .local v10, "mD":[B
    array-length v13, v3

    const/4 v14, 0x0

    invoke-static {v3, v14, v10, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 459
    .end local v10    # "mD":[B
    :cond_5
    const/4 v14, 0x0

    .line 463
    :goto_4
    iget-object v10, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-interface {v10, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    .end local v3    # "metadata":[B
    goto :goto_3

    .line 466
    :cond_6
    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;BBIIILjava/util/List;ILjava/lang/String;)V
    .locals 16
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # B
    .param p3, "advSid"    # B
    .param p4, "addressType"    # I
    .param p5, "metadataSyncstate"    # I
    .param p6, "audioSyncstate"    # I
    .param p8, "encryptionStatus"    # I
    .param p9, "broadcastCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "BBIII",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 504
    .local p7, "selectedBISIndicies":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    .line 286
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    .line 505
    move/from16 v2, p2

    iput-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    .line 506
    move/from16 v3, p5

    iput v3, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    .line 507
    move/from16 v4, p6

    iput v4, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    .line 508
    move/from16 v5, p8

    iput v5, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    .line 509
    move/from16 v6, p4

    iput v6, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 510
    move-object/from16 v7, p1

    iput-object v7, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 511
    move/from16 v8, p3

    iput-byte v8, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    .line 512
    const v9, 0xffff

    iput v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    .line 513
    const/4 v9, 0x0

    const-string v10, "BleBroadcastSourceInfo"

    if-nez v1, :cond_0

    .line 514
    const-string/jumbo v11, "selectedBISIndiciesList is null"

    invoke-static {v10, v11}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 516
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 517
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 518
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 519
    .local v12, "audioBisIndex":Ljava/lang/Integer;
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v14}, Landroid/bluetooth/BleBroadcastSourceChannel;->getSubGroupId()I

    move-result v14

    .line 520
    .local v14, "subGroupId":I
    iget-object v15, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 521
    iget-object v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/Integer;

    .line 523
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v15}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v15

    shl-int/2addr v13, v15

    or-int/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 524
    .end local v12    # "audioBisIndex":Ljava/lang/Integer;
    .local v9, "audioBisIndex":Ljava/lang/Integer;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v13}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "is set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "audioBisIndex"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v12, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .end local v9    # "audioBisIndex":Ljava/lang/Integer;
    .end local v14    # "subGroupId":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 535
    .end local v11    # "i":I
    :cond_3
    :goto_1
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    .line 536
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    .line 537
    const/4 v10, 0x0

    iput-byte v10, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    .line 538
    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;BIIILjava/util/List;)V
    .locals 9
    .param p1, "audioSource"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "advSid"    # B
    .param p3, "addressType"    # I
    .param p4, "metadataSyncstate"    # I
    .param p5, "audioSyncstate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "BIII",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p6, "selectedBISIndicies":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    .line 349
    iput p4, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    .line 350
    iput p5, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    .line 351
    iput p3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 352
    iput-object p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 353
    iput-byte p2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    .line 354
    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    .line 355
    const-string v1, "BleBroadcastSourceInfo"

    const/4 v2, 0x0

    if-nez p6, :cond_0

    .line 356
    const-string/jumbo v3, "selectedBISIndiciesList is null"

    invoke-static {v1, v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 358
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 359
    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v4}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 361
    .local v4, "audioBisIndex":Ljava/lang/Integer;
    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceChannel;->getSubGroupId()I

    move-result v6

    .line 362
    .local v6, "subGroupId":I
    iget-object v7, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 363
    iget-object v7, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljava/lang/Integer;

    .line 365
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v8}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v8

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v7}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "is set"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v5, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v4    # "audioBisIndex":Ljava/lang/Integer;
    .end local v6    # "subGroupId":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "i":I
    :cond_3
    :goto_1
    iput-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    .line 374
    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    .line 376
    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    .line 377
    iput-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    .line 378
    return-void
.end method

.method static blacklist BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 1068
    sget-boolean v0, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_DBG:Z

    if-eqz v0, :cond_0

    .line 1069
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    return-void
.end method

.method private static blacklist readMapFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 965
    .local p1, "bisIndexList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 967
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 968
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 969
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 970
    .local v3, "value":Ljava/lang/Integer;
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "value":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist readMetadataListFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 987
    .local p1, "metadataList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 989
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 990
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 991
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 992
    .local v3, "metaDataLen":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 993
    .local v4, "metadata":[B
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 994
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v4, v5, [B

    .line 995
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 997
    :cond_0
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "metaDataLen":Ljava/lang/Integer;
    .end local v4    # "metadata":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 957
    .local p2, "bisIndexList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 959
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 962
    :cond_0
    return-void
.end method

.method private blacklist writeMetadataListToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 975
    .local p2, "metadataList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 977
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 979
    .local v2, "metadata":[B
    if-eqz v2, :cond_0

    .line 980
    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 983
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    .end local v2    # "metadata":[B
    :cond_0
    goto :goto_0

    .line 984
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 574
    instance-of v0, p1, Landroid/bluetooth/BleBroadcastSourceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 575
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 576
    .local v0, "other":Landroid/bluetooth/BleBroadcastSourceInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "other>>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleBroadcastSourceInfo"

    invoke-static {v3, v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local>>  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    iget-byte v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v2, v3, :cond_0

    iget-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    iget-byte v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 589
    .end local v0    # "other":Landroid/bluetooth/BleBroadcastSourceInfo;
    :cond_1
    return v1
.end method

.method public greylist getAdvAddressType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 722
    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    return v0
.end method

.method public blacklist getAdvertisingSid()B
    .locals 1

    .line 742
    iget-byte v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    return v0
.end method

.method public blacklist getAudioSyncState()I
    .locals 1

    .line 805
    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    return v0
.end method

.method public blacklist getBadBroadcastCode()[B
    .locals 1

    .line 848
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    return-object v0
.end method

.method public greylist getBisIndexList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 923
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getBroadcastChannelsSyncStatus()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;"
        }
    .end annotation

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v0, "bcastIndicies":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    if-ge v1, v2, :cond_2

    .line 903
    iget-object v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 904
    .local v2, "bisIndexValue":I
    const/4 v3, 0x0

    move v8, v2

    move v9, v3

    .line 905
    .end local v2    # "bisIndexValue":I
    .local v8, "bisIndexValue":I
    .local v9, "index":I
    :goto_1
    if-eqz v8, :cond_1

    .line 906
    and-int/lit8 v2, v8, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 907
    new-instance v10, Landroid/bluetooth/BleBroadcastSourceChannel;

    .line 908
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [B

    move-object v2, v10

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/BleBroadcastSourceChannel;-><init>(ILjava/lang/String;ZI[B)V

    .line 909
    .local v2, "bI":Landroid/bluetooth/BleBroadcastSourceChannel;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    .end local v2    # "bI":Landroid/bluetooth/BleBroadcastSourceChannel;
    :cond_0
    shr-int/lit8 v8, v8, 0x1

    .line 912
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 902
    .end local v8    # "bisIndexValue":I
    .end local v9    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "returning Bisindicies:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleBroadcastSourceInfo"

    invoke-static {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-object v0
.end method

.method public greylist getBroadcastCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 953
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBroadcasterId()I
    .locals 1

    .line 752
    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    return v0
.end method

.method public blacklist getEncryptionStatus()I
    .locals 1

    .line 831
    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    return v0
.end method

.method public greylist getMetadataList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 929
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getMetadataSyncState()I
    .locals 1

    .line 780
    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    return v0
.end method

.method public greylist getNumberOfSubGroups()B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 862
    iget-byte v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    return v0
.end method

.method public blacklist getSourceDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public blacklist getSourceId()B
    .locals 1

    .line 667
    iget-byte v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 632
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 633
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    .line 634
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 632
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEmptyEntry()Z
    .locals 3

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "ret":Z
    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    const v2, 0xffff

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    if-nez v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    if-ne v1, v2, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 603
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmptyEntry returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleBroadcastSourceInfo"

    invoke-static {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return v0
.end method

.method public blacklist matches(Landroid/bluetooth/BleBroadcastSourceInfo;)Z
    .locals 3
    .param p1, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "ret":Z
    if-nez p1, :cond_0

    .line 610
    const/4 v0, 0x0

    goto :goto_0

    .line 612
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    .line 613
    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAdvertisingSid()B

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 614
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAdvAddressType()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 615
    const/4 v0, 0x1

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    .line 619
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAdvertisingSid()B

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 620
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAdvAddressType()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    .line 621
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 622
    const/4 v0, 0x1

    .line 626
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "matches returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleBroadcastSourceInfo"

    invoke-static {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return v0
.end method

.method public blacklist setAdvAddressType(I)V
    .locals 0
    .param p1, "addressType"    # I

    .line 708
    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    .line 709
    return-void
.end method

.method public blacklist setAdvertisingSid(B)V
    .locals 0
    .param p1, "advSid"    # B

    .line 732
    iput-byte p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    .line 733
    return-void
.end method

.method blacklist setAudioSyncState(I)V
    .locals 0
    .param p1, "audioSyncState"    # I

    .line 793
    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    .line 794
    return-void
.end method

.method blacklist setBroadcastChannelsSyncStatus(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 874
    .local p1, "selectedBISIndicies":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    const-string v0, "BleBroadcastSourceInfo"

    if-nez p1, :cond_0

    .line 876
    const-string/jumbo v1, "selectedBISIndiciesList is null"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void

    .line 879
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 880
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 881
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 882
    .local v2, "audioBisIndex":Ljava/lang/Integer;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v4}, Landroid/bluetooth/BleBroadcastSourceChannel;->getSubGroupId()I

    move-result v4

    .line 883
    .local v4, "subGroupId":I
    iget-object v5, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 884
    iget-object v5, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/lang/Integer;

    .line 886
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v6

    shl-int/2addr v3, v6

    or-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v5}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "is set"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .end local v2    # "audioBisIndex":Ljava/lang/Integer;
    .end local v4    # "subGroupId":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 892
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method blacklist setBroadcastCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastCode"    # Ljava/lang/String;

    .line 933
    iput-object p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    .line 934
    return-void
.end method

.method public greylist setBroadcasterId(I)V
    .locals 0
    .param p1, "broadcasterId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 939
    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    .line 940
    return-void
.end method

.method blacklist setEncryptionStatus(I)V
    .locals 0
    .param p1, "encryptionStatus"    # I

    .line 818
    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    .line 819
    return-void
.end method

.method public blacklist setMetadataSyncState(I)V
    .locals 0
    .param p1, "metadataSyncState"    # I

    .line 766
    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    .line 767
    return-void
.end method

.method public blacklist setSourceDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "sourceDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 688
    iput-object p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 689
    return-void
.end method

.method public blacklist setSourceId(B)V
    .locals 0
    .param p1, "sourceId"    # B

    .line 678
    iput-byte p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    .line 679
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{BleBroadcastSourceInfo : mSourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sourceDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " addressType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSourceAdvSid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMetaDataSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioSyncState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEncyptionStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBadBroadcastCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNumSubGroups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBroadcastCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioBisIndexList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMetadataList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBroadcasterId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1044
    const-string v0, "BleBroadcastSourceInfo"

    const-string/jumbo v1, "writeToParcel>"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1046
    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1048
    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1049
    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1053
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    if-eqz v1, :cond_0

    .line 1054
    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    :goto_0
    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1061
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1062
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 1063
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->writeMetadataListToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToParcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    return-void
.end method
