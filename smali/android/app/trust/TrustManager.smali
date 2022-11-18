.class public Landroid/app/trust/TrustManager;
.super Ljava/lang/Object;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/TrustManager$TrustListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DATA_FLAGS:Ljava/lang/String; = "initiatedByUser"

.field private static final blacklist DATA_GRANTED_MESSAGES:Ljava/lang/String; = "grantedMessages"

.field private static final greylist-max-o DATA_MESSAGE:Ljava/lang/String; = "message"

.field private static final greylist-max-o MSG_TRUST_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_TRUST_ERROR:I = 0x3

.field private static final greylist-max-o MSG_TRUST_MANAGED_CHANGED:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TrustManager"


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mService:Landroid/app/trust/ITrustManager;

.field private final greylist-max-o mTrustListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/trust/TrustManager$TrustListener;",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/app/trust/TrustManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "b"    # Landroid/os/IBinder;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Landroid/app/trust/TrustManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/trust/TrustManager$2;-><init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 2
    .param p1, "source"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "unlockedUser"    # I

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isTrustUsuallyManaged(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->isTrustUsuallyManaged(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 2
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    .line 172
    :try_start_0
    new-instance v0, Landroid/app/trust/TrustManager$1;

    invoke-direct {v0, p0, p1}, Landroid/app/trust/TrustManager$1;-><init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V

    .line 199
    .local v0, "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, v0}, Landroid/app/trust/ITrustManager;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 200
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    nop

    .line 204
    .end local v0    # "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reportEnabledTrustAgentsChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->reportEnabledTrustAgentsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 150
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reportKeyguardShowingChanged()V
    .locals 2

    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0}, Landroid/app/trust/ITrustManager;->reportKeyguardShowingChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    nop

    .line 163
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist reportUnlockAttempt(ZI)V
    .locals 2
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockAttempt(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reportUnlockLockout(II)V
    .locals 2
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I

    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockLockout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    nop

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportUserMayRequestUnlock(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->reportUserMayRequestUnlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportUserRequestedUnlock(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "dismissKeyguard"    # Z

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->reportUserRequestedUnlock(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 104
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setDeviceLockedForUser(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "locked"    # Z

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "source"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 245
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    nop

    .line 249
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o unregisterTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 3
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    .line 212
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    .line 213
    .local v0, "iTrustListener":Landroid/app/trust/ITrustListener;
    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, v0}, Landroid/app/trust/ITrustManager;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
