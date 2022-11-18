.class public interface abstract Landroid/permission/IPermissionChecker;
.super Ljava/lang/Object;
.source "IPermissionChecker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IPermissionChecker$Stub;,
        Landroid/permission/IPermissionChecker$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PERMISSION_HARD_DENIED:I = 0x2

.field public static final blacklist PERMISSION_SOFT_DENIED:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 213
    const-string v0, "android$permission$IPermissionChecker"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/IPermissionChecker;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
