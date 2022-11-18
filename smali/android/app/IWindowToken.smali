.class public interface abstract Landroid/app/IWindowToken;
.super Ljava/lang/Object;
.source "IWindowToken.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWindowToken$Stub;,
        Landroid/app/IWindowToken$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IWindowToken"


# virtual methods
.method public abstract blacklist onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onWindowTokenRemoved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
