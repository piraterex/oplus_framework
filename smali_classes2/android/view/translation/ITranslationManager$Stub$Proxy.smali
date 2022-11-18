.class Landroid/view/translation/ITranslationManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITranslationManager.java"

# interfaces
.implements Landroid/view/translation/ITranslationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ITranslationManager$Stub;
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

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 269
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 276
    const-string v0, "android.view.translation.ITranslationManager"

    return-object v0
.end method

.method public blacklist getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 5
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 385
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    nop

    .line 391
    return-void

    .line 389
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    throw v1
.end method

.method public blacklist onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    .locals 5
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "sessionId"    # I
    .param p3, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 323
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 325
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 327
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    throw v1
.end method

.method public blacklist onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V
    .locals 4
    .param p1, "sourceFormat"    # I
    .param p2, "destFormat"    # I
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 286
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    nop

    .line 292
    return-void

    .line 290
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    throw v1
.end method

.method public blacklist onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "activityDestroyed"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 399
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 405
    nop

    .line 406
    return-void

    .line 404
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 405
    throw v1
.end method

.method public blacklist registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .locals 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 299
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    nop

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw v1
.end method

.method public blacklist registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .locals 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v1
.end method

.method public blacklist unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .locals 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 310
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 312
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    nop

    .line 318
    return-void

    .line 316
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    throw v1
.end method

.method public blacklist unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .locals 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    nop

    .line 378
    return-void

    .line 376
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v1
.end method

.method public blacklist updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "taskId"    # I
    .param p7, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/UiTranslationSpec;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    .local p4, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.translation.ITranslationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 341
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 342
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 343
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 344
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 346
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v1, p0, Landroid/view/translation/ITranslationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    nop

    .line 352
    return-void

    .line 350
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    throw v1
.end method
