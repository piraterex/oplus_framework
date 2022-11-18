.class public interface abstract Landroid/bluetooth/BluetoothLeAudio$Callback;
.super Ljava/lang/Object;
.source "BluetoothLeAudio.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudio$Callback$GroupStatus;
    }
.end annotation


# virtual methods
.method public abstract whitelist onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onGroupStatusChanged(II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
