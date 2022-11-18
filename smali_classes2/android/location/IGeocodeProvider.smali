.class public interface abstract Landroid/location/IGeocodeProvider;
.super Ljava/lang/Object;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeocodeProvider$Stub;,
        Landroid/location/IGeocodeProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
