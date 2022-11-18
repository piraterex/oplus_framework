.class public Landroid/telephony/ims/aidl/IImsConfigCallback$Default;
.super Ljava/lang/Object;
.source "IImsConfigCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsConfigCallback;
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

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onIntConfigChanged(II)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onStringConfigChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
