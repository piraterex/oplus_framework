.class public Landroid/hardware/tv/tuner/IFrontendCallback$Default;
.super Ljava/lang/Object;
.source "IFrontendCallback.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFrontendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFrontendCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onEvent(I)V
    .locals 0
    .param p1, "frontendEventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onScanMessage(ILandroid/hardware/tv/tuner/FrontendScanMessage;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Landroid/hardware/tv/tuner/FrontendScanMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
