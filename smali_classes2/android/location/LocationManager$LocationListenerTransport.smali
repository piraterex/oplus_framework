.class Landroid/location/LocationManager$LocationListenerTransport;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/LocationListener;


# direct methods
.method constructor blacklist <init>(Landroid/location/LocationListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/LocationListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3292
    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 3293
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3294
    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 3295
    invoke-virtual {p0, p2}, Landroid/location/LocationManager$LocationListenerTransport;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 3296
    return-void
.end method

.method static synthetic blacklist lambda$onFlushComplete$2(ILandroid/location/LocationListener;)V
    .locals 0
    .param p0, "requestCode"    # I
    .param p1, "listener"    # Landroid/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3336
    invoke-interface {p1, p0}, Landroid/location/LocationListener;->onFlushComplete(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onProviderEnabledChanged$4(ZLjava/lang/String;Landroid/location/LocationListener;)V
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3342
    if-eqz p0, :cond_0

    .line 3343
    invoke-interface {p2, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 3345
    :cond_0
    invoke-interface {p2, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 3347
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist isRegistered()Z
    .locals 1

    .line 3304
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$onFlushComplete$1$android-location-LocationManager$LocationListenerTransport()Landroid/location/LocationListener;
    .locals 1

    .line 3335
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method synthetic blacklist lambda$onLocationChanged$0$android-location-LocationManager$LocationListenerTransport()Landroid/location/LocationListener;
    .locals 1

    .line 3314
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method synthetic blacklist lambda$onProviderEnabledChanged$3$android-location-LocationManager$LocationListenerTransport()Landroid/location/LocationListener;
    .locals 1

    .line 3341
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method public blacklist onFlushComplete(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .line 3335
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda0;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 3337
    return-void
.end method

.method public blacklist onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
    .locals 3
    .param p2, "onCompleteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;",
            "Landroid/os/IRemoteCallback;",
            ")V"
        }
    .end annotation

    .line 3314
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/location/LocationManager$LocationListenerTransport$1;-><init>(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/List;Landroid/os/IRemoteCallback;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 3331
    return-void
.end method

.method public blacklist onProviderEnabledChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 3341
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda3;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 3348
    return-void
.end method

.method blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 3299
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null executor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3300
    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3301
    return-void
.end method

.method blacklist unregister()V
    .locals 1

    .line 3308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 3309
    return-void
.end method
