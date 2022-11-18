.class public interface abstract Landroid/window/ITaskFragmentOrganizer;
.super Ljava/lang/Object;
.source "ITaskFragmentOrganizer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFragmentOrganizer$Stub;,
        Landroid/window/ITaskFragmentOrganizer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ITaskFragmentOrganizer"


# virtual methods
.method public abstract blacklist onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
