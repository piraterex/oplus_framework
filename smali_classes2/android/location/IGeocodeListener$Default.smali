.class public Landroid/location/IGeocodeListener$Default;
.super Ljava/lang/Object;
.source "IGeocodeListener.java"

# interfaces
.implements Landroid/location/IGeocodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onResults(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    return-void
.end method
