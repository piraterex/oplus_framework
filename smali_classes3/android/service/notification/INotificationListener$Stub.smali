.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final blacklist TRANSACTION_onActionClicked:I = 0x13

.field static final blacklist TRANSACTION_onAllowedAdjustmentsChanged:I = 0x15

.field static final greylist-max-o TRANSACTION_onInterruptionFilterChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onListenerConnected:I = 0x1

.field static final greylist-max-o TRANSACTION_onListenerHintsChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onNotificationChannelGroupModification:I = 0x9

.field static final greylist-max-o TRANSACTION_onNotificationChannelModification:I = 0x8

.field static final blacklist TRANSACTION_onNotificationClicked:I = 0x14

.field static final blacklist TRANSACTION_onNotificationDirectReply:I = 0x11

.field static final blacklist TRANSACTION_onNotificationEnqueuedWithChannel:I = 0xa

.field static final blacklist TRANSACTION_onNotificationExpansionChanged:I = 0x10

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x16

.field static final greylist-max-o TRANSACTION_onNotificationPosted:I = 0x2

.field static final greylist-max-o TRANSACTION_onNotificationRankingUpdate:I = 0x5

.field static final greylist-max-o TRANSACTION_onNotificationRemoved:I = 0x4

.field static final greylist-max-o TRANSACTION_onNotificationSnoozedUntilContext:I = 0xb

.field static final blacklist TRANSACTION_onNotificationVisibilityChanged:I = 0xf

.field static final blacklist TRANSACTION_onNotificationsSeen:I = 0xc

.field static final blacklist TRANSACTION_onPanelHidden:I = 0xe

.field static final blacklist TRANSACTION_onPanelRevealed:I = 0xd

.field static final blacklist TRANSACTION_onStatusBarIconsBehaviorChanged:I = 0x3

