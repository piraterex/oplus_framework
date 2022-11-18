.class Landroid/location/LocationManager$LocationListenerTransport$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$LocationListenerTransport;->onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
        "Landroid/location/LocationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/LocationManager$LocationListenerTransport;

.field final synthetic blacklist val$locations:Ljava/util/List;

.field final synthetic blacklist val$onCompleteCallback:Landroid/os/IRemoteCallback;


# direct methods
.method constructor blacklist <init>(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/List;Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/location/LocationManager$LocationListenerTransport;

    .line 3314
    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->this$0:Landroid/location/LocationManager$LocationListenerTransport;

    iput-object p2, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$locations:Ljava/util/List;

    iput-object p3, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$onCompleteCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 3322
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$onCompleteCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 3324
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3327
    goto :goto_0

    .line 3325
    :catch_0
    move-exception v0

    .line 3326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3329
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist operate(Landroid/location/LocationListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/LocationListener;

    .line 3317
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$locations:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/location/LocationListener;->onLocationChanged(Ljava/util/List;)V

    .line 3318
    return-void
.end method

.method public bridge synthetic blacklist operate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3314
    check-cast p1, Landroid/location/LocationListener;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$LocationListenerTransport$1;->operate(Landroid/location/LocationListener;)V

    return-void
.end method
