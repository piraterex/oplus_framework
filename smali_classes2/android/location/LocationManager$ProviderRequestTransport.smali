.class Landroid/location/LocationManager$ProviderRequestTransport;
.super Landroid/location/provider/IProviderRequestListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderRequestTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/provider/IProviderRequestListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/provider/ProviderRequest$ChangedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/provider/ProviderRequest$ChangedListener;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/location/provider/ProviderRequest$ChangedListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/location/provider/ProviderRequest$ChangedListener;

    .line 3659
    invoke-direct {p0}, Landroid/location/provider/IProviderRequestListener$Stub;-><init>()V

    .line 3660
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3661
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3662
    iput-object p1, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3663
    iput-object p2, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mListener:Landroid/location/provider/ProviderRequest$ChangedListener;

    .line 3664
    return-void
.end method

.method static synthetic blacklist lambda$onProviderRequestChanged$0(Ljava/lang/String;Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest$ChangedListener;)V
    .locals 0
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;
    .param p2, "listener"    # Landroid/location/provider/ProviderRequest$ChangedListener;

    .line 3678
    invoke-interface {p2, p0, p1}, Landroid/location/provider/ProviderRequest$ChangedListener;->onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    return-void
.end method


# virtual methods
.method public blacklist getListener()Landroid/location/provider/ProviderRequest$ChangedListener;
    .locals 1

    .line 3673
    iget-object v0, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mListener:Landroid/location/provider/ProviderRequest$ChangedListener;

    return-object v0
.end method

.method public bridge synthetic blacklist getListener()Ljava/lang/Object;
    .locals 1

    .line 3652
    invoke-virtual {p0}, Landroid/location/LocationManager$ProviderRequestTransport;->getListener()Landroid/location/provider/ProviderRequest$ChangedListener;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/provider/ProviderRequest;

    .line 3678
    iget-object v0, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$ProviderRequestTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/location/LocationManager$ProviderRequestTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$ProviderRequestTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3679
    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    .line 3668
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mListener:Landroid/location/provider/ProviderRequest$ChangedListener;

    .line 3669
    return-void
.end method
