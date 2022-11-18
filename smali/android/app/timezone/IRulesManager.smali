.class public interface abstract Landroid/app/timezone/IRulesManager;
.super Ljava/lang/Object;
.source "IRulesManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/IRulesManager$Stub;,
        Landroid/app/timezone/IRulesManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.timezone.IRulesManager"


# virtual methods
.method public abstract blacklist getRulesState()Landroid/app/timezone/RulesState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestNothing([BZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestUninstall([BLandroid/app/timezone/ICallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
