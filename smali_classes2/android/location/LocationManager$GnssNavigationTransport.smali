.class Landroid/location/LocationManager$GnssNavigationTransport;
.super Landroid/location/IGnssNavigationMessageListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssNavigationTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssNavigationMessageListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/GnssNavigationMessage$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/GnssNavigationMessage$Callback;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssNavigationMessage$Callback;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 3614
    invoke-direct {p0}, Landroid/location/IGnssNavigationMessageListener$Stub;-><init>()V

    .line 3615
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

    .line 3616
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3617
    iput-object p1, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3618
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mPackageName:Ljava/lang/String;

    .line 3619
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mAttributionTag:Ljava/lang/String;

    .line 3620
    iput-object p3, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mListener:Landroid/location/GnssNavigationMessage$Callback;

    .line 3621
    return-void
.end method

.method static synthetic blacklist lambda$onGnssNavigationMessageReceived$0(Landroid/location/GnssNavigationMessage;Landroid/location/GnssNavigationMessage$Callback;)V
    .locals 0
    .param p0, "event"    # Landroid/location/GnssNavigationMessage;
    .param p1, "listener"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 3643
    invoke-virtual {p1, p0}, Landroid/location/GnssNavigationMessage$Callback;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method static synthetic blacklist lambda$onStatusChanged$1(ILandroid/location/GnssNavigationMessage$Callback;)V
    .locals 0
    .param p0, "status"    # I
    .param p1, "listener"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 3648
    invoke-virtual {p1, p0}, Landroid/location/GnssNavigationMessage$Callback;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 3628
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListener()Landroid/location/GnssNavigationMessage$Callback;
    .locals 1

    .line 3638
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mListener:Landroid/location/GnssNavigationMessage$Callback;

    return-object v0
.end method

.method public bridge synthetic blacklist getListener()Ljava/lang/Object;
    .locals 1

    .line 3604
    invoke-virtual {p0}, Landroid/location/LocationManager$GnssNavigationTransport;->getListener()Landroid/location/GnssNavigationMessage$Callback;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    .line 3624
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 3643
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda0;-><init>(Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssNavigationTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3644
    return-void
.end method

.method public blacklist onStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .line 3648
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssNavigationTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3649
    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    .line 3633
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mListener:Landroid/location/GnssNavigationMessage$Callback;

    .line 3634
    return-void
.end method
