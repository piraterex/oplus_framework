.class public Landroid/view/contentcapture/IContentCaptureManager$Default;
.super Ljava/lang/Object;
.source "IContentCaptureManager.java"

# interfaces
.implements Landroid/view/contentcapture/IContentCaptureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/IContentCaptureManager;
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

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist finishSession(I)V
    .locals 0
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/view/contentcapture/IContentCaptureOptionsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist resetTemporaryService(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist setDefaultServiceEnabled(IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist setTemporaryService(ILjava/lang/String;I)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    .locals 0
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "adapter"    # Landroid/view/contentcapture/IDataShareWriteAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    .locals 0
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I
    .param p6, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
