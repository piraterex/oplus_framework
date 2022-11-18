.class public final Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
.super Ljava/lang/Object;
.source "BleBroadcastAudioScanAssistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;,
        Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BroadcastAssistSyncState;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_BROADCAST_SOURCE_INFO:Ljava/lang/String; = "android.bluetooth.BroadcastAudioSAManager.action.BROADCAST_SOURCE_INFO"

.field private static final blacklist DBG:Z = true

.field public static final blacklist SYNC_AUDIO:I = 0x1

.field public static final blacklist SYNC_METADATA:I = 0x0

.field public static final blacklist SYNC_METADATA_AUDIO:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "BleBroadcastAudioScanAssistManager"

.field private static final blacklist VDBG:Z = true


# instance fields
.field private blacklist INVALID_SOURCE_ID:B

.field blacklist mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field blacklist mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field blacklist mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

.field blacklist mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

.field blacklist mSyncState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$monBluetoothSyncHelperStateChanged(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;ZLandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->onBluetoothSyncHelperStateChanged(ZLandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSyncHelper;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V
    .locals 1
    .param p1, "scanOffloader"    # Landroid/bluetooth/BluetoothSyncHelper;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    .line 139
    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 140
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->INVALID_SOURCE_ID:B

    .line 208
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 210
    iput-object p3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 211
    iput-object p2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 212
    iput-object p1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    .line 213
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 214
    return-void
.end method

.method private blacklist convertAudioDataSyncState(I)I
    .locals 2
    .param p1, "syncState"    # I

    .line 287
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "searchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    return v0

    .line 288
    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist convertMetadataSyncState(I)I
    .locals 1
    .param p1, "syncState"    # I

    .line 277
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist isValidBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)Z
    .locals 5
    .param p1, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 339
    const/4 v0, 0x1

    .line 340
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 341
    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    .line 342
    .local v1, "currentSourceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceInfo;>;"
    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v1, :cond_0

    .line 343
    const-string/jumbo v3, "no source info details for remote"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    goto :goto_1

    .line 346
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 347
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BleBroadcastSourceInfo;->matches(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    const/4 v0, 0x0

    .line 349
    goto :goto_1

    .line 346
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v3    # "i":I
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidBroadcastSourceInfo returns: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return v0
.end method

.method private blacklist isValidSourceId(B)Z
    .locals 4
    .param p1, "sourceId"    # B

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 361
    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    .line 362
    .local v1, "currentSourceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceInfo;>;"
    if-nez v1, :cond_0

    .line 363
    const/4 v0, 0x0

    goto :goto_1

    .line 365
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 366
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v3

    if-ne v3, p1, :cond_1

    .line 367
    const/4 v0, 0x1

    .line 368
    goto :goto_1

    .line 365
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "i":I
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSourceId returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleBroadcastAudioScanAssistManager"

    invoke-static {v3, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 680
    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method private blacklist onBluetoothSyncHelperStateChanged(ZLandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 196
    if-eqz p1, :cond_0

    .line 197
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothSyncHelper;

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    .line 198
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    .line 203
    :goto_0
    return-void
.end method

.method private blacklist printSelectedIndicies(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p1, "selectedBISIndicies":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    const-string v0, "BleBroadcastAudioScanAssistManager"

    if-nez p1, :cond_0

    .line 378
    const-string/jumbo v1, "printSelectedIndicies : no selected indicies"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    .line 381
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addBroadcastSource(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;Z)Z
    .locals 15
    .param p1, "audioSource"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "syncState"    # I
    .param p4, "isGroupOp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;Z)Z"
        }
    .end annotation

    .line 433
    .local p3, "selectedBroadcastChannels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    move-object v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v3, 0x0

    const-string v4, "BleBroadcastAudioScanAssistManager"

    if-nez v2, :cond_0

    .line 434
    const-string v2, "addBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v4, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return v3

    .line 438
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBroadcastSource: Invalid syncState"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return v3

    .line 443
    :cond_1
    move-object/from16 v2, p3

    invoke-direct {p0, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->printSelectedIndicies(Ljava/util/List;)V

    .line 444
    const/4 v5, -0x1

    .line 445
    .local v5, "metadataSyncState":I
    const/4 v6, -0x1

    .line 446
    .local v6, "audioSyncState":I
    iput v1, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    .line 447
    invoke-direct {p0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertMetadataSyncState(I)I

    move-result v12

    .line 448
    .end local v5    # "metadataSyncState":I
    .local v12, "metadataSyncState":I
    iget v5, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    invoke-direct {p0, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertAudioDataSyncState(I)I

    move-result v13

    .line 450
    .end local v6    # "audioSyncState":I
    .local v13, "audioSyncState":I
    new-instance v14, Landroid/bluetooth/BleBroadcastSourceInfo;

    const/16 v7, -0x45

    const/4 v8, 0x0

    move-object v5, v14

    move-object/from16 v6, p1

    move v9, v12

    move v10, v13

    move-object/from16 v11, p3

    invoke-direct/range {v5 .. v11}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;BIIILjava/util/List;)V

    iput-object v14, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 457
    nop

    .line 461
    invoke-direct {p0, v14}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 462
    iget-object v3, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v4, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    iget-object v6, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    move/from16 v7, p4

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/bluetooth/BluetoothSyncHelper;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    .line 471
    const/4 v3, 0x1

    return v3

    .line 468
    :cond_2
    move/from16 v7, p4

    const-string v5, "Similar source information already exists"

    invoke-static {v4, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return v3
.end method

.method protected whitelist test-api finalize()V
    .locals 3

    .line 219
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->unregisterAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    .line 223
    :cond_0
    return-void
.end method

.method public blacklist getAllBroadcastSourceInformation()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez v0, :cond_0

    .line 672
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "GetNumberOfAcceptableBroadcastSources: no BluetoothSyncHelper handle"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x0

    return-object v0

    .line 675
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeBroadcastSource(BZ)Z
    .locals 3
    .param p1, "sourceId"    # B
    .param p2, "isGroupOp"    # Z

    .line 645
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_0

    .line 646
    const-string/jumbo v0, "removeBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return v1

    .line 649
    :cond_0
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    const-string/jumbo v0, "removeBroadcastSource: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return v1

    .line 653
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBroadcastSource: sourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/bluetooth/BluetoothSyncHelper;->removeBroadcastSource(Landroid/bluetooth/BluetoothDevice;BZLandroid/content/AttributionSource;)Z

    move-result v0

    return v0
.end method

.method public blacklist searchforLeAudioBroadcasters()Z
    .locals 3

    .line 241
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "searchforLeAudioBroadcasters: "

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v1, :cond_0

    .line 243
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothSyncHelper;->searchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 245
    :cond_0
    const-string/jumbo v1, "searchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist selectBroadcastSource(Landroid/bluetooth/le/ScanResult;Z)Z
    .locals 4
    .param p1, "scanRes"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "isGroupOp"    # Z

    .line 323
    const/4 v0, 0x0

    const-string v1, "BleBroadcastAudioScanAssistManager"

    if-nez p1, :cond_0

    .line 324
    const-string/jumbo v2, "selectBroadcastSource: Invalid scan res"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v0

    .line 327
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectBroadcastSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v2, :cond_1

    .line 329
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v2, v0, p1, p2, v1}, Landroid/bluetooth/BluetoothSyncHelper;->selectBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;ZLandroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 332
    :cond_1
    const-string/jumbo v2, "selectBroadcastSource: mBluetoothSyncHelper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v0
.end method

.method public blacklist setBroadcastCode(BLjava/lang/String;Z)Z
    .locals 4
    .param p1, "sourceId"    # B
    .param p2, "broadcastCode"    # Ljava/lang/String;
    .param p3, "isGroupOp"    # Z

    .line 589
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_0

    .line 590
    const-string/jumbo v0, "setBroadcastCode: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return v1

    .line 593
    :cond_0
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    const-string/jumbo v0, "setBroadcastCode: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return v1

    .line 598
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBroadcastCode: sourceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BroadcastCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-direct {v0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(B)V

    .line 601
    .local v0, "sourceInfo":Landroid/bluetooth/BleBroadcastSourceInfo;
    nop

    .line 602
    invoke-virtual {v0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setSourceId(B)V

    .line 603
    invoke-virtual {v0, p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->setBroadcastCode(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v2, v0, p3, v3}, Landroid/bluetooth/BluetoothSyncHelper;->setBroadcastCode(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v1

    return v1
.end method

.method public blacklist stopSearchforLeAudioBroadcasters()Z
    .locals 3

    .line 262
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "stopSearchforLeAudioBroadcasters()"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v1, :cond_0

    .line 264
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothSyncHelper;->stopSearchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 267
    :cond_0
    const-string/jumbo v1, "stopSearchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateBroadcastSource(BILjava/util/List;Z)Z
    .locals 6
    .param p1, "sourceId"    # B
    .param p2, "syncState"    # I
    .param p4, "isGroupOp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;Z)Z"
        }
    .end annotation

    .line 518
    .local p3, "selectedBroadcastChannels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_0

    .line 519
    const-string/jumbo v0, "updateBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return v1

    .line 522
    :cond_0
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    const-string/jumbo v0, "updateBroadcastSource: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return v1

    .line 526
    :cond_1
    const/4 v0, -0x1

    .line 527
    .local v0, "audioSyncState":I
    const/4 v1, -0x1

    .line 528
    .local v1, "metadataSyncState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: sourceId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", syncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iput p2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    .line 531
    invoke-direct {p0, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertMetadataSyncState(I)I

    move-result v1

    .line 532
    iget v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    invoke-direct {p0, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertAudioDataSyncState(I)I

    move-result v0

    .line 534
    invoke-direct {p0, p3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->printSelectedIndicies(Ljava/util/List;)V

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: audioSyncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: metadataSyncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v2, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-direct {v2, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(B)V

    .line 540
    .local v2, "sourceInfo":Landroid/bluetooth/BleBroadcastSourceInfo;
    nop

    .line 541
    invoke-virtual {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setMetadataSyncState(I)V

    .line 542
    invoke-virtual {v2, v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->setAudioSyncState(I)V

    .line 543
    invoke-virtual {v2, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setSourceId(B)V

    .line 544
    invoke-virtual {v2, p3}, Landroid/bluetooth/BleBroadcastSourceInfo;->setBroadcastChannelsSyncStatus(Ljava/util/List;)V

    .line 549
    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v4, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v3, v4, v2, p4, v5}, Landroid/bluetooth/BluetoothSyncHelper;->updateBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v3

    return v3
.end method
