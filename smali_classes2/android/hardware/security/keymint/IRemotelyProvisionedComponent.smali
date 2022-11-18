.class public interface abstract Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
.super Ljava/lang/Object;
.source "IRemotelyProvisionedComponent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;,
        Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "207c9f218b9b9e4e74ff5232eb16511eca9d7d2e"

.field public static final blacklist STATUS_FAILED:I = 0x1

.field public static final blacklist STATUS_INVALID_EEK:I = 0x5

.field public static final blacklist STATUS_INVALID_MAC:I = 0x2

.field public static final blacklist STATUS_PRODUCTION_KEY_IN_TEST_REQUEST:I = 0x3

.field public static final blacklist STATUS_TEST_KEY_IN_PRODUCTION_REQUEST:I = 0x4

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 281
    const-string v0, "android$hardware$security$keymint$IRemotelyProvisionedComponent"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist generateCertificateRequest(Z[Landroid/hardware/security/keymint/MacedPublicKey;[B[BLandroid/hardware/security/keymint/DeviceInfo;Landroid/hardware/security/keymint/ProtectedData;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist generateEcdsaP256KeyPair(ZLandroid/hardware/security/keymint/MacedPublicKey;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;
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
