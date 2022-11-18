.class public Landroid/app/time/ITimeZoneDetectorListener$Default;
.super Ljava/lang/Object;
.source "ITimeZoneDetectorListener.java"

# interfaces
.implements Landroid/app/time/ITimeZoneDetectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/ITimeZoneDetectorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onChange()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
