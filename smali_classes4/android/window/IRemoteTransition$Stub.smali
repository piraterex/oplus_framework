.class public abstract Landroid/window/IRemoteTransition$Stub;
.super Landroid/os/Binder;
.source "IRemoteTransition.java"

# interfaces
.implements Landroid/window/IRemoteTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IRemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IRemoteTransition$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_mergeAnimation:I = 0x2

.field static final blacklist TRANSACTION_startAnimation:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.window.IRemoteTransition"

    invoke-virtual {p0, p0, v0}, Landroid/window/IRemoteTransition$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransition;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "android.window.IRemoteTransition"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/IRemoteTransition;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/window/IRemoteTransition;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Landroid/window/IRemoteTransition$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IRemoteTransition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_0
    const-string/jumbo v0, "mergeAnimation"

    return-object v0

    .line 87
    :pswitch_1
    const-string/jumbo v0, "startAnimation"

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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/window/IRemoteTransition$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.window.IRemoteTransition"

    .line 107
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 108
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 118
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 152
    move-object/from16 v9, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 114
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v3

    .line 137
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 139
    .local v11, "_arg0":Landroid/os/IBinder;
    sget-object v5, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/window/TransitionInfo;

    .line 141
    .local v12, "_arg1":Landroid/window/TransitionInfo;
    sget-object v5, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/view/SurfaceControl$Transaction;

    .line 143
    .local v13, "_arg2":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 145
    .local v14, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransitionFinishedCallback;

    move-result-object v15

    .line 146
    .local v15, "_arg4":Landroid/window/IRemoteTransitionFinishedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    move-object/from16 v5, p0

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-virtual/range {v5 .. v10}, Landroid/window/IRemoteTransition$Stub;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 148
    move-object/from16 v9, p0

    goto :goto_0

    .line 123
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":Landroid/window/TransitionInfo;
    .end local v13    # "_arg2":Landroid/view/SurfaceControl$Transaction;
    .end local v14    # "_arg3":Landroid/os/IBinder;
    .end local v15    # "_arg4":Landroid/window/IRemoteTransitionFinishedCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 125
    .local v5, "_arg0":Landroid/os/IBinder;
    sget-object v6, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo;

    .line 127
    .local v6, "_arg1":Landroid/window/TransitionInfo;
    sget-object v7, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl$Transaction;

    .line 129
    .local v7, "_arg2":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransitionFinishedCallback;

    move-result-object v8

    .line 130
    .local v8, "_arg3":Landroid/window/IRemoteTransitionFinishedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    move-object/from16 v9, p0

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/window/IRemoteTransition$Stub;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 132
    nop

    .line 155
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":Landroid/window/TransitionInfo;
    .end local v7    # "_arg2":Landroid/view/SurfaceControl$Transaction;
    .end local v8    # "_arg3":Landroid/window/IRemoteTransitionFinishedCallback;
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
