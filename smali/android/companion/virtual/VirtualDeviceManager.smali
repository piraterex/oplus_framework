.class public final Landroid/companion/virtual/VirtualDeviceManager;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;,
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;,
        Landroid/companion/virtual/VirtualDeviceManager$PendingIntentLaunchStatus;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_VIRTUAL_DISPLAY_FLAGS:I = 0x9c9

.field public static final whitelist LAUNCH_FAILURE_NO_ACTIVITY:I = 0x2

.field public static final whitelist LAUNCH_FAILURE_PENDING_INTENT_CANCELED:I = 0x1

.field public static final whitelist LAUNCH_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualDeviceManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/companion/virtual/IVirtualDeviceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Landroid/companion/virtual/IVirtualDeviceManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    .line 116
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method


# virtual methods
.method public whitelist createVirtualDevice(ILandroid/companion/virtual/VirtualDeviceParams;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
    .locals 7
    .param p1, "associationId"    # I
    .param p2, "params"    # Landroid/companion/virtual/VirtualDeviceParams;

    .line 139
    :try_start_0
    new-instance v6, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v0, v6

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice-IA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
