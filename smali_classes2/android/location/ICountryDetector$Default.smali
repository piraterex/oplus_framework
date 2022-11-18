.class public Landroid/location/ICountryDetector$Default;
.super Ljava/lang/Object;
.source "ICountryDetector.java"

# interfaces
.implements Landroid/location/ICountryDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ICountryDetector;
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
.method public blacklist addCountryListener(Landroid/location/ICountryListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist detectCountry()Landroid/location/Country;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeCountryListener(Landroid/location/ICountryListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
