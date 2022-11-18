.class public interface abstract Landroid/system/keystore2/IKeystoreSecurityLevel;
.super Ljava/lang/Object;
.source "IKeystoreSecurityLevel.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;,
        Landroid/system/keystore2/IKeystoreSecurityLevel$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "19e8b65277839bad0ab335c781e3c652324920ce"

.field public static final blacklist KEY_FLAG_AUTH_BOUND_WITHOUT_CRYPTOGRAPHIC_LSKF_BINDING:I = 0x1

.field public static final blacklist VERSION:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 409
    const-string v0, "android$system$keystore2$IKeystoreSecurityLevel"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist convertStorageKeyToEphemeral(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/EphemeralStorageKeyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;
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

.method public abstract blacklist importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
