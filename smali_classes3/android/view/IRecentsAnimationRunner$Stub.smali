.class public abstract Landroid/view/IRecentsAnimationRunner$Stub;
.super Landroid/os/Binder;
.source "IRecentsAnimationRunner.java"

# interfaces
.implements Landroid/view/IRecentsAnimationRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IRecentsAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRecentsAnimationRunner$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IRecentsAnimationRunner"

.field static final greylist-max-o TRANSACTION_onAnimationCanceled:I = 0x2

.field static final greylist-max-o TRANSACTION_onAnimationStart:I = 0x3

.field static final blacklist TRANSACTION_onTasksAppeared:I = 0x4


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.view.IRecentsAnimationRunner"

    invoke-virtual {p0, p0, v0}, Landroid/view/IRecentsAnimationRunner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.view.IRecentsAnimationRunner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IRecentsAnimationRunner;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/view/IRecentsAnimationRunner;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_0
    const-string/jumbo v0, "onTasksAppeared"

    return-object v0

    .line 93
    :pswitch_1
    const-string/jumbo v0, "onAnimationStart"

    return-object v0

    .line 89
    :pswitch_2
    const-string/jumbo v0, "onAnimationCanceled"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 256
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/view/IRecentsAnimationRunner$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.view.IRecentsAnimationRunner"

    .line 113
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 114
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 124
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 162
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 120
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v10

    .line 155
    :pswitch_1
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 156
    .local v0, "_arg0":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {v6, v0}, Landroid/view/IRecentsAnimationRunner$Stub;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    .line 158
    goto :goto_0

    .line 139
    .end local v0    # "_arg0":[Landroid/view/RemoteAnimationTarget;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRecentsAnimationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;

    move-result-object v12

    .line 141
    .local v12, "_arg0":Landroid/view/IRecentsAnimationController;
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Landroid/view/RemoteAnimationTarget;

    .line 143
    .local v13, "_arg1":[Landroid/view/RemoteAnimationTarget;
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Landroid/view/RemoteAnimationTarget;

    .line 145
    .local v14, "_arg2":[Landroid/view/RemoteAnimationTarget;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/graphics/Rect;

    .line 147
    .local v15, "_arg3":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Rect;

    .line 148
    .local v16, "_arg4":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IRecentsAnimationRunner$Stub;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 150
    goto :goto_0

    .line 129
    .end local v12    # "_arg0":Landroid/view/IRecentsAnimationController;
    .end local v13    # "_arg1":[Landroid/view/RemoteAnimationTarget;
    .end local v14    # "_arg2":[Landroid/view/RemoteAnimationTarget;
    .end local v15    # "_arg3":Landroid/graphics/Rect;
    .end local v16    # "_arg4":Landroid/graphics/Rect;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 131
    .local v0, "_arg0":[I
    sget-object v1, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/window/TaskSnapshot;

    .line 132
    .local v1, "_arg1":[Landroid/window/TaskSnapshot;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {v6, v0, v1}, Landroid/view/IRecentsAnimationRunner$Stub;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V

    .line 134
    nop

    .line 165
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":[Landroid/window/TaskSnapshot;
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
