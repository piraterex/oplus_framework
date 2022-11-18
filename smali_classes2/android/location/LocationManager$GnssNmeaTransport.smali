.class Landroid/location/LocationManager$GnssNmeaTransport;
.super Landroid/location/IGnssNmeaListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssNmeaTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssNmeaListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/OnNmeaMessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/OnNmeaMessageListener;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/OnNmeaMessageListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 3473
    invoke-direct {p0}, Landroid/location/IGnssNmeaListener$Stub;-><init>()V

    .line 3474
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

    .line 3475
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3476
    iput-object p1, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3477
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mPackageName:Ljava/lang/String;

    .line 3478
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mAttributionTag:Ljava/lang/String;

    .line 3479
    iput-object p3, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    .line 3480
    return-void
.end method

.method static synthetic blacklist lambda$onNmeaReceived$0(Ljava/lang/String;JLandroid/location/OnNmeaMessageListener;)V
    .locals 0
    .param p0, "nmea"    # Ljava/lang/String;
    .param p1, "timestamp"    # J
    .param p3, "callback"    # Landroid/location/OnNmeaMessageListener;

    .line 3502
    invoke-interface {p3, p0, p1, p2}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 3487
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListener()Landroid/location/OnNmeaMessageListener;
    .locals 1

    .line 3497
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    return-object v0
.end method

.method public bridge synthetic blacklist getListener()Ljava/lang/Object;
    .locals 1

    .line 3464
    invoke-virtual {p0}, Landroid/location/LocationManager$GnssNmeaTransport;->getListener()Landroid/location/OnNmeaMessageListener;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    .line 3483
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onNmeaReceived(JLjava/lang/String;)V
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .line 3502
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1, p2}, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssNmeaTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3503
    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    .line 3492
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    .line 3493
    return-void
.end method
