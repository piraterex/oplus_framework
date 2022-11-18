.class public interface abstract Landroid/content/IOplusClipboardManager;
.super Ljava/lang/Object;
.source "IOplusClipboardManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IOplusClipboardManager$Stub;,
        Landroid/content/IOplusClipboardManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.IOplusClipboardManager"


# virtual methods
.method public abstract blacklist getUserPathInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getUserPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
