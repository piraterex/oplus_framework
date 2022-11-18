.class public abstract Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.super Landroid/os/Binder;
.source "IAugmentedAutofillService.java"

# interfaces
.implements Landroid/service/autofill/augmented/IAugmentedAutofillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IAugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDestroyAllFillWindowsRequest:I = 0x4

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onFillRequest:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_0
    const-string/jumbo v0, "onDestroyAllFillWindowsRequest"

    return-object v0

    .line 74
    :pswitch_1
    const-string/jumbo v0, "onFillRequest"

    return-object v0

    .line 70
    :pswitch_2
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    .line 66
    :pswitch_3
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 236
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
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

    const-string v2, "android.service.autofill.augmented.IAugmentedAutofillService"

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

    .line 153
    move-object/from16 v7, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 101
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v3

    .line 148
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onDestroyAllFillWindowsRequest()V

    .line 149
    move-object/from16 v7, p0

    goto/16 :goto_0

    .line 125
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 127
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 129
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 131
    .local v18, "_arg2":I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroid/content/ComponentName;

    .line 133
    .local v19, "_arg3":Landroid/content/ComponentName;
    sget-object v5, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Landroid/view/autofill/AutofillId;

    .line 135
    .local v20, "_arg4":Landroid/view/autofill/AutofillId;
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroid/view/autofill/AutofillValue;

    .line 137
    .local v21, "_arg5":Landroid/view/autofill/AutofillValue;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 139
    .local v22, "_arg6":J
    sget-object v5, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 141
    .local v24, "_arg7":Landroid/view/inputmethod/InlineSuggestionsRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/autofill/augmented/IFillCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v25

    .line 142
    .local v25, "_arg8":Landroid/service/autofill/augmented/IFillCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    move-object/from16 v5, p0

    move/from16 v6, v16

    move-object/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-wide/from16 v12, v22

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    invoke-virtual/range {v5 .. v15}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    .line 144
    move-object/from16 v7, p0

    goto :goto_0

    .line 119
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Landroid/content/ComponentName;
    .end local v20    # "_arg4":Landroid/view/autofill/AutofillId;
    .end local v21    # "_arg5":Landroid/view/autofill/AutofillValue;
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":Landroid/view/inputmethod/InlineSuggestionsRequest;
    .end local v25    # "_arg8":Landroid/service/autofill/augmented/IFillCallback;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onDisconnected()V

    .line 120
    move-object/from16 v7, p0

    goto :goto_0

    .line 110
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 112
    .local v5, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 113
    .local v6, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v6}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onConnected(ZZ)V

    .line 115
    nop

    .line 156
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
