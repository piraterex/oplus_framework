.class public abstract Landroid/print/IPrintDocumentAdapter$Stub;
.super Landroid/os/Binder;
.source "IPrintDocumentAdapter.java"

# interfaces
.implements Landroid/print/IPrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintDocumentAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintDocumentAdapter"

.field static final greylist-max-o TRANSACTION_finish:I = 0x5

.field static final greylist-max-o TRANSACTION_kill:I = 0x6

.field static final greylist-max-o TRANSACTION_layout:I = 0x3

.field static final greylist-max-o TRANSACTION_setObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_start:I = 0x2

.field static final greylist-max-o TRANSACTION_write:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintDocumentAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintDocumentAdapter;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/print/IPrintDocumentAdapter;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_0
    const-string/jumbo v0, "kill"

    return-object v0

    .line 88
    :pswitch_1
    const-string v0, "finish"

    return-object v0

    .line 84
    :pswitch_2
    const-string/jumbo v0, "write"

    return-object v0

    .line 80
    :pswitch_3
    const-string/jumbo v0, "layout"

    return-object v0

    .line 76
    :pswitch_4
    const-string/jumbo v0, "start"

    return-object v0

    .line 72
    :pswitch_5
    const-string/jumbo v0, "setObserver"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 287
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/print/IPrintDocumentAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.print.IPrintDocumentAdapter"

    .line 108
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 109
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 119
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 179
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 115
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v10

    .line 172
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {v6, v0}, Landroid/print/IPrintDocumentAdapter$Stub;->kill(Ljava/lang/String;)V

    .line 175
    goto/16 :goto_0

    .line 166
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/print/IPrintDocumentAdapter$Stub;->finish()V

    .line 167
    goto :goto_0

    .line 153
    :pswitch_3
    sget-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/print/PageRange;

    .line 155
    .local v0, "_arg0":[Landroid/print/PageRange;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 157
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/IWriteResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IWriteResultCallback;

    move-result-object v2

    .line 159
    .local v2, "_arg2":Landroid/print/IWriteResultCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/print/IPrintDocumentAdapter$Stub;->write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V

    .line 162
    goto :goto_0

    .line 137
    .end local v0    # "_arg0":[Landroid/print/PageRange;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg2":Landroid/print/IWriteResultCallback;
    .end local v3    # "_arg3":I
    :pswitch_4
    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/print/PrintAttributes;

    .line 139
    .local v12, "_arg0":Landroid/print/PrintAttributes;
    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/print/PrintAttributes;

    .line 141
    .local v13, "_arg1":Landroid/print/PrintAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/ILayoutResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;

    move-result-object v14

    .line 143
    .local v14, "_arg2":Landroid/print/ILayoutResultCallback;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 145
    .local v15, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 146
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintDocumentAdapter$Stub;->layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V

    .line 148
    goto :goto_0

    .line 131
    .end local v12    # "_arg0":Landroid/print/PrintAttributes;
    .end local v13    # "_arg1":Landroid/print/PrintAttributes;
    .end local v14    # "_arg2":Landroid/print/ILayoutResultCallback;
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/print/IPrintDocumentAdapter$Stub;->start()V

    .line 132
    goto :goto_0

    .line 124
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintDocumentAdapterObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapterObserver;

    move-result-object v0

    .line 125
    .local v0, "_arg0":Landroid/print/IPrintDocumentAdapterObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {v6, v0}, Landroid/print/IPrintDocumentAdapter$Stub;->setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V

    .line 127
    nop

    .line 182
    .end local v0    # "_arg0":Landroid/print/IPrintDocumentAdapterObserver;
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
