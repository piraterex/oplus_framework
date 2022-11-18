.class public interface abstract Landroid/security/apc/IProtectedConfirmation;
.super Ljava/lang/Object;
.source "IProtectedConfirmation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/apc/IProtectedConfirmation$Stub;,
        Landroid/security/apc/IProtectedConfirmation$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist FLAG_UI_OPTION_INVERTED:I = 0x1

.field public static final blacklist FLAG_UI_OPTION_MAGNIFIED:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 236
    const-string v0, "android$security$apc$IProtectedConfirmation"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/apc/IProtectedConfirmation;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
