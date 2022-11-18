.class public abstract Landroid/view/IRemoteAnimationRunner$Stub;
.super Landroid/os/Binder;
.source "IRemoteAnimationRunner.java"

# interfaces
.implements Landroid/view/IRemoteAnimationRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IRemoteAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRemoteAnimationRunner$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IRemoteAnimationRunner"

.field static final greylist-max-o TRANSACTION_onAnimationCancelled:I = 0x2

.field static final greylist-max-o TRANSACTION_onAnimationStart:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.view.IRemoteAnimationRunner"

    invoke-virtual {p0, p0, v0}, Landroid/view/IRemoteAnimationRunner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IRemoteAnimationRunner;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "android.view.IRemoteAnimationRunner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IRemoteAnimationRunner;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/view/IRemoteAnimationRunner;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Landroid/view/IRemoteAnimationRunner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IRemoteAnimationRunner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_0
    const-string/jumbo v0, "onAnimationCancelled"

    return-object v0

    .line 74
    :pswitch_1
    const-string/jumbo v0, "onAnimationStart"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/view/IRemoteAnimationRunner$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.view.IRemoteAnimationRunner"

    .line 94
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 95
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 105
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 133
    move-object/from16 v12, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 101
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v3

    .line 126
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 127
    .local v5, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    move-object/from16 v12, p0

    invoke-virtual {v12, v5}, Landroid/view/IRemoteAnimationRunner$Stub;->onAnimationCancelled(Z)V

    .line 129
    goto :goto_0

    .line 110
    .end local v5    # "_arg0":Z
    :pswitch_2
    move-object/from16 v12, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 112
    .local v5, "_arg0":I
    sget-object v6, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, [Landroid/view/RemoteAnimationTarget;

    .line 114
    .local v13, "_arg1":[Landroid/view/RemoteAnimationTarget;
    sget-object v6, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, [Landroid/view/RemoteAnimationTarget;

    .line 116
    .local v14, "_arg2":[Landroid/view/RemoteAnimationTarget;
    sget-object v6, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, [Landroid/view/RemoteAnimationTarget;

    .line 118
    .local v15, "_arg3":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRemoteAnimationFinishedCallback;

    move-result-object v16

    .line 119
    .local v16, "_arg4":Landroid/view/IRemoteAnimationFinishedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    move-object/from16 v6, p0

    move v7, v5

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Landroid/view/IRemoteAnimationRunner$Stub;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 121
    nop

    .line 136
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":[Landroid/view/RemoteAnimationTarget;
    .end local v14    # "_arg2":[Landroid/view/RemoteAnimationTarget;
    .end local v15    # "_arg3":[Landroid/view/RemoteAnimationTarget;
    .end local v16    # "_arg4":Landroid/view/IRemoteAnimationFinishedCallback;
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
