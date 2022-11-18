.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibrator$AllVibratorsStateListener;,
        Landroid/os/SystemVibrator$MultiVibratorInfo;,
        Landroid/os/SystemVibrator$NoVibratorInfo;,
        Landroid/os/SystemVibrator$SingleVibratorStateListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final blacklist mBrokenListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/SystemVibrator$AllVibratorsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRegisteredListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/os/SystemVibrator$AllVibratorsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

.field private final greylist-max-o mToken:Landroid/os/Binder;

.field private blacklist mVibratorInfo:Landroid/os/VibratorInfo;

.field private final blacklist mVibratorManager:Landroid/os/VibratorManager;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 61
    const-class v0, Landroid/os/ISystemVibratorExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ISystemVibratorExt;

    iput-object v0, p0, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    .line 79
    const-class v0, Landroid/os/VibratorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    iput-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    .line 82
    iget-object v0, p0, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    invoke-interface {v0, p1}, Landroid/os/ISystemVibratorExt;->init(Landroid/content/Context;)V

    .line 84
    const-string v0, "Vibrator"

    const-string v1, "SystemVibrator Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method private blacklist tryUnregisterBrokenListeners()V
    .locals 4

    .line 279
    iget-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 282
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator$AllVibratorsStateListener;

    iget-object v3, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v2, v3}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->unregister(Landroid/os/VibratorManager;)V

    .line 283
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 288
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "Vibrator"

    const-string v3, "Failed to unregister broken listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 149
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "Vibrator"

    const-string v1, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 155
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 161
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "Vibrator"

    const-string v1, "Failed to add vibrate state listener; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 169
    .local v0, "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 171
    :try_start_1
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    const-string v2, "Vibrator"

    const-string v3, "Listener already registered."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 181
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->hasRegisteredListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 185
    :try_start_2
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 188
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 173
    return-void

    .line 175
    :cond_2
    :try_start_3
    new-instance v2, Landroid/os/SystemVibrator$AllVibratorsStateListener;

    invoke-direct {v2, p1, p2}, Landroid/os/SystemVibrator$AllVibratorsStateListener;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    move-object v0, v2

    .line 176
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, v2}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->register(Landroid/os/VibratorManager;)V

    .line 177
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    .line 179
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 181
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->hasRegisteredListeners()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 185
    :try_start_4
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 188
    :cond_3
    :goto_1
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 189
    nop

    .line 190
    return-void

    .line 179
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v0    # "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    .end local p0    # "this":Landroid/os/SystemVibrator;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/Vibrator$OnVibratorStateChangedListener;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 181
    .restart local v0    # "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    .restart local p0    # "this":Landroid/os/SystemVibrator;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/Vibrator$OnVibratorStateChangedListener;
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->hasRegisteredListeners()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 185
    :try_start_7
    iget-object v3, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v2

    goto :goto_2

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 188
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 189
    throw v1
.end method

.method public whitelist cancel()V
    .locals 2

    .line 252
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 253
    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->cancel()V

    .line 257
    return-void
.end method

.method public blacklist cancel(I)V
    .locals 2
    .param p1, "usageFilter"    # I

    .line 261
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 262
    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 265
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/VibratorManager;->cancel(I)V

    .line 266
    return-void
.end method

