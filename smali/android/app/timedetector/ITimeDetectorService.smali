.class public interface abstract Landroid/app/timedetector/ITimeDetectorService;
.super Ljava/lang/Object;
.source "ITimeDetectorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/ITimeDetectorService$Stub;,
        Landroid/app/timedetector/ITimeDetectorService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.timedetector.ITimeDetectorService"


# virtual methods
.method public abstract blacklist getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
