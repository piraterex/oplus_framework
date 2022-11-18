.class public Lcom/android/ims/internal/uce/options/IOptionsListener$Default;
.super Ljava/lang/Object;
.source "IOptionsListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsListener;
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

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cmdStatus(Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V
    .locals 0
    .param p1, "cmdStatus"    # Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist getVersionCb(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist incomingOptions(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;I)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "capInfo"    # Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .param p3, "tID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 0
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist serviceUnavailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 0
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist sipResponseReceived(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsSipResponse;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "sipResponse"    # Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    .param p3, "capInfo"    # Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method
