.class public Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheredInterfaceRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothTetheredInterfaceRequest"
.end annotation


# instance fields
.field private final blacklist mId:I

.field private final blacklist mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

.field private blacklist mService:Landroid/bluetooth/IBluetoothPan;

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPan;
    .param p2, "service"    # Landroid/bluetooth/IBluetoothPan;
    .param p3, "panCallback"    # Landroid/bluetooth/IBluetoothPanCallback;
    .param p4, "id"    # I

    .line 204
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 206
    iput-object p3, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

    .line 207
    iput p4, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mId:I

    .line 208
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;ILandroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;-><init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;I)V

    return-void
.end method


# virtual methods
.method public blacklist release()V
    .locals 8

    .line 220
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 226
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

    iget v4, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mId:I

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v6}, Landroid/bluetooth/BluetoothPan;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothPan;)Landroid/content/AttributionSource;

    move-result-object v6

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothPan;->setBluetoothTethering(Landroid/bluetooth/IBluetoothPanCallback;IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 227
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    nop

    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_0
    iput-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 232
    goto :goto_1

    .line 231
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothPan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 233
    :goto_1
    return-void

    .line 231
    :goto_2
    iput-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 232
    throw v1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The tethered interface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
