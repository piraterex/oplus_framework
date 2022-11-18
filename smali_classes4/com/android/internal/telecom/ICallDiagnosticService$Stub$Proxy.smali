.class Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICallDiagnosticService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 235
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callQuality"    # Landroid/telephony/CallQuality;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 325
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 242
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    return-object v0
.end method

.method public blacklist initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V
    .locals 5
    .param p1, "call"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    nop

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw v1
.end method

.method public blacklist notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 350
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    nop

    .line 355
    return-void

    .line 353
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    throw v1
.end method

.method public blacklist receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 5
    .param p1, "qualityReport"    # Landroid/telecom/BluetoothCallQualityReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 337
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    nop

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    throw v1
.end method

.method public blacklist receiveDeviceToDeviceMessage(Ljava/lang/String;II)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    nop

    .line 317
    return-void

    .line 315
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    throw v1
.end method

.method public blacklist removeDiagnosticCall(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    throw v1
.end method

.method public blacklist setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 248
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    nop

    .line 255
    return-void

    .line 253
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw v1
.end method

.method public blacklist updateCall(Landroid/telecom/ParcelableCall;)V
    .locals 5
    .param p1, "call"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 274
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    nop

    .line 279
    return-void

    .line 277
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    throw v1
.end method

.method public blacklist updateCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 5
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    nop

    .line 291
    return-void

    .line 289
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw v1
.end method
