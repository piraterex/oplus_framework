.class public interface abstract Landroid/hardware/contexthub/IContextHub;
.super Ljava/lang/Object;
.source "IContextHub.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHub$Stub;,
        Landroid/hardware/contexthub/IContextHub$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist EX_CONTEXT_HUB_UNSPECIFIED:I = -0x1

.field public static final blacklist HASH:Ljava/lang/String; = "10abe2e5202d9b80ccebf5f6376d711a9a212b27"

.field public static final blacklist VERSION:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 524
    const-string v0, "android$hardware$contexthub$IContextHub"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contexthub/IContextHub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist disableNanoapp(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enableNanoapp(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getContextHubs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHostEndpointDisconnected(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSettingChanged(BZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist queryNanoapps(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unloadNanoapp(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
