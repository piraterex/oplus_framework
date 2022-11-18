.class public interface abstract Landroid/app/timezone/ICallback;
.super Ljava/lang/Object;
.source "ICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/ICallback$Stub;,
        Landroid/app/timezone/ICallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.timezone.ICallback"


# virtual methods
.method public abstract blacklist onFinished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