.field static final blacklist TRANSACTION_onSuggestedReplySent:I = 0x12


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    const-string v0, "android.service.notification.INotificationListener"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/INotificationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    const-string v0, "android.service.notification.INotificationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 104
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    if-eqz v1, :cond_1

    .line 105
    move-object v1, v0

    check-cast v1, Landroid/service/notification/INotificationListener;

    return-object v1

    .line 107
    :cond_1
    new-instance v1, Landroid/service/notification/INotificationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 116
    packed-switch p0, :pswitch_data_0

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 204
    :pswitch_0
    const-string/jumbo v0, "onNotificationFeedbackReceived"

    return-object v0

    .line 200
    :pswitch_1
    const-string/jumbo v0, "onAllowedAdjustmentsChanged"

    return-object v0

    .line 196
    :pswitch_2
    const-string/jumbo v0, "onNotificationClicked"

    return-object v0

    .line 192
    :pswitch_3
    const-string/jumbo v0, "onActionClicked"

    return-object v0

    .line 188
    :pswitch_4
    const-string/jumbo v0, "onSuggestedReplySent"

    return-object v0

    .line 184
    :pswitch_5
    const-string/jumbo v0, "onNotificationDirectReply"

    return-object v0

    .line 180
    :pswitch_6
    const-string/jumbo v0, "onNotificationExpansionChanged"

    return-object v0

    .line 176
    :pswitch_7
    const-string/jumbo v0, "onNotificationVisibilityChanged"

    return-object v0

    .line 172
    :pswitch_8
    const-string/jumbo v0, "onPanelHidden"

    return-object v0

    .line 168
    :pswitch_9
    const-string/jumbo v0, "onPanelRevealed"

    return-object v0

    .line 164
    :pswitch_a
    const-string/jumbo v0, "onNotificationsSeen"

    return-object v0

    .line 160
    :pswitch_b
    const-string/jumbo v0, "onNotificationSnoozedUntilContext"

    return-object v0

    .line 156
    :pswitch_c
    const-string/jumbo v0, "onNotificationEnqueuedWithChannel"

    return-object v0

    .line 152
    :pswitch_d
    const-string/jumbo v0, "onNotificationChannelGroupModification"

    return-object v0

    .line 148
    :pswitch_e
    const-string/jumbo v0, "onNotificationChannelModification"

    return-object v0

    .line 144
    :pswitch_f
    const-string/jumbo v0, "onInterruptionFilterChanged"

    return-object v0

    .line 140
    :pswitch_10
    const-string/jumbo v0, "onListenerHintsChanged"

    return-object v0

    .line 136
    :pswitch_11
    const-string/jumbo v0, "onNotificationRankingUpdate"

    return-object v0

    .line 132
    :pswitch_12
    const-string/jumbo v0, "onNotificationRemoved"

    return-object v0

    .line 128
    :pswitch_13
    const-string/jumbo v0, "onStatusBarIconsBehaviorChanged"

    return-object v0

    .line 124
    :pswitch_14
    const-string/jumbo v0, "onNotificationPosted"

    return-object v0

    .line 120
    :pswitch_15
    const-string/jumbo v0, "onListenerConnected"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 111
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 790
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 215
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    const-string v0, "android.service.notification.INotificationListener"

    .line 220
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 221
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 231
    packed-switch p1, :pswitch_data_1

    .line 449
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 227
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1

    .line 438
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 442
    .local v3, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 443
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V

    .line 445
    goto/16 :goto_0

    .line 432
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p0}, Landroid/service/notification/INotificationListener$Stub;->onAllowedAdjustmentsChanged()V

    .line 433
    goto/16 :goto_0

    .line 425
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationClicked(Ljava/lang/String;)V

    .line 428
    goto/16 :goto_0

    .line 413
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 417
    .local v3, "_arg1":Landroid/app/Notification$Action;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 418
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V

    .line 420
    goto/16 :goto_0

    .line 401
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/Notification$Action;
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 403
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 405
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 406
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 408
    goto/16 :goto_0

    .line 393
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    .end local v4    # "_arg2":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 394
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationDirectReply(Ljava/lang/String;)V

    .line 396
    goto/16 :goto_0

    .line 381
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 383
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 385
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 386
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 388
    goto/16 :goto_0

    .line 371
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 374
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V

    .line 376
    goto/16 :goto_0

    .line 365
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_9
    invoke-virtual {p0}, Landroid/service/notification/INotificationListener$Stub;->onPanelHidden()V

    .line 366
    goto/16 :goto_0

    .line 358
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onPanelRevealed(I)V

    .line 361
    goto/16 :goto_0

    .line 350
    .end local v2    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 351
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationsSeen(Ljava/util/List;)V

    .line 353
    goto/16 :goto_0

    .line 340
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 342
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V

    .line 345
    goto/16 :goto_0

    .line 328
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 330
    .restart local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 332
    .local v3, "_arg1":Landroid/app/NotificationChannel;
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    .line 333
    .local v4, "_arg2":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 335
    goto/16 :goto_0

    .line 314
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/app/NotificationChannel;
    .end local v4    # "_arg2":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 318
    .local v3, "_arg1":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 320
    .local v4, "_arg2":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 321
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 323
    goto/16 :goto_0

    .line 300
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Landroid/app/NotificationChannelGroup;
    .end local v5    # "_arg3":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 304
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 306
    .local v4, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 307
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 309
    goto/16 :goto_0

    .line 292
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Landroid/app/NotificationChannel;
    .end local v5    # "_arg3":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(I)V

    .line 295
    goto :goto_0

    .line 284
    .end local v2    # "_arg0":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(I)V

    .line 287
    goto :goto_0

    .line 276
    .end local v2    # "_arg0":I
    :pswitch_12
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 277
    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 279
    goto :goto_0

    .line 262
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 264
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 266
    .local v3, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    sget-object v4, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationStats;

    .line 268
    .local v4, "_arg2":Landroid/service/notification/NotificationStats;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 269
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    .line 271
    goto :goto_0

    .line 254
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    .end local v4    # "_arg2":Landroid/service/notification/NotificationStats;
    .end local v5    # "_arg3":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 255
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onStatusBarIconsBehaviorChanged(Z)V

    .line 257
    goto :goto_0

    .line 244
    .end local v2    # "_arg0":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 247
    .restart local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 249
    goto :goto_0

    .line 236
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_16
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 237
    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 239
    nop

    .line 452
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
