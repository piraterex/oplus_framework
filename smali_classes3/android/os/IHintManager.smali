.class public interface abstract Landroid/os/IHintManager;
.super Ljava/lang/Object;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintManager$Stub;,
        Landroid/os/IHintManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IHintManager"


# virtual methods
.method public abstract blacklist createHintSession(Landroid/os/IBinder;[IJ)Landroid/os/IHintSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHintSessionPreferredRate()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
