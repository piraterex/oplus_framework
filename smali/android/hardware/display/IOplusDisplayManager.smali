.class public interface abstract Landroid/hardware/display/IOplusDisplayManager;
.super Ljava/lang/Object;
.source "IOplusDisplayManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IOplusDisplayManager$Stub;,
        Landroid/hardware/display/IOplusDisplayManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IOplusDisplayManager"


# virtual methods
.method public abstract blacklist setSpecBrightness(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
