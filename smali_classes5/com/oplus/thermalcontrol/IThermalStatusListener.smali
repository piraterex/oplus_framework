.class public interface abstract Lcom/oplus/thermalcontrol/IThermalStatusListener;
.super Ljava/lang/Object;
.source "IThermalStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/thermalcontrol/IThermalStatusListener$Stub;,
        Lcom/oplus/thermalcontrol/IThermalStatusListener$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.thermalcontrol.IThermalStatusListener"


# virtual methods
.method public abstract whitelist empty1()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist empty2()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist notifyThermalBroadCast(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist notifyThermalStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
