.class public interface abstract Landroid/security/apc/IConfirmationCallback;
.super Ljava/lang/Object;
.source "IConfirmationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/apc/IConfirmationCallback$Stub;,
        Landroid/security/apc/IConfirmationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 148
    const-string v0, "android$security$apc$IConfirmationCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/apc/IConfirmationCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist onCompleted(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
