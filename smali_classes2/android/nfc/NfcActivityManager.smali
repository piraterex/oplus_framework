.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/IAppCallback$Stub;
.source "NfcActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;,
        Landroid/nfc/NfcActivityManager$NfcApplicationState;
    }
.end annotation


# static fields
.field static final greylist-max-o DBG:Ljava/lang/Boolean;

.field static final greylist-max-o TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final greylist-max-o mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAdapter:Landroid/nfc/NfcAdapter;

.field final greylist-max-o mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/NfcActivityManager$NfcApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/nfc/NfcAdapter;

    .line 199
    invoke-direct {p0}, Landroid/nfc/IAppCallback$Stub;-><init>()V

    .line 200
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    .line 203
    return-void
.end method


# virtual methods
.method public greylist-max-o createBeamShareData(B)Landroid/nfc/BeamShareData;
    .locals 18
    .param p1, "peerLlcpVersion"    # B

    .line 363
    move-object/from16 v1, p0

    new-instance v0, Landroid/nfc/NfcEvent;

    iget-object v2, v1, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    move/from16 v3, p1

    invoke-direct {v0, v2, v3}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    move-object v2, v0

    .line 364
    .local v2, "event":Landroid/nfc/NfcEvent;
    monitor-enter p0

    .line 365
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 366
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 374
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_7

    .line 368
    .restart local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    :try_start_2
    iget-object v4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 369
    .local v4, "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    iget-object v5, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 370
    .local v5, "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    iget-object v6, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 371
    .local v6, "message":Landroid/nfc/NdefMessage;
    iget-object v7, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 372
    .local v7, "uris":[Landroid/net/Uri;
    iget v8, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 373
    .local v8, "flags":I
    iget-object v9, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 374
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .local v9, "activity":Landroid/app/Activity;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 375
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 378
    .local v10, "ident":J
    if-eqz v4, :cond_1

    .line 379
    :try_start_3
    invoke-interface {v4, v2}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v0

    goto :goto_0

    .line 412
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_6

    .line 381
    :cond_1
    :goto_0
    if-eqz v5, :cond_7

    .line 382
    :try_start_4
    invoke-interface {v5, v2}, Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;->createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;

    move-result-object v12

    move-object v7, v12

    .line 383
    if-eqz v7, :cond_6

    .line 384
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v12, "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    array-length v13, v7

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v15, v7, v14

    .line 386
    .local v15, "uri":Landroid/net/Uri;
    if-nez v15, :cond_2

    .line 387
    const-string v0, "NFC"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .local v16, "event":Landroid/nfc/NfcEvent;
    :try_start_5
    const-string v2, "Uri not allowed to be null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    goto :goto_3

    .line 390
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :cond_2
    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "content"

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 397
    :cond_3
    invoke-virtual {v9}, Landroid/app/Activity;->getUserId()I

    move-result v2

    invoke-static {v15, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 398
    .end local v15    # "uri":Landroid/net/Uri;
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 393
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_2
    const-string v2, "NFC"

    move-object/from16 v17, v0

    .end local v0    # "scheme":Ljava/lang/String;
    .local v17, "scheme":Ljava/lang/String;
    const-string v0, "Uri needs to have either scheme file or scheme content"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    nop

    .line 385
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v17    # "scheme":Ljava/lang/String;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .line 401
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .local v2, "event":Landroid/nfc/NfcEvent;
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    move-object v7, v0

    goto :goto_4

    .line 383
    .end local v12    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    goto :goto_4

    .line 412
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    goto :goto_6

    .line 381
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :cond_7
    move-object/from16 v16, v2

    .line 404
    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    :goto_4
    if-eqz v7, :cond_8

    array-length v0, v7

    if-lez v0, :cond_8

    .line 405
    array-length v0, v7

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_8

    aget-object v12, v7, v2

    .line 407
    .local v12, "uri":Landroid/net/Uri;
    const-string v13, "com.android.nfc"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v12, v14}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 405
    .end local v12    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 412
    :catchall_3
    move-exception v0

    :goto_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    throw v0

    .line 412
    :cond_8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    nop

    .line 414
    new-instance v0, Landroid/nfc/BeamShareData;

    invoke-virtual {v9}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v6, v7, v2, v8}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    return-object v0

    .line 374
    .end local v4    # "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local v5    # "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local v6    # "message":Landroid/nfc/NdefMessage;
    .end local v7    # "uris":[Landroid/net/Uri;
    .end local v8    # "flags":I
    .end local v9    # "activity":Landroid/app/Activity;
    .end local v10    # "ident":J
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    :goto_7
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_7
.end method

