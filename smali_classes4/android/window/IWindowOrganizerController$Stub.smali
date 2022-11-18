.class public abstract Landroid/window/IWindowOrganizerController$Stub;
.super Landroid/os/Binder;
.source "IWindowOrganizerController.java"

# interfaces
.implements Landroid/window/IWindowOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IWindowOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applySyncTransaction:I = 0x2

.field static final blacklist TRANSACTION_applyTransaction:I = 0x1

.field static final blacklist TRANSACTION_finishTransition:I = 0x5

.field static final blacklist TRANSACTION_getDisplayAreaOrganizerController:I = 0x7

.field static final blacklist TRANSACTION_getTaskFragmentOrganizerController:I = 0x8

.field static final blacklist TRANSACTION_getTaskOrganizerController:I = 0x6

.field static final blacklist TRANSACTION_getTransitionMetricsReporter:I = 0xa

.field static final blacklist TRANSACTION_registerTransitionPlayer:I = 0x9

.field static final blacklist TRANSACTION_startLegacyTransition:I = 0x4

.field static final blacklist TRANSACTION_startTransition:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    const-string v0, "android.window.IWindowOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/IWindowOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IWindowOrganizerController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    const-string v0, "android.window.IWindowOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 118
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/IWindowOrganizerController;

    if-eqz v1, :cond_1

    .line 119
    move-object v1, v0

    check-cast v1, Landroid/window/IWindowOrganizerController;

    return-object v1

    .line 121
    :cond_1
    new-instance v1, Landroid/window/IWindowOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IWindowOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 130
    packed-switch p0, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 170
    :pswitch_0
    const-string v0, "getTransitionMetricsReporter"

    return-object v0

    .line 166
    :pswitch_1
    const-string/jumbo v0, "registerTransitionPlayer"

    return-object v0

    .line 162
    :pswitch_2
    const-string v0, "getTaskFragmentOrganizerController"

    return-object v0

    .line 158
    :pswitch_3
    const-string v0, "getDisplayAreaOrganizerController"

    return-object v0

    .line 154
    :pswitch_4
    const-string v0, "getTaskOrganizerController"

    return-object v0

    .line 150
    :pswitch_5
    const-string v0, "finishTransition"

    return-object v0

    .line 146
    :pswitch_6
    const-string/jumbo v0, "startLegacyTransition"

    return-object v0

    .line 142
    :pswitch_7
    const-string/jumbo v0, "startTransition"

    return-object v0

    .line 138
    :pswitch_8
    const-string v0, "applySyncTransaction"

    return-object v0

    .line 134
    :pswitch_9
    const-string v0, "applyTransaction"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 125
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 561
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 181
    invoke-static {p1}, Landroid/window/IWindowOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const-string v0, "android.window.IWindowOrganizerController"

    .line 186
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 187
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 197
    packed-switch p1, :pswitch_data_1

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    return v1

    .line 296
    :pswitch_1
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;

    move-result-object v2

    .line 297
    .local v2, "_result":Landroid/window/ITransitionMetricsReporter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 299
    goto/16 :goto_0

    .line 288
    .end local v2    # "_result":Landroid/window/ITransitionMetricsReporter;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITransitionPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITransitionPlayer;

    move-result-object v2

    .line 289
    .local v2, "_arg0":Landroid/window/ITransitionPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Landroid/window/IWindowOrganizerController$Stub;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_0

    .line 280
    .end local v2    # "_arg0":Landroid/window/ITransitionPlayer;
    :pswitch_3
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v2

    .line 281
    .local v2, "_result":Landroid/window/ITaskFragmentOrganizerController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 283
    goto/16 :goto_0

    .line 273
    .end local v2    # "_result":Landroid/window/ITaskFragmentOrganizerController;
    :pswitch_4
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v2

    .line 274
    .local v2, "_result":Landroid/window/IDisplayAreaOrganizerController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 276
    goto/16 :goto_0

    .line 266
    .end local v2    # "_result":Landroid/window/IDisplayAreaOrganizerController;
    :pswitch_5
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object v2

    .line 267
    .local v2, "_result":Landroid/window/ITaskOrganizerController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 269
    goto/16 :goto_0

    .line 253
    .end local v2    # "_result":Landroid/window/ITaskOrganizerController;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 255
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction;

    .line 257
    .local v3, "_arg1":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/IWindowContainerTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;

    move-result-object v4

    .line 258
    .local v4, "_arg2":Landroid/window/IWindowContainerTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/IWindowOrganizerController$Stub;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v5

    .line 260
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/window/WindowContainerTransaction;
    .end local v4    # "_arg2":Landroid/window/IWindowContainerTransactionCallback;
    .end local v5    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationAdapter;

    .line 241
    .local v3, "_arg1":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/IWindowContainerTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;

    move-result-object v4

    .line 243
    .restart local v4    # "_arg2":Landroid/window/IWindowContainerTransactionCallback;
    sget-object v5, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction;

    .line 244
    .local v5, "_arg3":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/IWindowOrganizerController$Stub;->startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/IWindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I

    move-result v6

    .line 246
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    goto :goto_0

    .line 223
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    .end local v4    # "_arg2":Landroid/window/IWindowContainerTransactionCallback;
    .end local v5    # "_arg3":Landroid/window/WindowContainerTransaction;
    .end local v6    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 227
    .local v3, "_arg1":Landroid/os/IBinder;
    sget-object v4, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction;

    .line 228
    .local v4, "_arg2":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/IWindowOrganizerController$Stub;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object v5

    .line 230
    .local v5, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 232
    goto :goto_0

    .line 211
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/window/WindowContainerTransaction;
    .end local v5    # "_result":Landroid/os/IBinder;
    :pswitch_9
    sget-object v2, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction;

    .line 213
    .local v2, "_arg0":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/IWindowContainerTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;

    move-result-object v3

    .line 214
    .local v3, "_arg1":Landroid/window/IWindowContainerTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3}, Landroid/window/IWindowOrganizerController$Stub;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v4

    .line 216
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    goto :goto_0

    .line 202
    .end local v2    # "_arg0":Landroid/window/WindowContainerTransaction;
    .end local v3    # "_arg1":Landroid/window/IWindowContainerTransactionCallback;
    .end local v4    # "_result":I
    :pswitch_a
    sget-object v2, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction;

    .line 203
    .restart local v2    # "_arg0":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/window/IWindowOrganizerController$Stub;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    nop

    .line 306
    .end local v2    # "_arg0":Landroid/window/WindowContainerTransaction;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
