.class public interface abstract Landroid/hardware/gnss/IGnssPowerIndicationCallback;
.super Ljava/lang/Object;
.source "IGnssPowerIndicationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssPowerIndicationCallback$Stub;,
        Landroid/hardware/gnss/IGnssPowerIndicationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist CAPABILITY_MULTIBAND_ACQUISITION:I = 0x10

.field public static final blacklist CAPABILITY_MULTIBAND_TRACKING:I = 0x4

.field public static final blacklist CAPABILITY_OTHER_MODES:I = 0x20

.field public static final blacklist CAPABILITY_SINGLEBAND_ACQUISITION:I = 0x8

.field public static final blacklist CAPABILITY_SINGLEBAND_TRACKING:I = 0x2

.field public static final blacklist CAPABILITY_TOTAL:I = 0x1

.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 208
    const-string v0, "android$hardware$gnss$IGnssPowerIndicationCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/IGnssPowerIndicationCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

.method public abstract blacklist gnssPowerStatsCb(Landroid/hardware/gnss/GnssPowerStats;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setCapabilitiesCb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
