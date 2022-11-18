.class Landroid/hardware/radio/TunerCallbackAdapter;
.super Landroid/hardware/radio/ITunerCallback$Stub;
.source "TunerCallbackAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BroadcastRadio.TunerCallbackAdapter"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/radio/RadioTuner$Callback;

.field blacklist mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field private blacklist mDelayedCompleteCallback:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field blacklist mIsAntennaConnected:Z

.field blacklist mLastCompleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field blacklist mProgramList:Landroid/hardware/radio/ProgramList;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/radio/RadioTuner$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 47
    invoke-direct {p0}, Landroid/hardware/radio/ITunerCallback$Stub;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    .line 48
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 52
    :cond_0
    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    .line 54
    :goto_0
    return-void
.end method

.method private blacklist sendBackgroundScanCompleteLocked()V
    .locals 2

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    .line 191
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method


# virtual methods
.method blacklist clearLastCompleteList()V
    .locals 2

    .line 100
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist close()V
    .locals 2

    .line 57
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 59
    :cond_0
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getCurrentProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    monitor-exit v0

    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getLastCompleteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist isAntennaConnected()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    return v0
.end method

.method synthetic blacklist lambda$onAntennaState$9$android-hardware-radio-TunerCallbackAdapter(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .line 181
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onAntennaState(Z)V

    return-void
.end method

.method synthetic blacklist lambda$onBackgroundScanAvailabilityChange$10$android-hardware-radio-TunerCallbackAdapter(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .line 186
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method synthetic blacklist lambda$onConfigurationChanged$5$android-hardware-radio-TunerCallbackAdapter(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 146
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method synthetic blacklist lambda$onCurrentProgramInfoChanged$6$android-hardware-radio-TunerCallbackAdapter(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 161
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 163
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v0

    .line 164
    .local v0, "metadata":Landroid/hardware/radio/RadioMetadata;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v1, v0}, Landroid/hardware/radio/RadioTuner$Callback;->onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V

    .line 165
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onEmergencyAnnouncement$8$android-hardware-radio-TunerCallbackAdapter(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 175
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method synthetic blacklist lambda$onError$2$android-hardware-radio-TunerCallbackAdapter(I)V
    .locals 1
    .param p1, "status"    # I

    .line 117
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method synthetic blacklist lambda$onParametersUpdated$14$android-hardware-radio-TunerCallbackAdapter(Ljava/util/Map;)V
    .locals 1
    .param p1, "parameters"    # Ljava/util/Map;

    .line 224
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method synthetic blacklist lambda$onProgramListChanged$12$android-hardware-radio-TunerCallbackAdapter()V
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramListChanged()V

    return-void
.end method

.method synthetic blacklist lambda$onProgramListUpdated$13$android-hardware-radio-TunerCallbackAdapter(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 3
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;

    .line 215
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 217
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramList;->apply(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 218
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onTrafficAnnouncement$7$android-hardware-radio-TunerCallbackAdapter(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 170
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method synthetic blacklist lambda$onTuneFailed$3$android-hardware-radio-TunerCallbackAdapter(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 122
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioTuner$Callback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method

.method synthetic blacklist lambda$onTuneFailed$4$android-hardware-radio-TunerCallbackAdapter(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 141
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method synthetic blacklist lambda$sendBackgroundScanCompleteLocked$11$android-hardware-radio-TunerCallbackAdapter()V
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanComplete()V

    return-void
.end method

.method synthetic blacklist lambda$setProgramListObserver$0$android-hardware-radio-TunerCallbackAdapter(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 2
    .param p1, "programList"    # Landroid/hardware/radio/ProgramList;
    .param p2, "closeListener"    # Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 73
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    .line 75
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 76
    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    .line 77
    invoke-interface {p2}, Landroid/hardware/radio/ProgramList$OnCloseListener;->onClose()V

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$setProgramListObserver$1$android-hardware-radio-TunerCallbackAdapter(Landroid/hardware/radio/ProgramList;)V
    .locals 3
    .param p1, "programList"    # Landroid/hardware/radio/ProgramList;

    .line 81
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList;->toList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    .line 84
    iget-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    if-eqz v1, :cond_1

    .line 85
    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Sending delayed onBackgroundScanComplete callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->sendBackgroundScanCompleteLocked()V

    .line 88
    :cond_1
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onAntennaState(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 180
    iput-boolean p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    .line 181
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda14;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public blacklist onBackgroundScanAvailabilityChange(Z)V
    .locals 2
    .param p1, "isAvailable"    # Z

    .line 186
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda11;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public blacklist onBackgroundScanComplete()V
    .locals 3

    .line 196
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 198
    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Got onBackgroundScanComplete callback, but the program list didn\'t get through yet. Delaying it..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    .line 201
    monitor-exit v0

    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->sendBackgroundScanCompleteLocked()V

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 146
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public blacklist onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string v0, "BroadcastRadio.TunerCallbackAdapter"

    const-string v1, "ProgramInfo must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void

    .line 158
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onEmergencyAnnouncement(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 175
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public blacklist onError(I)V
    .locals 2
    .param p1, "status"    # I

    .line 117
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method public blacklist onParametersUpdated(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public blacklist onProgramListChanged()V
    .locals 2

    .line 209
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public blacklist onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 2
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;

    .line 214
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method public blacklist onTrafficAnnouncement(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 170
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda13;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public blacklist onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 122
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 128
    :sswitch_0
    const/4 v0, 0x1

    .line 129
    .local v0, "errorCode":I
    goto :goto_1

    .line 134
    .end local v0    # "errorCode":I
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an error with no mapping to the legacy API ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), doing a best-effort conversion to ERROR_SCAN_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    const/4 v0, 0x3

    .line 141
    .restart local v0    # "errorCode":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x20 -> :sswitch_0
        -0x16 -> :sswitch_1
        -0x13 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method blacklist setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 3
    .param p1, "programList"    # Landroid/hardware/radio/ProgramList;
    .param p2, "closeListener"    # Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 64
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Previous program list observer wasn\'t properly closed, closing it..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 70
    :cond_0
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 71
    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    .line 72
    :cond_1
    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    invoke-virtual {p1, v1}, Landroid/hardware/radio/ProgramList;->setOnCloseListener(Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 80
    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V

    invoke-virtual {p1, v1}, Landroid/hardware/radio/ProgramList;->addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
