.class public Landroid/hardware/biometrics/BiometricTestSession;
.super Ljava/lang/Object;
.source "BiometricTestSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
    }
.end annotation


# static fields
.field private static final blacklist BASE_TAG:Ljava/lang/String; = "BiometricTestSession"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field private blacklist mCloseLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSensorId:I

.field private final blacklist mTestSession:Landroid/hardware/biometrics/ITestSession;

.field private final blacklist mTestedUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsersCleaningUp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSensorId(Landroid/hardware/biometrics/BiometricTestSession;)I
    .locals 0

    iget p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId"    # I
    .param p3, "testSessionProvider"    # Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/hardware/biometrics/BiometricTestSession$1;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricTestSession$1;-><init>(Landroid/hardware/biometrics/BiometricTestSession;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 89
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mContext:Landroid/content/Context;

    .line 90
    iput p2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    .line 91
    invoke-interface {p3, p1, p2, v0}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;->createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    .line 93
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    .line 95
    return-void
.end method

.method private blacklist getTag()Ljava/lang/String;
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiometricTestSession_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setTestHalEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 109
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestHalEnabled, sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->setTestHalEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist acceptAuthentication(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->acceptAuthentication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist cleanupInternalState(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup already in progress for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->cleanupInternalState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 227
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 4

    .line 232
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close, mTestedUsers size; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 237
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 238
    .local v1, "user":I
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/BiometricTestSession;->cleanupInternalState(I)V

    .line 239
    .end local v1    # "user":I
    goto :goto_0

    .line 242
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Awaiting latch..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 244
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finished awaiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Latch interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup not finished before shutdown - pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    .line 253
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    .line 258
    return-void
.end method

.method public blacklist finishEnroll(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->finishEnroll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyAcquired(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "acquireInfo"    # I

    .line 185
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    nop

    .line 189
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyError(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I

    .line 202
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    nop

    .line 206
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist rejectAuthentication(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->rejectAuthentication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    nop

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startEnroll(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->startEnroll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
