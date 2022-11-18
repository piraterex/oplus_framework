.class public interface abstract Landroid/security/legacykeystore/ILegacyKeystore;
.super Ljava/lang/Object;
.source "ILegacyKeystore.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/legacykeystore/ILegacyKeystore$Stub;,
        Landroid/security/legacykeystore/ILegacyKeystore$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist ERROR_ENTRY_NOT_FOUND:I = 0x7

.field public static final blacklist ERROR_PERMISSION_DENIED:I = 0x6

.field public static final blacklist ERROR_SYSTEM_ERROR:I = 0x4

.field public static final blacklist UID_SELF:I = -0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 301
    const-string v0, "android$security$legacykeystore$ILegacyKeystore"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/legacykeystore/ILegacyKeystore;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist get(Ljava/lang/String;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist list(Ljava/lang/String;I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist put(Ljava/lang/String;I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist remove(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
