.class public Landroid/view/accessibility/IAccessibilityManager$Default;
.super Ljava/lang/Object;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
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
.method public blacklist addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .locals 1
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
    .locals 2
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "host"    # Landroid/os/IBinder;
    .param p2, "embedded"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public blacklist disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist getAccessibilityShortcutTargets(I)Ljava/util/List;
    .locals 1
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAccessibilityWindowId(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .locals 1
    .param p1, "feedbackType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFocusColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFocusStrokeWidth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRecommendedTimeoutMillis()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getWindowToken(II)Landroid/os/IBinder;
    .locals 1
    .param p1, "windowId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist interrupt(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist isAudioDescriptionByDefaultEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSystemAudioCaptioningUiEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist notifyAccessibilityButtonVisibilityChanged(Z)V
    .locals 0
    .param p1, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist performAccessibilityShortcut(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist registerSystemAction(Landroid/app/RemoteAction;I)V
    .locals 0
    .param p1, "action"    # Landroid/app/RemoteAction;
    .param p2, "actionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V
    .locals 0
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z
    .locals 1
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p1, "uiEvent"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist sendFingerprintGesture(I)Z
    .locals 1
    .param p1, "gestureKeyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist setSystemAudioCaptioningEnabled(ZI)V
    .locals 0
    .param p1, "isEnabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public blacklist setSystemAudioCaptioningUiEnabled(ZI)V
    .locals 0
    .param p1, "isEnabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/view/accessibility/IWindowMagnificationConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "touchExplorationEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist unregisterSystemAction(I)V
    .locals 0
    .param p1, "actionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 0
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method
