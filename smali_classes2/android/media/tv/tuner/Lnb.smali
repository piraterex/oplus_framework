.class public Landroid/media/tv/tuner/Lnb;
.super Ljava/lang/Object;
.source "Lnb.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Lnb$EventType;,
        Landroid/media/tv/tuner/Lnb$Position;,
        Landroid/media/tv/tuner/Lnb$Tone;,
        Landroid/media/tv/tuner/Lnb$Voltage;
    }
.end annotation


# static fields
.field public static final whitelist EVENT_TYPE_DISEQC_RX_OVERFLOW:I = 0x0

.field public static final whitelist EVENT_TYPE_DISEQC_RX_PARITY_ERROR:I = 0x2

.field public static final whitelist EVENT_TYPE_DISEQC_RX_TIMEOUT:I = 0x1

.field public static final whitelist EVENT_TYPE_LNB_OVERLOAD:I = 0x3

.field public static final whitelist POSITION_A:I = 0x1

.field public static final whitelist POSITION_B:I = 0x2

.field public static final whitelist POSITION_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Lnb"

.field public static final whitelist TONE_CONTINUOUS:I = 0x1

.field public static final whitelist TONE_NONE:I = 0x0

.field public static final whitelist VOLTAGE_11V:I = 0x2

.field public static final whitelist VOLTAGE_12V:I = 0x3

.field public static final whitelist VOLTAGE_13V:I = 0x4

.field public static final whitelist VOLTAGE_14V:I = 0x5

.field public static final whitelist VOLTAGE_15V:I = 0x6

.field public static final whitelist VOLTAGE_18V:I = 0x7

.field public static final whitelist VOLTAGE_19V:I = 0x8

.field public static final whitelist VOLTAGE_5V:I = 0x1

.field public static final whitelist VOLTAGE_NONE:I


# instance fields
.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/tv/tuner/LnbCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsClosed:Ljava/lang/Boolean;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J

.field blacklist mOwner:Landroid/media/tv/tuner/Tuner;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    .line 168
    return-void
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeSendDiseqcMessage([B)I
.end method

.method private native blacklist nativeSetSatellitePosition(I)I
.end method

.method private native blacklist nativeSetTone(I)I
.end method

.method private native blacklist nativeSetVoltage(I)I
.end method

.method private blacklist onDiseqcMessage([B)V
    .locals 5
    .param p1, "diseqcMessage"    # [B

    .line 234
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/LnbCallback;

    .line 236
    .local v2, "callback":Landroid/media/tv/tuner/LnbCallback;
    iget-object v3, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 237
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 238
    new-instance v4, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 246
    .end local v2    # "callback":Landroid/media/tv/tuner/LnbCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :cond_0
    goto :goto_0

    .line 247
    :cond_1
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onEvent(I)V
    .locals 5
    .param p1, "eventType"    # I

    .line 217
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/LnbCallback;

    .line 219
    .local v2, "callback":Landroid/media/tv/tuner/LnbCallback;
    iget-object v3, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 220
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 221
    new-instance v4, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 229
    .end local v2    # "callback":Landroid/media/tv/tuner/LnbCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :cond_0
    goto :goto_0

    .line 230
    :cond_1
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/tv/tuner/LnbCallback;

    .line 186
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 3

    .line 320
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    monitor-exit v0

    return-void

    .line 324
    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->nativeClose()I

    move-result v1

    .line 325
    .local v1, "res":I
    if-eqz v1, :cond_1

    .line 326
    const-string v2, "Failed to close LNB"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    .line 329
    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    if-eqz v2, :cond_2

    .line 330
    invoke-virtual {v2}, Landroid/media/tv/tuner/Tuner;->releaseLnb()V

    .line 331
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    .line 333
    :cond_2
    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 335
    .end local v1    # "res":I
    :goto_0
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist isClosed()Z
    .locals 2

    .line 251
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onDiseqcMessage$1$android-media-tv-tuner-Lnb(Landroid/media/tv/tuner/LnbCallback;[B)V
    .locals 2
    .param p1, "callback"    # Landroid/media/tv/tuner/LnbCallback;
    .param p2, "diseqcMessage"    # [B

    .line 239
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    if-eqz p1, :cond_0

    .line 241
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/tv/tuner/LnbCallback;->onDiseqcMessage([B)V

    .line 243
    :cond_0
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onEvent$0$android-media-tv-tuner-Lnb(Landroid/media/tv/tuner/LnbCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/media/tv/tuner/LnbCallback;
    .param p2, "eventType"    # I

    .line 222
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    if-eqz p1, :cond_0

    .line 224
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/tv/tuner/LnbCallback;->onEvent(I)V

    .line 226
    :cond_0
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeCallback(Landroid/media/tv/tuner/LnbCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/media/tv/tuner/LnbCallback;

    .line 201
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 204
    .local v1, "result":Z
    :goto_0
    monitor-exit v0

    return v1

    .line 205
    .end local v1    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist sendDiseqcMessage([B)I
    .locals 3
    .param p1, "message"    # [B

    .line 310
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 312
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSendDiseqcMessage([B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V
    .locals 2
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/tv/tuner/LnbCallback;

    .line 171
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 173
    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/media/tv/tuner/Lnb;->addCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 175
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {p0, p1}, Landroid/media/tv/tuner/Lnb;->setOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist setOwner(Landroid/media/tv/tuner/Tuner;)V
    .locals 2
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 210
    const-string v0, "newOwner must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iput-object p1, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setSatellitePosition(I)I
    .locals 3
    .param p1, "position"    # I

    .line 292
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 294
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetSatellitePosition(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setTone(I)I
    .locals 3
    .param p1, "tone"    # I

    .line 278
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 280
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetTone(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setVoltage(I)I
    .locals 3
    .param p1, "voltage"    # I

    .line 264
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 266
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetVoltage(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
