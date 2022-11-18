.class public Landroid/window/IOplusTaskOrganizer$Default;
.super Ljava/lang/Object;
.source "IOplusTaskOrganizer.java"

# interfaces
.implements Landroid/window/IOplusTaskOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IOplusTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "info"    # Landroid/window/OplusStartingWindowExtendedInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
