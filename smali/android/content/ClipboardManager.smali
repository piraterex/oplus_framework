.class public Landroid/content/ClipboardManager;
.super Landroid/text/ClipboardManager;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    }
.end annotation


# static fields
.field public static final blacklist DEVICE_CONFIG_DEFAULT_SHOW_ACCESS_NOTIFICATIONS:Z = true

.field public static final blacklist DEVICE_CONFIG_SHOW_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "show_access_notifications"


# instance fields
.field public blacklist mClipboardManagerExt:Landroid/content/IClipboardManagerExt;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mPrimaryClipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

.field private final greylist-max-o mService:Landroid/content/IClipboard;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/content/ClipboardManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Landroid/text/ClipboardManager;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/content/ClipboardManager$1;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$1;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    .line 102
    const-class v0, Landroid/content/IClipboardManagerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IClipboardManagerExt;

    iput-object v0, p0, Landroid/content/ClipboardManager;->mClipboardManagerExt:Landroid/content/IClipboardManagerExt;

    .line 129
    iput-object p1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    .line 131
    nop

    .line 132
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    .line 133
    return-void
.end method


# virtual methods
.method public whitelist addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 5
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 246
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 249
    :try_start_1
    iget-object v1, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 249
    invoke-interface {v1, v2, v3, v4}, Landroid/content/IClipboard;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/content/ClipboardManager;
    .end local p1    # "what":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    throw v2

    .line 256
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/ClipboardManager;
    .restart local p1    # "what":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist clearPrimaryClip()V
    .locals 3

    .line 185
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/IClipboard;->clearPrimaryClip(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    nop

    .line 189
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPrimaryClip()Landroid/content/ClipData;
    .locals 4

    .line 203
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mClipboardManagerExt:Landroid/content/IClipboardManagerExt;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IClipboardManagerExt;->adjustBeforeGetPrimaryClip(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/content/ClipboardManager;->mClipboardManagerExt:Landroid/content/IClipboardManagerExt;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/IClipboardManagerExt;->hookGetPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 3

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 224
    invoke-interface {v0, v1, v2}, Landroid/content/IClipboard;->getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPrimaryClipSource()Ljava/lang/String;
    .locals 3

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/IClipboard;->getPrimaryClipSource(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 282
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 285
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist hasPrimaryClip()Z
    .locals 3

    .line 239
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasText()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/IClipboard;->hasClipboardText(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 5
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 261
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 265
    :try_start_1
    iget-object v1, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 266
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 265
    invoke-interface {v1, v2, v3, v4}, Landroid/content/IClipboard;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/content/ClipboardManager;
    .end local p1    # "what":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    throw v2

    .line 272
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/ClipboardManager;
    .restart local p1    # "what":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method greylist reportPrimaryClipChanged()V
    .locals 3

    .line 331
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 333
    .local v1, "N":I
    if-gtz v1, :cond_0

    .line 334
    monitor-exit v0

    return-void

    .line 336
    :cond_0
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 337
    .local v1, "listeners":[Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 340
    aget-object v2, v1, v0

    check-cast v2, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-interface {v2}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 337
    .end local v1    # "listeners":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setPrimaryClip(Landroid/content/ClipData;)V
    .locals 3
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 145
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->prepareToLeaveProcess(Z)V

    .line 147
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 3
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 168
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->prepareToLeaveProcess(Z)V

    .line 171
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 171
    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/IClipboard;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .line 176
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 296
    return-void
.end method