.method protected blacklist getInfo()Landroid/os/VibratorInfo;
    .locals 8

    .line 89
    iget-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    if-eqz v1, :cond_0

    .line 91
    monitor-exit v0

    return-object v1

    .line 93
    :cond_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_1

    .line 94
    const-string v1, "Vibrator"

    const-string v2, "Failed to retrieve vibrator info; no vibrator manager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 97
    :cond_1
    invoke-virtual {v1}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v1

    .line 98
    .local v1, "vibratorIds":[I
    array-length v2, v1

    if-nez v2, :cond_2

    .line 101
    new-instance v2, Landroid/os/SystemVibrator$NoVibratorInfo;

    invoke-direct {v2}, Landroid/os/SystemVibrator$NoVibratorInfo;-><init>()V

    iput-object v2, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v2

    .line 103
    :cond_2
    array-length v2, v1

    new-array v2, v2, [Landroid/os/VibratorInfo;

    .line 104
    .local v2, "vibratorInfos":[Landroid/os/VibratorInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 105
    iget-object v4, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    .line 106
    .local v4, "vibrator":Landroid/os/Vibrator;
    instance-of v5, v4, Landroid/os/NullVibrator;

    if-eqz v5, :cond_3

    .line 107
    const-string v5, "Vibrator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vibrator manager service not ready; Info not yet available for vibrator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v5, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v5

    .line 113
    :cond_3
    invoke-virtual {v4}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    aput-object v5, v2, v3

    .line 104
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "i":I
    :cond_4
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 117
    new-instance v3, Landroid/os/VibratorInfo;

    const/4 v4, -0x1

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-direct {v3, v4, v5}, Landroid/os/VibratorInfo;-><init>(ILandroid/os/VibratorInfo;)V

    iput-object v3, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v3

    .line 120
    :cond_5
    new-instance v3, Landroid/os/SystemVibrator$MultiVibratorInfo;

    invoke-direct {v3, v2}, Landroid/os/SystemVibrator$MultiVibratorInfo;-><init>([Landroid/os/VibratorInfo;)V

    iput-object v3, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v3

    .line 121
    .end local v1    # "vibratorIds":[I
    .end local v2    # "vibratorInfos":[Landroid/os/VibratorInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getVibratorStatus()I
    .locals 1

    .line 690
    iget-object v0, p0, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    invoke-interface {v0}, Landroid/os/ISystemVibratorExt;->getVibratorStatus()I

    move-result v0

    return v0
.end method

.method public whitelist getVibratorTouchStyle()I
    .locals 1

    .line 703
    iget-object v0, p0, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    invoke-interface {v0}, Landroid/os/ISystemVibratorExt;->getVibratorTouchStyle()I

    move-result v0

    return v0
.end method

.method public whitelist hasAmplitudeControl()Z
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroid/os/SystemVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .locals 3

    .line 126
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "Vibrator"

    const-string v2, "Failed to check if vibrator exists; no vibrator manager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v1

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist isVibrating()Z
    .locals 6

    .line 135
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator manager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v1

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 140
    .local v4, "vibratorId":I
    iget-object v5, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v5, v4}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Vibrator;->isVibrating()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const/4 v0, 0x1

    return v0

    .line 139
    .end local v4    # "vibratorId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_2
    return v1
.end method

.method public blacklist linearMotorVibrate(ILjava/lang/String;[I[JIILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IBinder;)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "waveformIds"    # [I
    .param p4, "timings"    # [J
    .param p5, "strength"    # I
    .param p6, "repeat"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "attributes"    # Landroid/media/AudioAttributes;
    .param p9, "token"    # Landroid/os/IBinder;

    .line 681
    if-nez p8, :cond_0

    .line 682
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .end local p8    # "attributes":Landroid/media/AudioAttributes;
    .local v0, "attributes":Landroid/media/AudioAttributes;
    goto :goto_0

    .line 681
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .restart local p8    # "attributes":Landroid/media/AudioAttributes;
    :cond_0
    move-object/from16 v0, p8

    .line 684
    .end local p8    # "attributes":Landroid/media/AudioAttributes;
    .restart local v0    # "attributes":Landroid/media/AudioAttributes;
    :goto_0
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, v0}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 685
    .local v1, "attr":Landroid/os/VibrationAttributes;
    move-object v12, p0

    iget-object v2, v12, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, v1

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/os/ISystemVibratorExt;->linearMotorVibrate(ILjava/lang/String;[I[JIILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/os/IBinder;)V

    .line 686
    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 196
    const-string v0, "Vibrator"

    const-string v1, "Failed to remove vibrate state listener; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator$AllVibratorsStateListener;

    .line 202
    .local v1, "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v1, v2}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->unregister(Landroid/os/VibratorManager;)V

    .line 203
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v1    # "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/VibrationEffect;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 217
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "Vibrator"

    const-string v1, "Failed to set always-on effect; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_0
    invoke-static {p4}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v0

    .line 222
    .local v0, "combinedEffect":Landroid/os/CombinedVibration;
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/VibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v1

    return v1
.end method

.method public whitelist setVibratorStrength(I)V
    .locals 1
    .param p1, "strength"    # I

    .line 695
    iget-object v0, p0, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    invoke-interface {v0, p1}, Landroid/os/ISystemVibratorExt;->setVibratorStrength(I)V

    .line 696
    return-void
.end method

.method public whitelist setVibratorTouchStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 708
    iget-object v0, p0, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    invoke-interface {v0, p1}, Landroid/os/ISystemVibratorExt;->setVibratorTouchStyle(I)V

    .line 709
    return-void
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 228
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/ISystemVibratorExt;->doVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    return-void

    .line 242
    :cond_1
    iget-object v1, p0, Landroid/os/SystemVibrator;->mSystemVibratorExt:Landroid/os/ISystemVibratorExt;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/ISystemVibratorExt;->convertToLinearVibration(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/IBinder;Landroid/os/VibrationAttributes;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    return-void

    .line 246
    :cond_2
    invoke-static {p3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v0

    .line 247
    .local v0, "combinedEffect":Landroid/os/CombinedVibration;
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 248
    return-void
.end method
