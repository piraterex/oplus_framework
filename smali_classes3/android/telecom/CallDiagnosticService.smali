.class public abstract Landroid/telecom/CallDiagnosticService;
.super Landroid/app/Service;
.source "CallDiagnosticService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallDiagnosticService"


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

.field private final blacklist mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call$Details;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDiagnosticCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/CallDiagnostics;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleBluetoothCallQualityReport(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallAdded(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallAdded(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallDisconnected(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallQualityChanged(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleCallQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallRemoved(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallUpdated(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallUpdated(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleClearDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleReceivedD2DMessage(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleReceivedD2DMessage(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetAdapter(Landroid/telecom/CallDiagnosticService;Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleSetAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 127
    new-instance v0, Landroid/telecom/CallDiagnosticService$1;

    invoke-direct {v0, p0}, Landroid/telecom/CallDiagnosticService$1;-><init>(Landroid/telecom/CallDiagnosticService;)V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist handleBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 2
    .param p1, "qualityReport"    # Landroid/telecom/BluetoothCallQualityReport;

    .line 388
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "handleBluetoothCallQualityReport; report=%s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method private blacklist handleCallAdded(Landroid/telecom/ParcelableCall;)V
    .locals 4
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 263
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "telecomCallId":Ljava/lang/String;
    const-string/jumbo v1, "handleCallAdded: callId=%s - added"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    .line 266
    .local v1, "newCallDetails":Landroid/telecom/Call$Details;
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 267
    :try_start_0
    iget-object v3, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v0}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/Call$Details;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void

    .line 268
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private blacklist handleCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 359
    const-string/jumbo v0, "handleCallDisconnected: call=%s; cause=%s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallDiagnostics;

    .line 363
    .local v2, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/telecom/CallDiagnostics;->onCallDisconnected(Landroid/telephony/ims/ImsReasonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 368
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_0
    nop

    .line 369
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getTelephonyDisconnectCause()I

    move-result v0

    .line 370
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getTelephonyPreciseDisconnectCause()I

    move-result v5

    .line 368
    invoke-virtual {v2, v0, v5}, Landroid/telecom/CallDiagnostics;->onCallDisconnected(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 373
    .restart local v0    # "message":Ljava/lang/CharSequence;
    :goto_0
    :try_start_1
    iget-object v5, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v5, p1, v0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    goto :goto_1

    .line 374
    :catch_0
    move-exception v5

    .line 375
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "handleCallDisconnected: call=%s; cause=%s; %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    aput-object p2, v7, v4

    aput-object v5, v7, v1

    invoke-static {p0, v6, v7}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 363
    .end local v0    # "message":Ljava/lang/CharSequence;
    .end local v2    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist handleCallQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callQuality"    # Landroid/telephony/CallQuality;

    .line 399
    const-string/jumbo v0, "handleCallQualityChanged; call=%s, cq=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    .line 403
    .local v1, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v1, p2}, Landroid/telecom/CallDiagnostics;->onCallQualityReceived(Landroid/telephony/CallQuality;)V

    .line 407
    :cond_0
    return-void

    .line 403
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist handleCallRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .line 311
    const-string/jumbo v0, "handleCallRemoved: callId=%s - removed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    .local v1, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    goto :goto_0

    .line 322
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :cond_1
    const/4 v1, 0x0

    .line 324
    .restart local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz v1, :cond_2

    .line 328
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 330
    :cond_2
    return-void

    .line 324
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist handleCallUpdated(Landroid/telecom/ParcelableCall;)V
    .locals 5
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 291
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "telecomCallId":Ljava/lang/String;
    const-string/jumbo v1, "handleCallUpdated: callId=%s - updated"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    .line 295
    .local v1, "newCallDetails":Landroid/telecom/Call$Details;
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_0
    iget-object v3, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallDiagnostics;

    .line 297
    .local v3, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    if-nez v3, :cond_0

    .line 299
    monitor-exit v2

    return-void

    .line 301
    :cond_0
    iget-object v4, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 304
    return-void

    .line 302
    .end local v3    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private blacklist handleClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V
    .locals 7
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "messageId"    # I

    .line 457
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "callId":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v4, v0, p2}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->clearDiagnosticMessage(Ljava/lang/String;I)V

    .line 460
    const-string/jumbo v4, "handleClearDiagnosticMessage: call=%s; msg=%d"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    goto :goto_0

    .line 461
    :catch_0
    move-exception v4

    .line 462
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 463
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    .line 462
    const-string/jumbo v1, "handleClearDiagnosticMessage: call=%s; msg=%d failed %s"

    invoke-static {p0, v1, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist handleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .locals 8
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "messageId"    # I
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 438
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "callId":Ljava/lang/String;
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v5, v0, p2, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 441
    const-string/jumbo v5, "handleDisplayDiagnosticMessage: call=%s; msg=%d/%s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object p3, v6, v2

    invoke-static {p0, v5, v6}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    goto :goto_0

    .line 443
    :catch_0
    move-exception v5

    .line 444
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 445
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    aput-object p3, v6, v2

    aput-object v5, v6, v1

    .line 444
    const-string/jumbo v1, "handleDisplayDiagnosticMessage: call=%s; msg=%d/%s failed %s"

    invoke-static {p0, v1, v6}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist handleReceivedD2DMessage(Ljava/lang/String;II)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "value"    # I

    .line 340
    const-string/jumbo v0, "handleReceivedD2DMessage: callId=%s, msg=%d/%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    .line 344
    .local v1, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p2, p3}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/CallDiagnostics;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 349
    :cond_0
    return-void

    .line 344
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist handleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V
    .locals 8
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "message"    # I
    .param p3, "value"    # I

    .line 418
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "callId":Ljava/lang/String;
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v5, v0, p2, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->sendDeviceToDeviceMessage(Ljava/lang/String;II)V

    .line 421
    const-string/jumbo v5, "handleSendDeviceToDeviceMessage: call=%s; msg=%d/%d"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 422
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 421
    invoke-static {p0, v5, v6}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    goto :goto_0

    .line 423
    :catch_0
    move-exception v5

    .line 424
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    aput-object v5, v6, v1

    .line 424
    const-string/jumbo v1, "handleSendDeviceToDeviceMessage: call=%s; msg=%d/%d failed %s"

    invoke-static {p0, v1, v6}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist handleSetAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    .line 255
    iput-object p1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    .line 256
    return-void
.end method

.method static synthetic blacklist lambda$handleCallUpdated$1(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V
    .locals 0
    .param p0, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p1, "newCallDetails"    # Landroid/telecom/Call$Details;

    .line 303
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnostics;->handleCallUpdated(Landroid/telecom/Call$Details;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleReceivedD2DMessage$3(Landroid/telecom/CallDiagnostics;II)V
    .locals 0
    .param p0, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p1, "message"    # I
    .param p2, "value"    # I

    .line 347
    invoke-virtual {p0, p1, p2}, Landroid/telecom/CallDiagnostics;->onReceiveDeviceToDeviceMessage(II)V

    return-void
.end method


# virtual methods
.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 192
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method synthetic blacklist lambda$handleBluetoothCallQualityReport$4$android-telecom-CallDiagnosticService(Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 0
    .param p1, "qualityReport"    # Landroid/telecom/BluetoothCallQualityReport;

    .line 389
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onBluetoothCallQualityReportReceived(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method synthetic blacklist lambda$handleCallAdded$0$android-telecom-CallDiagnosticService(Landroid/telecom/Call$Details;Ljava/lang/String;)V
    .locals 3
    .param p1, "newCallDetails"    # Landroid/telecom/Call$Details;
    .param p2, "telecomCallId"    # Ljava/lang/String;

    .line 271
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onInitializeCallDiagnostics(Landroid/telecom/Call$Details;)Landroid/telecom/CallDiagnostics;

    move-result-object v0

    .line 272
    .local v0, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/CallDiagnostics;->setListener(Landroid/telecom/CallDiagnostics$Listener;)V

    .line 278
    invoke-virtual {v0, p2}, Landroid/telecom/CallDiagnostics;->setCallId(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 273
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A valid DiagnosticCall instance was not provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic blacklist lambda$handleCallRemoved$2$android-telecom-CallDiagnosticService(Landroid/telecom/CallDiagnostics;)V
    .locals 0
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;

    .line 328
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onRemoveCallDiagnostics(Landroid/telecom/CallDiagnostics;)V

    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 176
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onBind!"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder-IA;)V

    return-object v0
.end method

.method public abstract whitelist onBluetoothCallQualityReportReceived(Landroid/telecom/BluetoothCallQualityReport;)V
.end method

.method public abstract whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
.end method

.method public abstract whitelist onInitializeCallDiagnostics(Landroid/telecom/Call$Details;)Landroid/telecom/CallDiagnostics;
.end method

.method public abstract whitelist onRemoveCallDiagnostics(Landroid/telecom/CallDiagnostics;)V
.end method
