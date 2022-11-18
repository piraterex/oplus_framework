.class public Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Default;
.super Ljava/lang/Object;
.source "IRcsUcePublishStateCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
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

.method public blacklist onPublishStateChanged(I)V
    .locals 0
    .param p1, "publishState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
