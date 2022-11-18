.class public Landroid/location/ILocationCallback$Default;
.super Ljava/lang/Object;
.source "ILocationCallback.java"

# interfaces
.implements Landroid/location/ILocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
