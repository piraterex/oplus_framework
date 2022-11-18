.class public Landroid/service/voice/IDspHotwordDetectionCallback$Default;
.super Ljava/lang/Object;
.source "IDspHotwordDetectionCallback.java"

# interfaces
.implements Landroid/service/voice/IDspHotwordDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IDspHotwordDetectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 0
    .param p1, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 0
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
