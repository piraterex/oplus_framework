.class public interface abstract Landroid/hardware/hdmi/IHdmiInputChangeListener;
.super Ljava/lang/Object;
.source "IHdmiInputChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;,
        Landroid/hardware/hdmi/IHdmiInputChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
