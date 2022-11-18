.class public interface abstract Landroid/media/ISpatializerHeadTrackingCallback;
.super Ljava/lang/Object;
.source "ISpatializerHeadTrackingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerHeadTrackingCallback$Stub;,
        Landroid/media/ISpatializerHeadTrackingCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 150
    const-string v0, "android$media$ISpatializerHeadTrackingCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/ISpatializerHeadTrackingCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist onHeadToSoundStagePoseUpdated([F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHeadTrackingModeChanged(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
