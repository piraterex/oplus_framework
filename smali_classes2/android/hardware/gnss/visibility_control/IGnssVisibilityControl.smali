.class public interface abstract Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;
.super Ljava/lang/Object;
.source "IGnssVisibilityControl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;,
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 212
    const-string v0, "android$hardware$gnss$visibility_control$IGnssVisibilityControl"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist enableNfwLocationAccess([Ljava/lang/String;)V
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

.method public abstract blacklist setCallback(Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
