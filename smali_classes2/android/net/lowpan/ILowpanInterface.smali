.class public interface abstract Landroid/net/lowpan/ILowpanInterface;
.super Ljava/lang/Object;
.source "ILowpanInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterface$Stub;,
        Landroid/net/lowpan/ILowpanInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanInterface"

.field public static final blacklist ERROR_ALREADY:I = 0x9

.field public static final blacklist ERROR_BUSY:I = 0x8

.field public static final blacklist ERROR_CANCELED:I = 0xa

.field public static final blacklist ERROR_DISABLED:I = 0x3

.field public static final blacklist ERROR_FEATURE_NOT_SUPPORTED:I = 0xb

.field public static final blacklist ERROR_FORM_FAILED_AT_SCAN:I = 0xf

.field public static final blacklist ERROR_INVALID_ARGUMENT:I = 0x2

.field public static final blacklist ERROR_IO_FAILURE:I = 0x6

.field public static final blacklist ERROR_JOIN_FAILED_AT_AUTH:I = 0xe

.field public static final blacklist ERROR_JOIN_FAILED_AT_SCAN:I = 0xd

.field public static final blacklist ERROR_JOIN_FAILED_UNKNOWN:I = 0xc

.field public static final blacklist ERROR_NCP_PROBLEM:I = 0x7

.field public static final blacklist ERROR_TIMEOUT:I = 0x5

.field public static final blacklist ERROR_UNSPECIFIED:I = 0x1

.field public static final blacklist ERROR_WRONG_STATE:I = 0x4

.field public static final blacklist KEY_CHANNEL_MASK:Ljava/lang/String; = "android.net.lowpan.property.CHANNEL_MASK"

.field public static final blacklist KEY_MAX_TX_POWER:Ljava/lang/String; = "android.net.lowpan.property.MAX_TX_POWER"

.field public static final blacklist NETWORK_TYPE_THREAD_V1:Ljava/lang/String; = "org.threadgroup.thread.v1"

.field public static final blacklist NETWORK_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final blacklist PERM_ACCESS_LOWPAN_STATE:Ljava/lang/String; = "android.permission.ACCESS_LOWPAN_STATE"

.field public static final blacklist PERM_CHANGE_LOWPAN_STATE:Ljava/lang/String; = "android.permission.CHANGE_LOWPAN_STATE"

.field public static final blacklist PERM_READ_LOWPAN_CREDENTIAL:Ljava/lang/String; = "android.permission.READ_LOWPAN_CREDENTIAL"

.field public static final blacklist ROLE_COORDINATOR:Ljava/lang/String; = "coordinator"

.field public static final blacklist ROLE_DETACHED:Ljava/lang/String; = "detached"

.field public static final blacklist ROLE_END_DEVICE:Ljava/lang/String; = "end-device"

.field public static final blacklist ROLE_LEADER:Ljava/lang/String; = "leader"

.field public static final blacklist ROLE_ROUTER:Ljava/lang/String; = "router"

.field public static final blacklist ROLE_SLEEPY_END_DEVICE:Ljava/lang/String; = "sleepy-end-device"

.field public static final blacklist ROLE_SLEEPY_ROUTER:Ljava/lang/String; = "sleepy-router"

.field public static final blacklist STATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final blacklist STATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final blacklist STATE_COMMISSIONING:Ljava/lang/String; = "commissioning"

.field public static final blacklist STATE_FAULT:Ljava/lang/String; = "fault"

.field public static final blacklist STATE_OFFLINE:Ljava/lang/String; = "offline"


# virtual methods
.method public abstract blacklist addExternalRoute(Landroid/net/IpPrefix;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist attach(Landroid/net/lowpan/LowpanProvision;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist beginLowPower()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist closeCommissioningSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist form(Landroid/net/lowpan/LowpanProvision;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDriverVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getExtendedAddress()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getLinkAddresses()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getLinkNetworks()[Landroid/net/IpPrefix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMacAddress()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getNcpVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPartitionId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRole()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getState()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedNetworkTypes()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isCommissioned()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isConnected()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isUp()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist join(Landroid/net/lowpan/LowpanProvision;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist leave()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHostWake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist pollForData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeExternalRoute(Landroid/net/IpPrefix;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendToCommissioner([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopEnergyScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopNetScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
