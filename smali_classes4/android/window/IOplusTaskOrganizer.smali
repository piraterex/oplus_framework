.class public interface abstract Landroid/window/IOplusTaskOrganizer;
.super Ljava/lang/Object;
.source "IOplusTaskOrganizer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IOplusTaskOrganizer$Stub;,
        Landroid/window/IOplusTaskOrganizer$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.window.IOplusTaskOrganizer"


# virtual methods
.method public abstract whitelist updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
