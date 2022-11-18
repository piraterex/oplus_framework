.class public abstract Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServiceLifecycleCallback"
.end annotation


# instance fields
.field blacklist mRemote:Landroid/bluetooth/IBluetoothManagerCallback;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4674
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;-><init>(Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->mRemote:Landroid/bluetooth/IBluetoothManagerCallback;

    return-void
.end method


# virtual methods
.method public abstract blacklist onBluetoothServiceDown()V
.end method

.method public abstract blacklist onBluetoothServiceUp()V
.end method
