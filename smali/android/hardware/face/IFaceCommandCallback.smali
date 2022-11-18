.class public interface abstract Landroid/hardware/face/IFaceCommandCallback;
.super Ljava/lang/Object;
.source "IFaceCommandCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceCommandCallback$Stub;,
        Landroid/hardware/face/IFaceCommandCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.face.IFaceCommandCallback"


# virtual methods
.method public abstract blacklist onFaceCmd(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
