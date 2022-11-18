.class public interface abstract Landroid/hardware/fingerprint/IUdfpsHbmListener;
.super Ljava/lang/Object;
.source "IUdfpsHbmListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;,
        Landroid/hardware/fingerprint/IUdfpsHbmListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IUdfpsHbmListener"


# virtual methods
.method public abstract blacklist onHbmDisabled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHbmEnabled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