.method declared-synchronized greylist-max-o destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 193
    .local v0, "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcActivityState;->destroy()V

    .line 195
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o disableReaderMode(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 227
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 228
    const/4 v2, 0x0

    iput v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 229
    iput-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 230
    iget-object v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 231
    .local v3, "token":Landroid/os/Binder;
    iget-boolean v4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v4

    .line 232
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, v3, v2, v1}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 237
    :cond_0
    return-void

    .line 232
    .end local v0    # "isResumed":Z
    .end local v3    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 211
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 212
    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 213
    iput-object p4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 214
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 215
    .local v1, "token":Landroid/os/Binder;
    iget-boolean v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v2

    .line 216
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, v1, p3, p4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 220
    :cond_0
    return-void

    .line 216
    .end local v0    # "isResumed":Z
    .end local v1    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized greylist-max-o findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 165
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 166
    monitor-exit p0

    return-object v1

    .line 168
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    goto :goto_0

    .line 169
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 163
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-o findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .line 81
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    .line 82
    .local v1, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    .line 83
    return-object v1

    .line 85
    .end local v1    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized greylist-max-o findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 184
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 185
    monitor-exit p0

    return-object v1

    .line 187
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    goto :goto_0

    .line 188
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 175
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_0

    .line 176
    new-instance v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V

    move-object v0, v1

    .line 177
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 173
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 452
    return-void
.end method

.method public whitelist onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 509
    monitor-enter p0

    .line 510
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 511
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    .line 516
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    monitor-exit p0

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 484
    monitor-enter p0

    .line 485
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 486
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 488
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 489
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 490
    .local v2, "token":Landroid/os/Binder;
    iget v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    move v0, v3

    .line 491
    .local v0, "readerModeFlagsSet":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    if-eqz v0, :cond_3

    .line 494
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 496
    :cond_3
    return-void

    .line 491
    .end local v0    # "readerModeFlagsSet":Z
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public whitelist onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "readerModeFlags":I
    const/4 v1, 0x0

    .line 464
    .local v1, "readerModeExtras":Landroid/os/Bundle;
    monitor-enter p0

    .line 465
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v2

    .line 466
    .local v2, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v3, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NFC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    .line 468
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 469
    iget-object v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 470
    .local v3, "token":Landroid/os/Binder;
    iget v4, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    move v0, v4

    .line 471
    iget-object v4, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    move-object v1, v4

    .line 472
    .end local v2    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {p0, v3, v0, v1}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 476
    :cond_2
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 477
    return-void

    .line 472
    .end local v3    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 504
    return-void
.end method

.method public whitelist onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 456
    return-void
.end method

.method public whitelist onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 500
    return-void
.end method

.method public greylist-max-o onNdefPushComplete(B)V
    .locals 3
    .param p1, "peerLlcpVersion"    # B

    .line 421
    monitor-enter p0

    .line 422
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 423
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 425
    :cond_0
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    move-object v0, v1

    .line 426
    .local v0, "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    new-instance v1, Landroid/nfc/NfcEvent;

    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v2, p1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    .line 429
    .local v1, "event":Landroid/nfc/NfcEvent;
    if-eqz v0, :cond_1

    .line 430
    invoke-interface {v0, v1}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    .line 432
    :cond_1
    return-void

    .line 426
    .end local v0    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local v1    # "event":Landroid/nfc/NfcEvent;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 2
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    monitor-enter p0

    .line 438
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 439
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 441
    :cond_0
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    move-object v0, v1

    .line 442
    .local v0, "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-eqz v0, :cond_1

    .line 446
    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    .line 449
    :cond_1
    return-void

    .line 442
    .end local v0    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method greylist-max-o registerApplication(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .line 90
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .line 91
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    .line 92
    new-instance v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcActivityManager$NfcApplicationState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V

    move-object v0, v1

    .line 93
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->register()V

    .line 96
    return-void
.end method

.method greylist-max-o requestNfcServiceCallback()V
    .locals 2

    .line 340
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->setAppCallback(Landroid/nfc/IAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 344
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 252
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 253
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 254
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 262
    :goto_0
    return-void

    .line 254
    .end local v0    # "isResumed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 270
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 271
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 272
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 280
    :goto_0
    return-void

    .line 272
    .end local v0    # "isResumed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "flags"    # I

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 286
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 287
    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 288
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 289
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 297
    :goto_0
    return-void

    .line 289
    .end local v0    # "isResumed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p3, "flags"    # I

    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 304
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 305
    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 306
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 307
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 315
    :goto_0
    return-void

    .line 307
    .end local v0    # "isResumed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 322
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 323
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 324
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 332
    :goto_0
    return-void

    .line 324
    .end local v0    # "isResumed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "flags"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 240
    sget-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NFC"

    const-string v1, "Setting reader mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p0, p2, p3}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method greylist-max-o unregisterApplication(Landroid/app/Application;)V
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .line 99
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .line 100
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app was not registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NFC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->unregister()V

    .line 105
    return-void
.end method

.method greylist-max-o verifyNfcPermission()V
    .locals 2

    .line 348
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->verifyNfcPermission()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
