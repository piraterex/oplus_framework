.class public abstract Landroid/window/ITaskOrganizerController$Stub;
.super Landroid/os/Binder;
.source "ITaskOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createRootTask:I = 0x3

.field static final blacklist TRANSACTION_deleteRootTask:I = 0x4

.field static final blacklist TRANSACTION_getChildTasks:I = 0x5

.field static final blacklist TRANSACTION_getImeTarget:I = 0x7

.field static final blacklist TRANSACTION_getRootTasks:I = 0x6

.field static final blacklist TRANSACTION_registerTaskOrganizer:I = 0x1

.field static final blacklist TRANSACTION_restartTaskTopActivityProcessIfVisible:I = 0x9

.field static final blacklist TRANSACTION_setInterceptBackPressedOnTaskRoot:I = 0x8

.field static final blacklist TRANSACTION_setIsIgnoreOrientationRequestDisabled:I = 0xb

.field static final blacklist TRANSACTION_unregisterTaskOrganizer:I = 0x2

.field static final blacklist TRANSACTION_updateCameraCompatControlState:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.window.ITaskOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizerController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    const-string v0, "android.window.ITaskOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/ITaskOrganizerController;

    if-eqz v1, :cond_1

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskOrganizerController;

    return-object v1

    .line 101
    :cond_1
    new-instance v1, Landroid/window/ITaskOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 110
    packed-switch p0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 154
    :pswitch_0
    const-string/jumbo v0, "setIsIgnoreOrientationRequestDisabled"

    return-object v0

    .line 150
    :pswitch_1
    const-string/jumbo v0, "updateCameraCompatControlState"

    return-object v0

    .line 146
    :pswitch_2
    const-string/jumbo v0, "restartTaskTopActivityProcessIfVisible"

    return-object v0

    .line 142
    :pswitch_3
    const-string/jumbo v0, "setInterceptBackPressedOnTaskRoot"

    return-object v0

    .line 138
    :pswitch_4
    const-string v0, "getImeTarget"

    return-object v0

    .line 134
    :pswitch_5
    const-string v0, "getRootTasks"

    return-object v0

    .line 130
    :pswitch_6
    const-string v0, "getChildTasks"

    return-object v0

    .line 126
    :pswitch_7
    const-string v0, "deleteRootTask"

    return-object v0

    .line 122
    :pswitch_8
    const-string v0, "createRootTask"

    return-object v0

    .line 118
    :pswitch_9
    const-string/jumbo v0, "unregisterTaskOrganizer"

    return-object v0

    .line 114
    :pswitch_a
    const-string/jumbo v0, "registerTaskOrganizer"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 548
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 165
    invoke-static {p1}, Landroid/window/ITaskOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    const-string v0, "android.window.ITaskOrganizerController"

    .line 170
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 171
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 181
    packed-switch p1, :pswitch_data_1

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v1

    .line 293
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 294
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->setIsIgnoreOrientationRequestDisabled(Z)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_0

    .line 282
    .end local v2    # "_arg0":Z
    :pswitch_2
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 284
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 285
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_0

    .line 273
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 274
    .restart local v2    # "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_0

    .line 262
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    :pswitch_4
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 264
    .restart local v2    # "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 265
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto/16 :goto_0

    .line 252
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 255
    .local v3, "_result":Landroid/window/WindowContainerToken;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 257
    goto/16 :goto_0

    .line 240
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/window/WindowContainerToken;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 243
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v4

    .line 245
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 247
    goto :goto_0

    .line 228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_7
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 230
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 231
    .restart local v3    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v4

    .line 233
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 235
    goto :goto_0

    .line 218
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_8
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 219
    .restart local v2    # "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result v3

    .line 221
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    goto :goto_0

    .line 205
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 210
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/ITaskOrganizerController$Stub;->createRootTask(IILandroid/os/IBinder;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto :goto_0

    .line 196
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;

    move-result-object v2

    .line 197
    .local v2, "_arg0":Landroid/window/ITaskOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_0

    .line 186
    .end local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;

    move-result-object v2

    .line 187
    .restart local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 189
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/TaskAppearedInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 191
    nop

    .line 304
    .end local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/TaskAppearedInfo;>;"
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
