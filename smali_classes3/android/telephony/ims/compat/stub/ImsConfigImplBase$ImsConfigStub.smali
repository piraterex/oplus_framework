.class public Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsConfigStub"
.end annotation


# instance fields
.field greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/compat/stub/ImsConfigImplBase;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProvisionedIntValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProvisionedStringValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/ims/compat/stub/ImsConfigImplBase;Landroid/content/Context;)V
    .locals 1
    .param p1, "imsConfigImplBase"    # Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
    .param p2, "context"    # Landroid/content/Context;

    .line 221
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    .line 222
    iput-object p2, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mContext:Landroid/content/Context;

    .line 223
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    .line 225
    return-void
.end method

.method private greylist-max-o getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    .line 360
    .local v0, "ref":Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
    if-eqz v0, :cond_0

    .line 363
    return-object v0

    .line 361
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Fail to get ImsConfigImpl"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o sendImsConfigChangedIntent(II)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 368
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->sendImsConfigChangedIntent(ILjava/lang/String;)V

    .line 369
    return-void
.end method

.method private greylist-max-o sendImsConfigChangedIntent(ILjava/lang/String;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "configChangedIntent":Landroid/content/Intent;
    const-string/jumbo v1, "item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v1, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    .line 322
    return-void
.end method

.method public declared-synchronized greylist-max-o getProvisionedStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 261
    .end local p0    # "this":Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "retVal":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 263
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_1
    monitor-exit p0

    return-object v0

    .line 257
    .end local v0    # "retVal":Ljava/lang/String;
    .end local p1    # "item":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o getProvisionedValue(I)I
    .locals 2
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 240
    .end local p0    # "this":Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getProvisionedValue(I)I

    move-result v0

    .line 241
    .local v0, "retVal":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :cond_1
    monitor-exit p0

    return v0

    .line 236
    .end local v0    # "retVal":I
    .end local p1    # "item":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    .line 347
    return-void
.end method

.method public greylist-max-o getVolteProvisioned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getVolteProvisioned()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 331
    return-void
.end method

.method public declared-synchronized greylist-max-o setProvisionedStringValue(ILjava/lang/String;)I
    .locals 2
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "retVal":I
    if-nez v0, :cond_0

    .line 309
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local p0    # "this":Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    :cond_0
    monitor-exit p0

    return v0

    .line 305
    .end local v0    # "retVal":I
    .end local p1    # "item":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o setProvisionedValue(II)I
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->setProvisionedValue(II)I

    move-result v0

    .line 283
    .local v0, "retVal":I
    if-nez v0, :cond_0

    .line 284
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(IIZ)V

    goto :goto_0

    .line 286
    .end local p0    # "this":Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    :cond_0
    const-string v1, "ImsConfigImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set provision value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_0
    monitor-exit p0

    return v0

    .line 280
    .end local v0    # "retVal":I
    .end local p1    # "item":I
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    .line 356
    return-void
.end method

.method protected declared-synchronized greylist-max-o updateCachedValue(IIZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I
    .param p3, "notifyChange"    # Z

    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    if-eqz p3, :cond_0

    .line 383
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->sendImsConfigChangedIntent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local p0    # "this":Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    :cond_0
    monitor-exit p0

    return-void

    .line 380
    .end local p1    # "item":I
    .end local p2    # "value":I
    .end local p3    # "notifyChange":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized greylist-max-o updateCachedValue(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "notifyChange"    # Z

    monitor-enter p0

    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    if-eqz p3, :cond_0

    .line 391
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->sendImsConfigChangedIntent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .end local p0    # "this":Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    :cond_0
    monitor-exit p0

    return-void

    .line 388
    .end local p1    # "item":I
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "notifyChange":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
