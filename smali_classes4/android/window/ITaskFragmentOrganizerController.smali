.class public interface abstract Landroid/window/ITaskFragmentOrganizerController;
.super Ljava/lang/Object;
.source "ITaskFragmentOrganizerController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFragmentOrganizerController$Stub;,
        Landroid/window/ITaskFragmentOrganizerController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ITaskFragmentOrganizerController"


# virtual methods
.method public abstract blacklist isActivityEmbedded(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;ILandroid/view/RemoteAnimationDefinition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
