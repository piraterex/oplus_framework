.class public abstract Landroid/content/IIntentSender$Stub;
.super Landroid/os/Binder;
.source "IIntentSender.java"

# interfaces
.implements Landroid/content/IIntentSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IIntentSender$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.IIntentSender"

.field static final greylist-max-o TRANSACTION_send:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.content.IIntentSender"

    invoke-virtual {p0, p0, v0}, Landroid/content/IIntentSender$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static greylist-max-p asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "android.content.IIntentSender"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IIntentSender;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/content/IIntentSender;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Landroid/content/IIntentSender$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IIntentSender$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 49
    packed-switch p0, :pswitch_data_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 53
    :pswitch_0
    const-string/jumbo v0, "send"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 64
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.content.IIntentSender"

    .line 69
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 80
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 104
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 76
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v3

    .line 85
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 87
    .local v13, "_arg0":I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/content/Intent;

    .line 89
    .local v14, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 91
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 93
    .local v16, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v17

    .line 95
    .local v17, "_arg4":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 97
    .local v18, "_arg5":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroid/os/Bundle;

    .line 98
    .local v19, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    move-object/from16 v5, p0

    move v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-virtual/range {v5 .. v12}, Landroid/content/IIntentSender$Stub;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    nop

    .line 107
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/content/Intent;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v17    # "_arg4":Landroid/content/IIntentReceiver;
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":Landroid/os/Bundle;
    return v3

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
