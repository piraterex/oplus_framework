.class Landroid/location/LocationManager$GnssMeasurementsTransport;
.super Landroid/location/IGnssMeasurementsListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssMeasurementsTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssMeasurementsListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/GnssMeasurementsEvent$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/GnssMeasurementsEvent$Callback;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRequest:Landroid/location/GnssMeasurementRequest;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssMeasurementRequest;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p4, "listener"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 3517
    invoke-direct {p0}, Landroid/location/IGnssMeasurementsListener$Stub;-><init>()V

    .line 3518
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

    .line 3519
    if-eqz p4, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "invalid null callback"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3520
    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v1, "invalid null request"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3521
    iput-object p1, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3522
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mPackageName:Ljava/lang/String;

    .line 3523
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mAttributionTag:Ljava/lang/String;

    .line 3524
    iput-object p3, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mRequest:Landroid/location/GnssMeasurementRequest;

    .line 3525
    iput-object p4, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mListener:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 3526
    return-void
.end method

.method static synthetic blacklist lambda$onGnssMeasurementsReceived$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .locals 0
    .param p0, "event"    # Landroid/location/GnssMeasurementsEvent;
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 3552
    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementsEvent$Callback;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$onStatusChanged$1(ILandroid/location/GnssMeasurementsEvent$Callback;)V
    .locals 0
    .param p0, "status"    # I
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 3557
    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementsEvent$Callback;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 3533
    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListener()Landroid/location/GnssMeasurementsEvent$Callback;
    .locals 1

    .line 3547
    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mListener:Landroid/location/GnssMeasurementsEvent$Callback;

    return-object v0
.end method

.method public bridge synthetic blacklist getListener()Ljava/lang/Object;
    .locals 1

    .line 3506
    invoke-virtual {p0}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getListener()Landroid/location/GnssMeasurementsEvent$Callback;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    .line 3529
    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequest()Landroid/location/GnssMeasurementRequest;
    .locals 1

    .line 3537
    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mRequest:Landroid/location/GnssMeasurementRequest;

    return-object v0
.end method

.method public blacklist onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 3552
    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda1;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3553
    return-void
.end method

.method public blacklist onStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .line 3557
    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3558
    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    .line 3542
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mListener:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 3543
    return-void
.end method
