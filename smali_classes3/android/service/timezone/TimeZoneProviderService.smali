.class public abstract Landroid/service/timezone/TimeZoneProviderService;
.super Landroid/app/Service;
.source "TimeZoneProviderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;
    }
.end annotation


# static fields
.field public static final whitelist PRIMARY_LOCATION_TIME_ZONE_PROVIDER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.timezone.PrimaryLocationTimeZoneProviderService"

.field public static final whitelist SECONDARY_LOCATION_TIME_ZONE_PROVIDER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.timezone.SecondaryLocationTimeZoneProviderService"

.field private static final blacklist TAG:Ljava/lang/String; = "TimeZoneProviderService"

.field public static final blacklist TEST_COMMAND_RESULT_ERROR_KEY:Ljava/lang/String; = "ERROR"

.field public static final blacklist TEST_COMMAND_RESULT_SUCCESS_KEY:Ljava/lang/String; = "SUCCESS"


# instance fields
.field private blacklist mEventFilteringAgeThresholdMillis:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mManager:Landroid/service/timezone/ITimeZoneProviderManager;

.field private final blacklist mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/timezone/TimeZoneProviderService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monStartUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/service/timezone/TimeZoneProviderService;->onStartUpdatesInternal(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monStopUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/timezone/TimeZoneProviderService;->onStopUpdatesInternal()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 169
    new-instance v0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;-><init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    .line 175
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist onStartUpdatesInternal(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .locals 2
    .param p1, "manager"    # Landroid/service/timezone/ITimeZoneProviderManager;
    .param p2, "initializationTimeoutMillis"    # J
    .param p4, "eventFilteringAgeThresholdMillis"    # J

    .line 306
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;

    .line 308
    iput-wide p4, p0, Landroid/service/timezone/TimeZoneProviderService;->mEventFilteringAgeThresholdMillis:J

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 310
    invoke-virtual {p0, p2, p3}, Landroid/service/timezone/TimeZoneProviderService;->onStartUpdates(J)V

    .line 311
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onStopUpdatesInternal()V
    .locals 2

    .line 343
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderService;->onStopUpdates()V

    .line 345
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z
    .locals 6
    .param p1, "newEvent"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 285
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {p1, v0}, Landroid/service/timezone/TimeZoneProviderEvent;->isEquivalentTo(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 286
    return v1

    .line 298
    :cond_0
    nop

    .line 299
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 300
    .local v2, "timeSinceLastEventMillis":J
    iget-wide v4, p0, Landroid/service/timezone/TimeZoneProviderService;->mEventFilteringAgeThresholdMillis:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 358
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastEventSent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$reportPermanentFailure$2$android-service-timezone-TimeZoneProviderService(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 262
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .local v1, "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    if-eqz v1, :cond_1

    .line 266
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "causeString":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 268
    invoke-static {v3, v4, v2}, Landroid/service/timezone/TimeZoneProviderEvent;->createPermanentFailureEvent(JLjava/lang/String;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v3

    .line 270
    .local v3, "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    invoke-direct {p0, v3}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    invoke-interface {v1, v3}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 272
    iput-object v3, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .end local v2    # "causeString":Ljava/lang/String;
    .end local v3    # "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_0
    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v1    # "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$reportSuggestion$0$android-service-timezone-TimeZoneProviderService(Landroid/service/timezone/TimeZoneProviderSuggestion;)V
    .locals 4
    .param p1, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 209
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .local v1, "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    if-eqz v1, :cond_1

    .line 215
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 214
    invoke-static {v2, v3, p1}, Landroid/service/timezone/TimeZoneProviderEvent;->createSuggestionEvent(JLandroid/service/timezone/TimeZoneProviderSuggestion;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v2

    .line 216
    .local v2, "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    invoke-direct {p0, v2}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-interface {v1, v2}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 218
    iput-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .end local v2    # "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_0
    goto :goto_0

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v1    # "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$reportUncertain$1$android-service-timezone-TimeZoneProviderService()V
    .locals 4

    .line 235
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .local v1, "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    if-eqz v1, :cond_1

    .line 241
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 240
    invoke-static {v2, v3}, Landroid/service/timezone/TimeZoneProviderEvent;->createUncertainEvent(J)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v2

    .line 242
    .local v2, "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    invoke-direct {p0, v2}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-interface {v1, v2}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 244
    iput-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .end local v2    # "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_0
    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v1    # "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    return-object v0
.end method

.method public abstract whitelist onStartUpdates(J)V
.end method

.method public abstract whitelist onStopUpdates()V
.end method

.method public final whitelist reportPermanentFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 259
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/timezone/TimeZoneProviderService;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method public final whitelist reportSuggestion(Landroid/service/timezone/TimeZoneProviderSuggestion;)V
    .locals 2
    .param p1, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 206
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;-><init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public final whitelist reportUncertain()V
    .locals 2

    .line 234
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;-><init>(Landroid/service/timezone/TimeZoneProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void
.end method
